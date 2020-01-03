import * as ts from 'typescript';
import * as path from 'path';
import { TSUtil } from './TSUtil';
import Debug from './Debug';
import Terminal from './Terminal';
import { TypeDefinition, TDClass, TDAbstract, TDAlias, Access, FVar, FieldType, FFun, TypeParamDecl } from './Expr';
import { Printer } from './Printer';

// @! this needs to be replaced with haxe ast structure
type HaxeSyntaxObject = TypeDefinition;

type HaxeType = {
    typePath: Array<string>,
    haxeSyntaxObject: HaxeSyntaxObject,
    contributingSymbols: Set<ts.Symbol>,
    exportRoot: ts.Symbol | null,
    aliasTo: HaxeType | null,
}

type ExternGeneratorOptions = {
    logVerbose: boolean,
    logWarnings: boolean,
    logError: boolean,
    printErrorLocation: boolean,
}

export class ExternGenerator {

    // mapping between haxe `package.Type.SubType` and haxe type descriptor
    // use `getHaxeType` instead of `haxeTypes.get` to follow typedefs
    protected haxeTypes = new Map<string, HaxeType>();
    protected packageRoot: Array<string>;
    protected options: ExternGeneratorOptions;
    private static defaultOptions: ExternGeneratorOptions = {
        logVerbose: false,
        logWarnings: true,
        logError: true,
        printErrorLocation: true,
    }

    constructor(
        protected typeChecker: ts.TypeChecker,
        packageRoot: Array<string> = [],
        options: Partial<ExternGeneratorOptions> = {}
    ) {
        this.packageRoot = packageRoot.map(p => this.toSafePackageName(p));
        this.options = {
            ...ExternGenerator.defaultOptions,
            ...options
        }
    }

    /**
     * Adds symbol to list of externs to generate
     * @throws
     */
    addSymbol(symbol: ts.Symbol, exportRoot: ts.Symbol | null) {
        // => we never generate an extern for a symbol twice, so first check if we already have an extern for this symbol, if so then typedef and exit
        // => when adding fields, we do a lookup to get the haxe symbol at the parent path and create if doesn't exist
        //    this handles type merging

        let symbolHandled = false;

        // @! need to skip namespace only

        // completely skipped symbols
        if (symbol.flags === ts.SymbolFlags.None || // we can't do anything with symbols with no flags
            symbol.flags & (
                  ts.SymbolFlags.Prototype          // no need to expose the prototype symbol
                | ts.SymbolFlags.ExportStar         // this is the list of `export * from 'x'` statements (the symbol walker will already include the target symbols)
        )) {
            this.logVerbose(`Skipping symbol ${Debug.symbolInfoFormatted(this.typeChecker, symbol, exportRoot)}`);
            return;
        }

        // handle type parameter symbols
        if (symbol.flags & ts.SymbolFlags.TypeParameter) {
            let parentHaxePath: Array<string>;
            let symbolPath = TSUtil.getSymbolPath(symbol, exportRoot);
            let parent: ts.Symbol | undefined = symbolPath[symbolPath.length - 2];

            if (parent != null) {
                parentHaxePath = this.getHaxeTypePath(parent, exportRoot);
            } else {
                throw `Type parameter does not have parent symbol ${Debug.symbolInfoFormatted(this.typeChecker, symbol, exportRoot)}` + this.location(symbol);
            }

            // get the haxe type object that corresponds to the fields owner
            let parentHaxeType = this.getHaxeType(parentHaxePath, true);

            if (parentHaxeType != null) {
                if (!parentHaxeType.contributingSymbols.has(symbol)) {
                    // @! need to properly add to type
                    parentHaxeType.haxeSyntaxObject.params == parentHaxeType.haxeSyntaxObject.params || [];
                    parentHaxeType.haxeSyntaxObject.params!.push({
                        name: symbol.name,
                        // @! incomplete
                    });

                    parentHaxeType.contributingSymbols.add(symbol);
                }
            } else {
                throw `Type parameter's parent type "${parentHaxePath}" has not yet been created` + this.location(symbol);
            }

            symbolHandled = true;
        }

        // handle type declaration symbol
        if ((symbol.flags & ts.SymbolFlags.Type)
            // exclude type parameter types (these are handled separately)
            && !(symbol.flags & ts.SymbolFlags.TypeParameter)
            // exclude enum members, in ts these are types but not in haxe
            && !(symbol.flags & ts.SymbolFlags.EnumMember)
        ) {
            let previouslyGeneratedType = this.getExistingHaxeType(symbol);
            let haxeTypePath = this.getHaxeTypePath(symbol, exportRoot);
            let typeName = this.typePathTypeName(haxeTypePath);

            if (typeName == null) {
                throw `No TypeName in haxe type path "${haxeTypePath}" for native symbol ${Debug.symbolInfoFormatted(this.typeChecker, symbol, exportRoot)}`;
            }

            // generate haxe syntax object
            let haxeSyntaxObject: HaxeSyntaxObject;
            let aliasTo: HaxeType | null;

            if (previouslyGeneratedType != null) {
                previouslyGeneratedType.contributingSymbols.add(symbol);

                haxeSyntaxObject = this.generateTypeAlias(previouslyGeneratedType, typeName, symbol, exportRoot);
                aliasTo = previouslyGeneratedType;
            } else {
                let typeSyntaxObject = this.generateType(typeName, symbol, exportRoot);

                if (typeSyntaxObject == null) {
                    throw `Unsupported type-symbol ${Debug.symbolInfoFormatted(this.typeChecker, symbol, exportRoot)}` + this.location(symbol);
                }

                haxeSyntaxObject = typeSyntaxObject;
                aliasTo = null;
            }

            this.addGeneratedHaxeType({
                typePath: haxeTypePath,
                haxeSyntaxObject: haxeSyntaxObject,
                contributingSymbols: new Set([symbol]),
                exportRoot: exportRoot,
                aliasTo: aliasTo,
            });

            symbolHandled = true;
        }

        // handle symbol field declaration (this will create namespace classes if required)
        if (symbol.flags & (
              ts.SymbolFlags.Constructor
            | ts.SymbolFlags.Function
            | ts.SymbolFlags.Method
            | ts.SymbolFlags.Property
            | ts.SymbolFlags.BlockScopedVariable 
            | ts.SymbolFlags.FunctionScopedVariable
            | ts.SymbolFlags.EnumMember
            | ts.SymbolFlags.ClassMember
        )) {
            let parentHaxePath: Array<string>;
            let symbolPath = TSUtil.getSymbolPath(symbol, exportRoot);
            let parent: ts.Symbol | undefined = symbolPath[symbolPath.length - 2];
            const globalClassName = 'Global';

            if (parent != null) {
                parentHaxePath = this.getHaxeTypePath(parent, exportRoot);
            } else {
                parentHaxePath = this.packageRoot.concat([globalClassName]);
            }
            
            // get the haxe type object that corresponds to the fields owner
            let parentHaxeType = this.getHaxeType(parentHaxePath, true);
            // if this type doesn't exist, then create it
            if (parentHaxeType == null) {
                // if this is a module field we want to create a module class
                if (symbol.flags & ts.SymbolFlags.ModuleMember) {
                    let moduleClassTypeName = this.typePathTypeName(parentHaxePath);
                    let moduleClassHaxePath = parentHaxePath;

                    if (moduleClassTypeName == null || moduleClassHaxePath.length === 0) {
                        throw (
                            `Field's enclosing module has no type name in path ${parentHaxePath}\n` +
                            `\tFor symbol ${Debug.symbolInfoFormatted(this.typeChecker, symbol, exportRoot)}` +
                            this.location(symbol, 'prepend')
                        );
                    }

                    // @! debugging pixi.js  file overwrite
                    Terminal.warn(`Creating module class`, moduleClassTypeName, moduleClassHaxePath, Debug.getSymbolPrintableLocation(symbol));

                    // generate a module class 
                    parentHaxeType = this.addGeneratedHaxeType({
                        typePath: moduleClassHaxePath,
                        haxeSyntaxObject: this.generateModuleClass(moduleClassTypeName, parent, exportRoot),
                        contributingSymbols: new Set([]),
                        exportRoot: exportRoot,
                        aliasTo: null,
                    });
                } else if (parent != null) {
                    this.logWarning(
                        `Field generated before type was generated (this is not expected to happen)\n` + 
                        `\tField: ${Debug.symbolInfoFormatted(this.typeChecker, symbol, exportRoot)}\n` +
                        `\tParent: ${Debug.symbolInfoFormatted(this.typeChecker, parent, exportRoot)}` +
                        this.location(symbol, 'prepend')
                    );

                    this.addSymbol(parent, exportRoot);
                    parentHaxeType = this.getHaxeType(parentHaxePath, true);
                }
            }

            if (parentHaxeType == null) {
                throw `Cannot determine where to generate field ${Debug.symbolInfoFormatted(this.typeChecker, symbol, exportRoot)}` + this.location(symbol);
            }

            // @! add field to parentHaxeType
            if (!parentHaxeType.contributingSymbols.has(symbol)) {
                this.addFieldToHaxeType(parentHaxeType, symbol, exportRoot);
                parentHaxeType.contributingSymbols.add(symbol);
            }

            symbolHandled = true;
        }

        // quieten symbolHandled errors for these flags
        if (symbol.flags & (
            ts.SymbolFlags.Module  // Modules (haxe packages and module classes) are created as types and fields are added so we don't need to do anything for them directly
        )) {
            symbolHandled = true;
        }

        if (!symbolHandled) {
            throw `Symbol was not handled ${Debug.symbolInfoFormatted(this.typeChecker, symbol, exportRoot)}` + this.location(symbol);
        }
    }

    generateHaxeFiles(): {
        files: Map<string, string>,
        errors: Array<string>,
    } {
        // @! iterate haxe type paths, creating files and package directories as needed
        let haxeFiles = new Map<string, string>();
        let errors = new Array<string>();
        let haxePrinter = new Printer();

        for (let haxeTypePathStr of this.haxeTypes.keys()) {
            let haxeType = this.haxeTypes.get(haxeTypePathStr)!;

            let packages = this.typePathPackages(haxeType.typePath);
            let moduleName = this.typePathModule(haxeType.typePath);

            if (moduleName == null) {
                let symbolsInfo = new Array<string>();
                haxeType.contributingSymbols.forEach(s => {
                    symbolsInfo.push(Debug.symbolInfoFormatted(this.typeChecker, s, haxeType.exportRoot))
                });

                errors.push(
                    `Haxe type path "${haxeType.typePath}" has no module name and so this file was not generated` + ((symbolsInfo.length > 0) ? '\n' : '') +
                    '\t' + symbolsInfo.join('\n\t')
                );

                continue;
            }

            let filePath = path.join.apply(path.join, packages.concat([moduleName + '.hx']));

            // if file has already been generated, append type to the file (which happens in the case of sub types)
            let content = haxeFiles.get(filePath);

            if (content == null) {
                content = packages.length > 0 ? `package ${packages.join('.')};` + '\n\n' : '';
            }

            // @! should be some haxe syntax printer call here
            let haxeSrc = haxePrinter.printTypeDefinition(haxeType.haxeSyntaxObject, false);
            content += haxeSrc + '\n';

            haxeFiles.set(filePath, content);
        }

        return {
            files: haxeFiles,
            errors: errors,
        }
    }

    protected addFieldToHaxeType(parent: HaxeType, symbol: ts.Symbol, exportRoot: ts.Symbol | null) {
        let safeIdent = this.toSafeIdent(symbol.name);

        let pos = Debug.getSymbolPosition(symbol);
        let isStatic = !!(symbol.flags & ts.SymbolFlags.ModuleMember);
        let nameChanged = safeIdent !== symbol.name;

        let docs = symbol.getDocumentationComment(this.typeChecker).map(p => p.text.trim());


        let haxeFieldKind: FieldType | null = null;
        let metas = nameChanged ? [{name: ':native', params: [`'${symbol.name}'`], pos: pos}] : [];

        // this.logVerbose(`\tAdding field ${Debug.symbolInfoFormatted(this.typeChecker, symbol, exportRoot)}`);

        if (symbol.valueDeclaration != null) {
            // syntax-level type information (i.e :Type)
            switch (symbol.valueDeclaration.kind) {
                case ts.SyntaxKind.MethodDeclaration:
                case ts.SyntaxKind.FunctionDeclaration:
                case ts.SyntaxKind.MethodSignature: {
                    let functionLikeDeclaration = symbol.valueDeclaration as ts.FunctionLikeDeclarationBase;

                    let parameterStrings = functionLikeDeclaration.parameters.map(p => this.convertSyntaxType(p, symbol, exportRoot));
                    let typeParamDecls: ReadonlyArray<ts.TypeParameterDeclaration> = (functionLikeDeclaration.typeParameters || []);
                    let typeParameterStrings = typeParamDecls.map(tp => this.convertSyntaxType(tp, symbol, exportRoot));
                    let typeParameterHaxeDecls: Array<TypeParamDecl> = typeParameterStrings.map(name => { return {name: name} });

                    // warn for unhandled function parts
                    if (functionLikeDeclaration.asteriskToken != null) {
                        this.logWarning(`Unhandled asteriskToken on function ${Debug.symbolInfoFormatted(this.typeChecker, symbol, exportRoot)}`);
                    }
                    if (functionLikeDeclaration.exclamationToken != null) {
                        this.logWarning(`Unhandled exclamationToken on function ${Debug.symbolInfoFormatted(this.typeChecker, symbol, exportRoot)}`);
                    }
                    if (functionLikeDeclaration.questionToken != null) {
                        metas.push({name: ':optional', params: [], pos: pos});
                    }

                    haxeFieldKind = new FFun({
                        args: parameterStrings,
                        params: typeParameterHaxeDecls,
                        expr: null,
                        ret: this.convertSyntaxType(functionLikeDeclaration.type || this.getAnyTypeNode(), symbol, exportRoot),
                    });
                } break;
                case ts.SyntaxKind.VariableDeclaration: 
                case ts.SyntaxKind.PropertySignature:
                case ts.SyntaxKind.PropertyDeclaration: {
                    let typeNode = (symbol.valueDeclaration as ts.HasType).type;
                    if (typeNode == null) {
                        let resolvedType = this.typeChecker.getTypeOfSymbolAtLocation(symbol, symbol.valueDeclaration);
                        if (resolvedType.flags & ts.TypeFlags.Literal) {
                            // the symbol has a literal expression that gives the type (i.e variable = false)
                            typeNode = this.typeChecker.typeToTypeNode(this.typeChecker.getBaseTypeOfLiteralType(resolvedType));
                        } else {
                            typeNode = this.typeChecker.typeToTypeNode(resolvedType);
                        }
                        if (typeNode == null) {
                            this.logError(`Failed to get a type for <b>${symbol.name}</b>`, this.location(symbol));
                            typeNode = this.typeChecker.typeToTypeNode(this.typeChecker.getAnyType())!;
                        }
                    }
                    let convertedTypeString = this.convertSyntaxType(typeNode, symbol, exportRoot);
                    haxeFieldKind = new FVar(convertedTypeString);
                } break;
                case ts.SyntaxKind.EnumMember: {
                    // leave type empty for enums
                    haxeFieldKind = new FVar(null);
                } break;
                default: {
                    this.logError(`Unhandled valueDeclaration kind <b>${ts.SyntaxKind[symbol.valueDeclaration.kind]}</b>`, this.location(symbol));
                } break;
            }
        } else {
            this.logError(`symbol.valueDeclaration is null for <b>${symbol.name}</b> – <i>${Debug.getActiveSymbolFlags(symbol.flags)}</>`, this.location(symbol));
        }

        if (haxeFieldKind == null) {
            throw `Failed to assign haxeFieldKind for ${symbol.name} - ${this.location(symbol)}`;
        }

        parent.haxeSyntaxObject.fields.push({
            access: isStatic ? [Access.AStatic] : [],
            name: safeIdent,
            doc: docs.join('\n'),
            kind: haxeFieldKind,
            pos: pos,
            meta: metas
        });
    }

    /**
     * Converts a syntax node into a haxe type string
     */
    protected convertSyntaxType(syntaxNode: ts.Node, atSymbol: ts.Symbol, exportRoot: ts.Symbol | null): string {
        switch (syntaxNode.kind) {
            case ts.SyntaxKind.NumberKeyword: {return 'Float';} break;
            case ts.SyntaxKind.AnyKeyword: {return 'Any';} break;
            case ts.SyntaxKind.BooleanKeyword: {return 'Bool';} break;
            case ts.SyntaxKind.StringKeyword: {return 'String';} break;
            case ts.SyntaxKind.SymbolKeyword: {return 'js.lib.Symbol';} break;
            case ts.SyntaxKind.NumericLiteral: {
                let numericLiteralNode = syntaxNode as ts.NumericLiteral;
                let number = parseFloat(numericLiteralNode.text);
                let isInt = Math.floor(number) === number;
                return isInt ? 'Int' : 'Float';
            } break;
            // case ts.SyntaxKind.BigIntLiteral: {} break;
            case ts.SyntaxKind.StringLiteral: return 'String';
            case ts.SyntaxKind.Identifier: {
                let identifierNode = syntaxNode as ts.Identifier;
                return this.resolveIdentifierToHaxeTypePath(identifierNode, atSymbol, exportRoot);
            } break;
            case ts.SyntaxKind.FalseKeyword: return 'Bool';
            case ts.SyntaxKind.TrueKeyword: return 'Bool';
            case ts.SyntaxKind.VoidKeyword: return 'Void';
            case ts.SyntaxKind.TypeParameter: {
                let typeParameterDeclaration = syntaxNode as ts.TypeParameterDeclaration;
                return typeParameterDeclaration.name.text;
            } break;
            case ts.SyntaxKind.Parameter: {
                let parameterNode = syntaxNode as ts.ParameterDeclaration;
                // we can ignore the initializer because these are not supported in definition files
                // @! handle dotDotDotToken
                let isOptional = parameterNode.questionToken != null;
                let isRest = parameterNode.dotDotDotToken != null;
                let parameterIdent: string;

                switch (parameterNode.name.kind) {
                    case ts.SyntaxKind.Identifier: {
                        parameterIdent = this.toSafeIdent(parameterNode.name.text);
                    } break;
                    default: {
                        debugger;
                        this.logError(`Unhandled parameter name kind ${ts.SyntaxKind[parameterNode.name.kind]}`, this.location(atSymbol));
                        parameterIdent = `<UNHANDLED ${ts.SyntaxKind[parameterNode.name.kind]}>`;
                    } break;
                }

                let parameterTypeNode = parameterNode.type || this.typeChecker.typeToTypeNode(this.typeChecker.getTypeAtLocation(parameterNode));
                let parameterTypeString: string;
                if (parameterTypeNode != null) {
                    parameterTypeString = this.convertSyntaxType(parameterTypeNode, atSymbol, exportRoot);
                } else {
                    parameterTypeString = 'Any';
                }
                if (isRest) {
                    // @! hack to replace Array<T> with haxe.externs.Rest<T>
                    parameterTypeString = parameterTypeString.replace(/^Array</, 'haxe.externs.Rest<');
                }
                return `${isOptional ? '?' : ''}${parameterIdent}: ${parameterTypeString}`;
            } break;
            // case ts.SyntaxKind.Decorator: {} break;
            case ts.SyntaxKind.PropertySignature: {
                let propertySignatureNode = syntaxNode as ts.PropertySignature;
                let isOptional = propertySignatureNode.questionToken != null;

                let originalName = this.getTSPropertyNameString(propertySignatureNode.name, atSymbol, exportRoot);
                let haxeSafeName = this.toSafeIdent(originalName);

                let typeNode: ts.TypeNode | undefined;

                if (propertySignatureNode.type != null) {
                    typeNode = propertySignatureNode.type;
                } else {
                    typeNode = this.typeChecker.typeToTypeNode(this.typeChecker.getTypeAtLocation(propertySignatureNode));
                }

                let typeString: string;
                if (typeNode != null) {
                    typeString = this.convertSyntaxType(typeNode, atSymbol, exportRoot);
                } else {
                    typeString = 'Any';
                    this.logError(`Failed to get type for property <b>${haxeSafeName}</b>`, this.location(atSymbol));
                }

                return `${originalName !== haxeSafeName ? `@:native('${originalName}') ` : ''}${isOptional ? '@:optional ' : ''}${haxeSafeName}: ${typeString}`
            }
            // case ts.SyntaxKind.PropertyDeclaration: {} break;
            // case ts.SyntaxKind.MethodDeclaration: {} break;
            // case ts.SyntaxKind.Constructor: {} break;
            // case ts.SyntaxKind.GetAccessor: {} break;
            // case ts.SyntaxKind.SetAccessor: {} break;

            // case ts.SyntaxKind.FunctionDeclaration:
            // case ts.SyntaxKind.MethodDeclaration:
            case ts.SyntaxKind.MethodSignature: {
                // almost same as PropertySignature
                let methodSignatureNode = syntaxNode as ts.MethodSignature;

                let isOptional = methodSignatureNode.questionToken != null;
                let originalName = this.getTSPropertyNameString(methodSignatureNode.name, atSymbol, exportRoot);
                let haxeSafeName = this.toSafeIdent(originalName);

                let typeString: string = this.convertFunctionLike(methodSignatureNode, atSymbol, exportRoot);

                return `${originalName !== haxeSafeName ? `@:native('${originalName}') ` : ''}${isOptional ? '@:optional ' : ''}${haxeSafeName}: ${typeString}`
            } break;
            // case ts.SyntaxKind.ConstructSignature:
            // case ts.SyntaxKind.ConstructorType:
            case ts.SyntaxKind.CallSignature:
            case ts.SyntaxKind.FunctionExpression:
            case ts.SyntaxKind.ArrowFunction:
            case ts.SyntaxKind.FunctionType: {
                return this.convertFunctionLike(syntaxNode as ts.FunctionLike, atSymbol, exportRoot);
            } break;

            // case ts.SyntaxKind.IndexSignature: {} break;
            // case ts.SyntaxKind.TypePredicate: {} break;
            case ts.SyntaxKind.TypeReference: {
                let typeReferenceNode = syntaxNode as ts.TypeReferenceNode;
                let typeNameString = this.convertSyntaxType(typeReferenceNode.typeName, atSymbol, exportRoot);
                let typeArguments: ReadonlyArray<ts.Node> = (typeReferenceNode.typeArguments || []);
                let typeArgumentsStrings = typeArguments.map((arg) => this.convertSyntaxType(arg, atSymbol, exportRoot));
                return `${typeNameString}` + (typeArgumentsStrings.length > 0 ? `<${typeArgumentsStrings.join(', ')}>` : '');
            } break;
            // case ts.SyntaxKind.ConstructorType: {} break;

            case ts.SyntaxKind.IndexedAccessType:
            case ts.SyntaxKind.TypeQuery: {
                let resolvedType = this.typeChecker.getTypeFromTypeNode(syntaxNode as ts.TypeNode);
                let resolvedTypeNode = this.typeChecker.typeToTypeNode(resolvedType);
                if (resolvedTypeNode == null) {
                    this.logWarning('Query type resolved to null', this.location(atSymbol));
                    return 'Any';
                } else {
                    return this.convertSyntaxType(resolvedTypeNode, atSymbol, exportRoot);
                }
            } break;
            case ts.SyntaxKind.ThisType: {
                let resolvedType = this.typeChecker.getTypeFromTypeNode(syntaxNode as ts.TypeNode);
                let haxeTypePath = this.getHaxeTypePath(resolvedType.symbol, exportRoot);
                return haxeTypePath.join('.');
            } break;
            case ts.SyntaxKind.TypeLiteral: {
                let typeLiteralNode = syntaxNode as ts.TypeLiteralNode;
                let convertedMembers = typeLiteralNode.members.map((memberSyntaxNode) => this.convertSyntaxType(memberSyntaxNode, atSymbol, exportRoot));
                return `{${convertedMembers.join(', ')}}`;
            } break;
            case ts.SyntaxKind.ArrayType: {
                let arrayTypeNode = syntaxNode as ts.ArrayTypeNode;
                return `Array<${this.convertSyntaxType(arrayTypeNode.elementType, atSymbol, exportRoot)}>`;
            } break;

            case ts.SyntaxKind.LiteralType: {
                let literalTypeNode = syntaxNode as ts.LiteralTypeNode;
                // unpack literal expression node and convert that instead
                return this.convertSyntaxType(literalTypeNode.literal, atSymbol, exportRoot);
            } break;

            case ts.SyntaxKind.UnionType: {
                let unionTypeNode = syntaxNode as ts.UnionTypeNode;

                // @! undefined | Type is currently processed to Null<Type>, does haxe have a better way of representing undefined in externs?

                // remove null keyword
                let filteredTypeNodes = unionTypeNode.types.filter((t) => (t.kind !== ts.SyntaxKind.NullKeyword) && (t.kind !== ts.SyntaxKind.UndefinedKeyword));
                let hasNullOrUndefined = filteredTypeNodes.length !== unionTypeNode.types.length;

                let typeStrings = filteredTypeNodes.map((t) => this.convertSyntaxType(t, atSymbol, exportRoot));
                // remove duplicates
                typeStrings = [...new Set(typeStrings)];

                let lastTypeString = typeStrings.pop();
                let eitherType = 'haxe.io.EitherType';
                let closingAngles = '';
                for (let i = 0; i < typeStrings.length; i++) closingAngles += '>';

                return (hasNullOrUndefined ? 'Null<' : '')
                    + (typeStrings.length > 0 ? `${eitherType}<${typeStrings.join(', ' + eitherType + '<')}, ` : '')
                    + `${lastTypeString}${closingAngles}`
                    + (hasNullOrUndefined ? '>' : '')
                ;
            } break;

            case ts.SyntaxKind.TupleType: {
                //@! we could use abstracts to preserve type information, but for now will just use Array<Any> for tuples
                let tupleTypeNode = syntaxNode as ts.TupleTypeNode;
                let elementTypeStrings = tupleTypeNode.elementTypes.map(t => this.convertSyntaxType(t, atSymbol, exportRoot));
                // remove duplicates
                elementTypeStrings = [...new Set(elementTypeStrings)];
                if (elementTypeStrings.length > 1) {
                    return `Array<Any>`;
                } else {
                    return `Array<${elementTypeStrings[0]}>`;
                }
            } break;

            case ts.SyntaxKind.FirstNode: {
                // seems to be for type hints, comes up in the form type X = Enum.A
                // we can't use Enum.A so we return just the Enum type (.left) 
                return this.convertSyntaxType((syntaxNode as any).left, atSymbol, exportRoot);
            } break;

            case ts.SyntaxKind.FirstTypeNode: {
                // function (a): a is X
                return this.convertSyntaxType(this.typeChecker.typeToTypeNode(this.typeChecker.getBooleanType())!, atSymbol, exportRoot);
            } break;

            default: {
                this.logWarning(`Unhandled SyntaxKind <b>${ts.SyntaxKind[syntaxNode.kind]}</b> <b,white>${syntaxNode.symbol != null ? syntaxNode.symbol.name : '{no symbol}'}</>`, Debug.symbolInfoFormatted(this.typeChecker, atSymbol, exportRoot), this.location(atSymbol));

                return `<UNHANDLED SyntaxKind: ${ts.SyntaxKind[syntaxNode.kind]}>`;
            }
        }
        // translate typescript typeNode into a haxe type (probably just a string for this version); i.e.
    }

    protected convertFunctionLike(syntaxNode: ts.FunctionLike, atSymbol: ts.Symbol, exportRoot: ts.Symbol | null) {
        let functionTypeNode = syntaxNode as ts.FunctionTypeNode;
        let returnTypeString = this.convertSyntaxType(functionTypeNode.type, atSymbol, exportRoot);
        let typeParameterDeclarations: ReadonlyArray<ts.TypeParameterDeclaration> = (functionTypeNode.typeParameters || []);

        // haxe function signatures cannot have type parameters; if parameters reference function's typeParameters then we will get errors
        // to avoid this we use a lookup table of symbol overrides, it's hairy to change state like this while parsing so a more robust approach should be used in the future
        // this must be done before converting the parameters
        for (let typeParameterDecl of typeParameterDeclarations) {
            let symbol = typeParameterDecl.symbol || this.typeChecker.getSymbolAtLocation(typeParameterDecl) || typeParameterDecl.name.symbol;
            if (symbol != null) {
                this.logVerbose(`Rewriting disallowed type parameter <b>${typeParameterDecl.name.text}</b> to Any for symbol <b>${symbol.name} (${symbol.id})</b>`, this.location(symbol));
                (symbol as any)._haxeTypePathOverride = ['Any'];
            } else {
                this.logError(`Tried to rewrite disallowed type parameter to Any but could not get symbol`, this.location(atSymbol));
                debugger;
            }
        }

        let parameterStrings = functionTypeNode.parameters.map(p => this.convertSyntaxType(p, atSymbol, exportRoot));

        return `(${parameterStrings.join(', ')}) -> ${returnTypeString}`;
    }

    protected getTSPropertyNameString(propertyNameNode: ts.PropertyName, atSymbol: ts.Symbol, exportRoot: ts.Symbol | null): string {
        let symbol = propertyNameNode.symbol || this.typeChecker.getSymbolAtLocation(propertyNameNode);
        if (symbol == null) {
            debugger;
            throw `Could not get symbol for property name node`;
        } else {
            return symbol.name;
        }
    }

    protected resolveIdentifierToHaxeTypePath(identifierNode: ts.Identifier, atSymbol: ts.Symbol, exportRoot: ts.Symbol | null): string {
        // need to convert this identifier into a haxe type reference
        // Should handle at least:
        //  - haxe built-ins; Array etc
        //  - converted local type references
        let identifierString = identifierNode.escapedText as string;
        let symbol = this.typeChecker.getSymbolAtLocation(identifierNode) || identifierNode.symbol;
        if (symbol != null) {
            let haxeTypePath = this.getHaxeTypePath(symbol, exportRoot);
            return haxeTypePath.join('.');
        } else {
            // @! need to rename to safeIdent and use @:native
            this.logError(`Failed to get symbol for identifier node <b>${identifierString}</b>`, this.location(atSymbol));
            debugger;
            return identifierString;
        }
    }

    protected getAnyTypeNode() {
        return this.typeChecker.typeToTypeNode(this.typeChecker.getAnyType())!;
    }

    protected generateType(typeName: string, symbol: ts.Symbol, exportRoot: ts.Symbol | null): HaxeSyntaxObject | null {
        // assumes symbols have mutual exclusivity between types

        // class
        if (symbol.flags & ts.SymbolFlags.Class) {
            return this.generateClass(typeName, symbol, exportRoot);
        }

        // interface
        if (symbol.flags & ts.SymbolFlags.Interface) {
            return this.generateInterface(typeName, symbol, exportRoot);
        }

        // enum
        if (symbol.flags & ts.SymbolFlags.Enum) {
            return this.generateEnum(typeName, symbol, exportRoot);
        }

        // type alias
        if (symbol.flags & ts.SymbolFlags.TypeAlias) {
            return this.generateTypedefType(typeName, symbol, exportRoot);
        }

        return null;
    }

    /**
     * Module classes are classes with only static fields that hold typescript-module-level members (since haxe doesn't have a notion of members not contained within a type)
     */
    protected generateModuleClass(typeName: string, moduleSymbol: ts.Symbol | undefined, exportRoot: ts.Symbol | null): HaxeSyntaxObject {
        let haxeTypePath = moduleSymbol ? this.getHaxeTypePath(moduleSymbol, exportRoot) : [typeName];
        this.logVerbose('Generating <cyan,i>module class</>', haxeTypePath.join('.'), this.location(moduleSymbol));

        // not clear yet if we need to do anything special for module classes
        let nativePath = moduleSymbol ? TSUtil.getNativePath(moduleSymbol, exportRoot) : '';
        let pos = Debug.getSymbolPosition(moduleSymbol);

        return {
            name: typeName,
            kind: new TDClass(
                undefined,
                undefined,
                false,
                true
            ),
            pack: this.typePathPackages(haxeTypePath),
            fields: [],
            pos: pos,
            isExtern: true,
            meta: [
                {
                    name: ':native',
                    pos: pos,
                    params: [`'${nativePath}'`]
                }
            ],
            doc: `@! Module class`,
            params: [],
        }
    }

    protected generateClass(typeName: string, symbol: ts.Symbol, exportRoot: ts.Symbol | null): HaxeSyntaxObject {
        let haxeTypePath = this.getHaxeTypePath(symbol, exportRoot);
        this.logVerbose('Generating <blue>class</>', haxeTypePath.join('.'), this.location(symbol));

        let nativePath = TSUtil.getNativePath(symbol, exportRoot);
        let pos = Debug.getSymbolPosition(symbol);

        return {
            name: typeName,
            kind: new TDClass(
                undefined, // @! todo extends
                undefined, // @! interfaces
                false, // isInterface
                false  // isFinal
            ),
            pack: this.typePathPackages(haxeTypePath),
            fields: [],
            pos: pos,
            isExtern: true,
            doc: symbol.getDocumentationComment(this.typeChecker).map(p => p.text).join('\n\n'),
            meta: [
                {
                    name: ':native',
                    pos: pos,
                    params: [`'${nativePath}'`]
                }
            ],
            params: [],
        }
    }

    protected generateInterface(typeName: string, symbol: ts.Symbol, exportRoot: ts.Symbol | null): HaxeSyntaxObject {
        let haxeTypePath = this.getHaxeTypePath(symbol, exportRoot);
        this.logVerbose('Generating <magenta>interface</>', haxeTypePath.join('.'), this.location(symbol));

        let nativePath = TSUtil.getNativePath(symbol, exportRoot);
        let pos = Debug.getSymbolPosition(symbol);

        return {
            name: typeName,
            kind: new TDClass(
                undefined, // @! todo extends
                undefined, // @! interfaces
                true, // isInterface
                false // isFinal
            ),
            pack: this.typePathPackages(haxeTypePath),
            fields: [],
            pos: pos,
            isExtern: true,
            doc: symbol.getDocumentationComment(this.typeChecker).map(p => p.text).join('\n\n'),
            meta: [
                {
                    name: ':native',
                    pos: pos,
                    params: [`'${nativePath}'`]
                }
            ],
            params: [],
        }
    }

    protected generateEnum(typeName: string, symbol: ts.Symbol, exportRoot: ts.Symbol | null): HaxeSyntaxObject {
        let haxeTypePath = this.getHaxeTypePath(symbol, exportRoot);
        this.logVerbose('Generating <yellow>enum</>', haxeTypePath.join('.'), this.location(symbol));

        let nativePath = TSUtil.getNativePath(symbol, exportRoot);
        let pos = Debug.getSymbolPosition(symbol);

        let declaredType = this.typeChecker.getDeclaredTypeOfSymbol(symbol);
        this.logVerbose(`declaredType.flags <i>${Debug.getActiveTypeFlags(declaredType.flags).join(', ')}</>`);

        // enum members must be constant expressions

        // @! need to find enum type
        let enumHaxeType: string | undefined = undefined;

        // determine underlying type of enum
        // iterate enum members and check the runtime type of its constant value so we can differentiate between Float and Int
        symbol.exports!.forEach((member, key) => {
            let enumMember = (member.valueDeclaration as ts.EnumMember);
            let constValue = this.typeChecker.getConstantValue(enumMember);
            let valueType = typeof constValue;

            let memberHaxeType: string;

            if (valueType === 'number') {
                let isInt = Math.floor(constValue as number) === constValue;
                memberHaxeType = isInt ? 'Int' : 'Float';
            } else if (valueType === 'string') {
                memberHaxeType = 'String';
            } else if (valueType === 'undefined') {
                // enums are implicitly ints
                memberHaxeType = 'Int';
            } else {
                memberHaxeType = 'Any';
            }

            if (enumHaxeType === undefined) {
                enumHaxeType = memberHaxeType;
            } else if (enumHaxeType !== memberHaxeType) {
                // Handle Int -> Float casts
                if (enumHaxeType === 'Int' && memberHaxeType === 'Float') {
                    enumHaxeType = 'Float';
                } else if (enumHaxeType === 'Float' && memberHaxeType === 'Int') {
                    enumHaxeType = 'Float';
                } else {
                    enumHaxeType = 'Any';
                }
            }
        });

        // could not determine enum haxe type
        if (enumHaxeType == null) {
            enumHaxeType = 'Any';
        }

        return {
            name: typeName,
            kind: new TDAbstract(enumHaxeType, [enumHaxeType], [enumHaxeType]),
            pack: this.typePathPackages(haxeTypePath),
            fields: [],
            pos: pos,
            isExtern: true,
            doc: symbol.getDocumentationComment(this.typeChecker).map(p => p.text).join('\n\n'),
            meta: [
                {
                    name: ':native',
                    pos: pos,
                    params: [`'${nativePath}'`]
                },
                {
                    name: ':enum',
                    pos: pos,
                    params: undefined
                }
            ],
            params: [],
        }
    }

    protected generateTypedefType(typeName: string, symbol: ts.Symbol, exportRoot: ts.Symbol | null): HaxeSyntaxObject {
        let haxeTypePath = this.getHaxeTypePath(symbol, exportRoot);
        this.logVerbose('Generating <green>type alias</>', haxeTypePath.join('.'), this.location(symbol));

        let nativePath = TSUtil.getNativePath(symbol, exportRoot);
        let pos = Debug.getSymbolPosition(symbol);

        let declarations = symbol.declarations || [];

        let typeAliasDeclarations = declarations.filter((declaration) => declaration.kind === ts.SyntaxKind.TypeAliasDeclaration);

        // default to any to handle failure
        let typeKind = new TDAlias('Any');
        let typeParams: Array<TypeParamDecl> = [];

        if (typeAliasDeclarations.length === 1) {
            let typeAliasDeclarationNode = typeAliasDeclarations[0] as ts.TypeAliasDeclaration;
            let typeParamDecls: ReadonlyArray<ts.TypeParameterDeclaration> = (typeAliasDeclarationNode.typeParameters || []);
            let typeParameterStrings = typeParamDecls.map(tp => this.convertSyntaxType(tp, symbol, exportRoot));
            typeParams = typeParameterStrings.map(name => { return {name: name} });

            typeKind = new TDAlias(this.convertSyntaxType(typeAliasDeclarationNode.type, symbol, exportRoot));
        } else if (typeAliasDeclarations.length === 0) {
            this.logError(`Symbol did not have any type-alias declarations when generating <b>${haxeTypePath.join('.')}</b>`, this.location(symbol));
            debugger;
        } else if (typeAliasDeclarations.length > 1) {
            this.logError(`Found more than one type-alias declaration for this symbol; this is unexpected and unhandled <b>${haxeTypePath.join('.')}</b>`, this.location(symbol));
            debugger;
        }

        return {
            name: typeName,
            kind: typeKind,
            params: typeParams,
            pack: this.typePathPackages(haxeTypePath),
            fields: [],
            doc: symbol.getDocumentationComment(this.typeChecker).map(p => p.text).join('\n\n'),
            pos: pos,
        }
    }

    protected generateTypeAlias(targetType: HaxeType, typeName: string, symbol: ts.Symbol, exportRoot: ts.Symbol | null): HaxeSyntaxObject {
        // @! need to account for type parameters!
        let haxeTypePath = this.getHaxeTypePath(symbol, exportRoot);
        this.logVerbose('Generating <green>typedef</>', haxeTypePath.join('.'), `=`, targetType.typePath.join('.'), this.location(symbol));

        let pos = Debug.getSymbolPosition(symbol);

        return {
            name: typeName,
            kind: new TDAlias(targetType.typePath.join('.')),
            pack: this.typePathPackages(haxeTypePath),
            fields: [],
            doc: symbol.getDocumentationComment(this.typeChecker).map(p => p.text).join('\n\n'),
            pos: pos,
        }

    }

    protected addGeneratedHaxeType(haxeType: HaxeType) {
        let haxePath = haxeType.typePath;
        let haxePathStr = haxePath.join('.');
        if (this.haxeTypes.has(haxePathStr)) {
            // we don't replace existing types at the same path because their values get merged
        } else {
            this.haxeTypes.set(haxePath.join('.'), haxeType);
        }
        return haxeType;
    }

    protected getExistingHaxeType(symbol: ts.Symbol): HaxeType | null {
        for (let typePath of this.haxeTypes.keys()) {
            let haxeType = this.haxeTypes.get(typePath)!;
            if (haxeType.contributingSymbols.has(symbol)) {
                return haxeType;
            }
        }
        return null;
    }

    /**
     * Given a symbol with Module or Type flags, it will return the generated haxe type path
     * 
     * This is deterministic and does not depend on registered haxe types
     */
    protected getHaxeTypePath(symbol: ts.Symbol, exportRoot: ts.Symbol | null): Array<string> {
        // check for overrides
        if ((symbol as any)._haxeTypePathOverride != null) {
            return (symbol as any)._haxeTypePathOverride;
        }

        // @! if the exportRoot is a file export then the package path should be also determined by file path (relative to root)
        let symbolPath = TSUtil.getSymbolPath(symbol, exportRoot);

        // check if it's a built-in
        if (symbol.valueDeclaration != null) {
            let sourceFile = symbol.valueDeclaration.getSourceFile();
            let isDefaultLib = sourceFile.hasNoDefaultLib;
            if (isDefaultLib) {
                switch (symbol.escapedName) {
                    case 'Array': return ['Array'];
                    case 'String': return ['String'];
                    case 'Map': return ['js.lib.Map'];
                    case 'Promise': return ['js.lib.Promise'];
                    case 'Date': return ['js.lib.Date'];
                    case 'Number': return ['js.lib.Number']; // PR open, not merged yet
                    // @! should search js.lib to find a matching built-in
                    default: {
                        this.logWarning(`<red>Unhandled built-in symbol <b>${symbol.escapedName}</b></>`);
                        return ['Any'];
                    }
                }
            }
        }

        // leave type parameters without a package
        let symbolType = this.typeChecker.getDeclaredTypeOfSymbol(symbol);
        if ((symbolType.flags & ts.TypeFlags.TypeParameter) !== 0) {
            return [symbol.name];
        }

        let expandedSymbolPathNames = new Array<string>();

        for (let i = 0; i < symbolPath.length; i++) {
            let s = symbolPath[i];
            let isLastSymbol = i === symbolPath.length - 1;
            // first, we need to extract packages encoded in the symbol name
            // split name by path separators / and \
            let p = s.name.split(/[/\\]+/);
            let symbolName = p.pop()!;

            // add parent path to package list
            for (let name of p) {
                expandedSymbolPathNames.push(this.toSafePackageName(name));
            }

            // finally, add the symbol name
            if (
                // if symbol is marked as a type rather than just a module then convert to a haxe type name
                (s.flags & ts.SymbolFlags.Type) && !(s.flags & ts.SymbolFlags.Module) ||
                // if the symbol is the very last in the path, then force a haxe type name
                isLastSymbol
            ) {
                expandedSymbolPathNames.push(this.toSafeHaxeTypeName(symbolName));
            } else {
                expandedSymbolPathNames.push(this.toSafePackageName(symbolName));
            }
        }

        return this.packageRoot.concat(expandedSymbolPathNames);
    }

    /**
     * Returns a HaxeType for a given haxe type path, following typedefs if required
     */
    protected getHaxeType(haxeTypePath: Array<string>, followAliases: boolean): HaxeType | null {
        let haxeType = this.haxeTypes.get(haxeTypePath.join('.'));
        if (haxeType != null) {
            if (followAliases && haxeType.aliasTo != null) {
                return this.getHaxeType(haxeType.aliasTo.typePath, followAliases);
            } else {
                return haxeType;
            }
        } else {
            return null;
        }
    }

    protected toSafePackageName(name: string) {
        // remove .js suffix
        name = name.replace(/\.js$/i, '');
        // replace disallowed characters
        name = this.toSafeIdent(name);
        // lowercase
        name = name.toLowerCase();

        return name;
    }

    protected toSafeHaxeTypeName(name: string) {
        // capitalize the first letter character (might be preceded by non-letters which will later be replaced)
        name = name.replace(/[a-z]/i, (c) => c.toUpperCase());
        // replace disallowed characters
        name = this.toSafeIdent(name);
        // capitalize first character
        name = this.capitalize(name);

        return name;
    }

    protected capitalize(str: string) {
        return str.charAt(0).toUpperCase() + str.substr(1);
    }

    protected toSafeIdent(str: string) {
        // remove quotes
        str = str.replace(/["'`]/gm, '');

        // replace hyphens and dots with underscore
        str = str.replace(/[-–—.]/gm, '_');

        // @! should capitalize next character after replace with work, so hello@world becomes helloAtWorld

        // replace disallowed characters with their character names or '_' if not known
        str = str.replace(/[^0-9a-z_]/igm, (substring) => this.specialAsciiToName(substring) || '_');
        // replace or remove any disallowed characters from the front of the name
        str = str.replace(/^[^a-z_]+/i, (substring) => substring.split('').map(c => this.specialAsciiToName(c) || '').join(''));

        // add underscore suffix to reserved keywords
        if (this.haxeReservedWords.indexOf(str) !== -1) {
            str += '_';
        }

        return str;
    }

    protected specialAsciiToName(char: string): string | null {
        let charName = this.safeCharacterNames.get(char);
        return charName != null ? charName : null;
    }

    /**
     * Given a haxe type path, such as a.b.Module.SubType, this returns [a, b]
     */
    protected typePathPackages(haxeTypePath: Array<string>): Array<string> {
        let packages = new Array<string>();
        for (let p of haxeTypePath) {
            let firstLetterMatch = p.match(/[a-z]/i) || [];
            let c = firstLetterMatch[0];
            if (c != null && c === c.toLowerCase()) {
                packages.push(p);
            } else {
                break;
            }
        }
        return packages;
    }

    /**
     * Given a haxe type path, such as a.b.Module.SubType, this returns 'Module'
     */
    protected typePathModule(haxeTypePath: Array<string>): string | null {
        for (let p of haxeTypePath) {
            let firstLetterMatch = p.match(/[a-z]/i) || [];
            let c = firstLetterMatch[0];
            if (c != null && c === c.toUpperCase()) {
                return p;
            }
        }
        return null;
    }

    /**
     * Given a haxe type path, such as a.b.Module.SubType, this returns 'SubType'
     */
    protected typePathTypeName(haxeTypePath: Array<string>): string | null {
        let lastEntry = haxeTypePath[haxeTypePath.length - 1];
        if (lastEntry == null) {
            return null;
        }
        
        let firstLetterMatch = lastEntry.match(/[a-z]/i) || [];
        let c = firstLetterMatch[0];
        
        if (c != null && c === c.toUpperCase()) {
            return lastEntry;
        } else {
            return null;
        }
    }

    protected logVerbose(...args: Array<any>) {
        if (this.options.logVerbose) {
            Terminal.log.apply(Terminal, args);
        }
    }

    protected logWarning(...args: Array<any>) {
        if (this.options.logWarnings) {
            Terminal.warn.apply(Terminal, args);
        }
    }

    protected logError(...args: Array<any>) {
        if (this.options.logError) {
            Terminal.error.apply(Terminal, args);
        }
    }

    protected location(symbol: ts.Symbol | undefined, newline?: 'append' | 'prepend') {
        if (this.options.printErrorLocation) {
            return (
                (newline === 'prepend' ? '\n' : '') +
                ' <dim,gray,u>' + Debug.getSymbolPrintableLocation(symbol) + '</>' +
                (newline === 'append' ? '\n' : '')
            );
        } else {
            return '';
        }
    }

    protected safeCharacterNames = new Map<string, string>([
        ['0', 'Zero'],
        ['1', 'One'],
        ['2', 'Two'],
        ['3', 'Three'],
        ['4', 'Four'],
        ['5', 'Five'],
        ['6', 'Six'],
        ['7', 'Seven'],
        ['8', 'Eight'],
        ['9', 'Nine'],
        ['$', 'Dollar'],
        ['!', 'Bang'],
        ['"', 'DoubleQuote'],
        ['#', 'Hash'],
        ['$', 'Dollar'],
        ['%', 'Percent'],
        ['&', 'Ampersand'],
        ['\'', 'Quote'],
        ['(', 'LeftParentheses'],
        [')', 'RightParentheses'],
        ['*', 'Star'],
        ['+', 'Plus'],
        [',', 'Comma'],
        ['-', 'Minus'],
        ['.', 'Dot'],
        ['/', 'ForwardSlash'],
        [':', 'Colon'],
        [';', 'SemiColon'],
        ['<', 'LessThan'],
        ['=', 'Equals'],
        ['>', 'GreaterThan'],
        ['?', 'QuestionMark'],
        ['{', 'LeftBrace'],
        ['|', 'Bar'],
        ['}', 'RightBrace'],
        ['~', 'Tilde'],
        ['[', 'LeftSquareBracket'],
        ['\\', 'BackwardSlash'],
        [']', 'RightSquareBracket'],
        ['^', 'Caret'],
        ['_', 'Underscore'],
        ['@', 'At'],
    ]);

    protected primitiveHaxeTypeMap = {
        'number': 'Float',
        'string': 'String',
        'String': 'String',
        'any': 'Dynamic',
        // @! todo
    };

    protected haxeReservedWords = [
        // see core/ast.ml
        "public", "private", "static", "override", "dynamic", "inline", "macro",
        "final", "extern", "function", "class", "static", "var", "if", "else", "while",
        "do", "for", "break", "return", "continue", "extends", "implements", "import",
        "switch", "case", "default", "private", "public", "try", "catch", "new", "this",
        "throw", "extern", "enum", "in", "interface", "untyped", "cast", "override",
        "typedef", "dynamic", "package", "inline", "using", "null", "true", "false",
        "abstract", "macro", "final", "operator", "overload", "protected",
    ]

}