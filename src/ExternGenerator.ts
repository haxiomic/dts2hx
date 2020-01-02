import * as ts from 'typescript';
import * as path from 'path';
import { TSUtil } from './TSUtil';
import Debug from './Debug';
import Terminal from './Terminal';
import { TypeDefinition, TDClass, TDAbstract, TDAlias, Access, FVar } from './Expr';
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

        // variableDeclaration represents the _syntax_ level declaration and type. It does not handle any type resolution
        let valueDeclarationType: ts.TypeNode | undefined = undefined;
        if (symbol.valueDeclaration != null) {
            switch (symbol.valueDeclaration.kind) {
                case ts.SyntaxKind.VariableDeclaration:
                case ts.SyntaxKind.EnumMember:
                case ts.SyntaxKind.PropertyDeclaration:
                case ts.SyntaxKind.PropertySignature: {
                    valueDeclarationType = (symbol.valueDeclaration as any).type;
                } break;
                default: {
                    this.logWarning(`symbol.valueDeclaration.kind was unhandled value <b>${ts.SyntaxKind[symbol.valueDeclaration.kind]}</> for field <b>${symbol.name}</b> in ${parent.typePath.join('.')}`);
                } break;
            }
        } else {
            this.logWarning(`symbol.valueDeclaration is null for field <b>${symbol.name}</b> in ${parent.typePath.join('.')}`);
        }
        
        // resolvedType is the fully resolved type, following aliases and such, might be useful later
        let resolvedType =  this.typeChecker.getTypeOfSymbolAtLocation(symbol, symbol.valueDeclaration);
        // @! we can cast to Type subtype (like ts.ObjectType)

        /**
         * Things to do:
         * - primitives, number, boolean, string, symbol
         * - type references: must remap to generated name, not follow alias
         */

        let typeString: string | null;

        if ((symbol.flags & ts.SymbolFlags.EnumMember) !== 0) {
            typeString = null;
        } else {
            typeString = '<TODO>';
        }

        let docs = symbol.getDocumentationComment(this.typeChecker).map(p => p.text.trim());

        docs.push('symbol.flags: ' + Debug.getActiveSymbolFlags(symbol.flags, true).join(', '));

        if (symbol.valueDeclaration != null) {
            docs.push('symbol.valueDeclaration.getText(): `' + symbol.valueDeclaration.getText() + '`');
            docs.push('symbol.valueDeclaration.kind: ' + ts.SyntaxKind[symbol.valueDeclaration.kind]);
        } else {
            docs.push('symbol.valueDeclaration: null');
        }

        if (valueDeclarationType != null) {
            // syntax-level type information (i.e :Type)
            docs.push('variableDeclaration.type.kind: ' + ts.SyntaxKind[valueDeclarationType.kind]);
            typeString = this.convertSyntaxType(valueDeclarationType, symbol, exportRoot);
        } else {
            // we don't have explicit type for this symbol, so instead resolve the type using th checker and use that information
            let resolvedTypeNode: ts.TypeNode | undefined = undefined;
            if ((resolvedType.flags & ts.TypeFlags.Literal) !== 0) {
                // the symbol has a literal expression that gives the type (i.e variable = false)
                resolvedTypeNode = this.typeChecker.typeToTypeNode(this.typeChecker.getBaseTypeOfLiteralType(resolvedType));
            } else {
                resolvedTypeNode = this.typeChecker.typeToTypeNode(resolvedType);
                this.logWarning(`variableDeclaration.type was null but the resolve type is not a literal for field <b>${symbol.name}</b> in ${parent.typePath.join('.')}`);
            }

            // if we successfully convert the resolved type into a syntax-level TypeNode then we can go ahead and convert this to haxe
            if (resolvedTypeNode != null) {
                typeString = this.convertSyntaxType(resolvedTypeNode, symbol, exportRoot);
            } else {
                // failed to resolve the type
                this.logWarning(`resolvedTypeNode is null for field <b>${symbol.name}</b> in ${parent.typePath.join('.')}`);
                typeString = '<ERROR: resolvedTypeNode was null>';
            }
            docs.push('variableDeclaration.type: null, so we should use resolvedType');
        }
        docs.push('[type checker] resolvedType.flags: ' + Debug.getActiveTypeFlags(resolvedType.flags).join(', '));

        parent.haxeSyntaxObject.fields.push({
            access: isStatic ? [Access.AStatic] : [],
            name: safeIdent,
            doc: docs.join('\n'),
            kind: new FVar(typeString, undefined),
            pos: pos,
            meta: nameChanged ? [{name: ':native', params: [`'${symbol.name}'`], pos: pos}] : []
        });
    }

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
            case ts.SyntaxKind.StringLiteral: {
                return 'String';
            } break;
            case ts.SyntaxKind.Identifier: {
                let identifierNode = syntaxNode as ts.Identifier;
                return this.resolveIdentifierToHaxeTypePath(identifierNode, atSymbol, exportRoot);
            } break;
            // case ts.SyntaxKind.BreakKeyword: {} break;
            // case ts.SyntaxKind.CaseKeyword: {} break;
            // case ts.SyntaxKind.CatchKeyword: {} break;
            // case ts.SyntaxKind.ClassKeyword: {} break;
            // case ts.SyntaxKind.ConstKeyword: {} break;
            // case ts.SyntaxKind.ContinueKeyword: {} break;
            // case ts.SyntaxKind.DebuggerKeyword: {} break;
            // case ts.SyntaxKind.DefaultKeyword: {} break;
            // case ts.SyntaxKind.DeleteKeyword: {} break;
            // case ts.SyntaxKind.DoKeyword: {} break;
            // case ts.SyntaxKind.ElseKeyword: {} break;
            // case ts.SyntaxKind.EnumKeyword: {} break;
            // case ts.SyntaxKind.ExportKeyword: {} break;
            // case ts.SyntaxKind.ExtendsKeyword: {} break;
            case ts.SyntaxKind.FalseKeyword: {
                return 'Bool';
            } break;
            // case ts.SyntaxKind.FinallyKeyword: {} break;
            // case ts.SyntaxKind.ForKeyword: {} break;
            // case ts.SyntaxKind.FunctionKeyword: {} break;
            // case ts.SyntaxKind.IfKeyword: {} break;
            // case ts.SyntaxKind.ImportKeyword: {} break;
            // case ts.SyntaxKind.InKeyword: {} break;
            // case ts.SyntaxKind.InstanceOfKeyword: {} break;
            // case ts.SyntaxKind.NewKeyword: {} break;
            // case ts.SyntaxKind.NullKeyword: {} break;
            // case ts.SyntaxKind.ReturnKeyword: {} break;
            // case ts.SyntaxKind.SuperKeyword: {} break;
            // case ts.SyntaxKind.SwitchKeyword: {} break;
            // case ts.SyntaxKind.ThisKeyword: {} break;
            // case ts.SyntaxKind.ThrowKeyword: {} break;
            case ts.SyntaxKind.TrueKeyword: {
                return 'Bool';
            } break;
            // case ts.SyntaxKind.TryKeyword: {} break;
            // case ts.SyntaxKind.TypeOfKeyword: {} break;
            // case ts.SyntaxKind.VarKeyword: {} break;
            case ts.SyntaxKind.VoidKeyword: {
                return 'Void';
            } break;
            // case ts.SyntaxKind.WhileKeyword: {} break;
            // case ts.SyntaxKind.WithKeyword: {} break;
            // case ts.SyntaxKind.ImplementsKeyword: {} break;
            // case ts.SyntaxKind.InterfaceKeyword: {} break;
            // case ts.SyntaxKind.LetKeyword: {} break;
            // case ts.SyntaxKind.PackageKeyword: {} break;
            // case ts.SyntaxKind.PrivateKeyword: {} break;
            // case ts.SyntaxKind.ProtectedKeyword: {} break;
            // case ts.SyntaxKind.PublicKeyword: {} break;
            // case ts.SyntaxKind.StaticKeyword: {} break;
            // case ts.SyntaxKind.YieldKeyword: {} break;
            // case ts.SyntaxKind.AbstractKeyword: {} break;
            // case ts.SyntaxKind.AsKeyword: {} break;
            // case ts.SyntaxKind.AnyKeyword: {} break;
            // case ts.SyntaxKind.AsyncKeyword: {} break;
            // case ts.SyntaxKind.AwaitKeyword: {} break;
            // case ts.SyntaxKind.BooleanKeyword: {} break;
            // case ts.SyntaxKind.ConstructorKeyword: {} break;
            // case ts.SyntaxKind.DeclareKeyword: {} break;
            // case ts.SyntaxKind.GetKeyword: {} break;
            // case ts.SyntaxKind.InferKeyword: {} break;
            // case ts.SyntaxKind.IsKeyword: {} break;
            // case ts.SyntaxKind.KeyOfKeyword: {} break;
            // case ts.SyntaxKind.ModuleKeyword: {} break;
            // case ts.SyntaxKind.NamespaceKeyword: {} break;
            // case ts.SyntaxKind.NeverKeyword: {} break;
            // case ts.SyntaxKind.ReadonlyKeyword: {} break;
            // case ts.SyntaxKind.RequireKeyword: {} break;
            // case ts.SyntaxKind.NumberKeyword: {} break;
            // case ts.SyntaxKind.ObjectKeyword: {} break;
            // case ts.SyntaxKind.SetKeyword: {} break;
            // case ts.SyntaxKind.StringKeyword: {} break;
            // case ts.SyntaxKind.SymbolKeyword: {} break;
            // case ts.SyntaxKind.TypeKeyword: {} break;
            // case ts.SyntaxKind.UndefinedKeyword: {} break;
            // case ts.SyntaxKind.UniqueKeyword: {} break;
            // case ts.SyntaxKind.UnknownKeyword: {} break;
            // case ts.SyntaxKind.FromKeyword: {} break;
            // case ts.SyntaxKind.GlobalKeyword: {} break;
            // case ts.SyntaxKind.BigIntKeyword: {} break;
            // case ts.SyntaxKind.OfKeyword: {} break;
            // case ts.SyntaxKind.QualifiedName: {} break;
            // case ts.SyntaxKind.ComputedPropertyName: {} break;
            // case ts.SyntaxKind.TypeParameter: {} break;
            // case ts.SyntaxKind.Parameter: {} break;
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
                
                
                // if (propertySignatureNode.type != null) {
                //     let type = this.convertSyntaxType(propertySignatureNode.type, atSymbol, exportRoot);
                //     return `${propertySignatureNode.name.getText()}: ${type}`;
                // } else {
                //     debugger;
                //     return `${propertySignatureNode.name.getText()}: Any`;
                // }
                // @! follow same conversion as fields
            // } break;
            // case ts.SyntaxKind.PropertyDeclaration: {} break;
            // case ts.SyntaxKind.MethodSignature: {} break;
            // case ts.SyntaxKind.MethodDeclaration: {} break;
            // case ts.SyntaxKind.Constructor: {} break;
            // case ts.SyntaxKind.GetAccessor: {} break;
            // case ts.SyntaxKind.SetAccessor: {} break;
            // case ts.SyntaxKind.CallSignature: {} break;
            // case ts.SyntaxKind.ConstructSignature: {} break;
            // case ts.SyntaxKind.IndexSignature: {} break;
            // case ts.SyntaxKind.TypePredicate: {} break;
            case ts.SyntaxKind.TypeReference: {
                let typeReferenceNode = syntaxNode as ts.TypeReferenceNode;
                let typeNameString = this.convertSyntaxType(typeReferenceNode.typeName, atSymbol, exportRoot);
                let typeArguments: ReadonlyArray<ts.Node> = (typeReferenceNode.typeArguments || []);
                let typeArgumentsStrings = typeArguments.map((arg) => this.convertSyntaxType(arg, atSymbol, exportRoot));
                return `${typeNameString}` + (typeArgumentsStrings.length > 0 ? `<${typeArgumentsStrings.join(', ')}>` : '');
            } break;
            // case ts.SyntaxKind.FunctionType: {} break;
            // case ts.SyntaxKind.ConstructorType: {} break;
            case ts.SyntaxKind.TypeQuery: {
                let typeQueryNode = syntaxNode as ts.TypeQueryNode;
                let resolvedType = this.typeChecker.getTypeFromTypeNode(typeQueryNode);
                let resolvedTypeNode = this.typeChecker.typeToTypeNode(resolvedType);
                if (resolvedTypeNode == null) {
                    this.logWarning('Query type resolved to null', this.location(atSymbol));
                    return 'Any';
                } else {
                    return this.convertSyntaxType(resolvedTypeNode, atSymbol, exportRoot);
                }
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
            // case ts.SyntaxKind.TupleType: {} break;
            // case ts.SyntaxKind.OptionalType: {} break;
            // case ts.SyntaxKind.RestType: {} break;
            // case ts.SyntaxKind.UnionType: {} break;
            // case ts.SyntaxKind.IntersectionType: {} break;
            // case ts.SyntaxKind.ConditionalType: {} break;
            // case ts.SyntaxKind.InferType: {} break;
            // case ts.SyntaxKind.ParenthesizedType: {} break;
            // case ts.SyntaxKind.ThisType: {} break;
            // case ts.SyntaxKind.TypeOperator: {} break;
            // case ts.SyntaxKind.IndexedAccessType: {} break;
            // case ts.SyntaxKind.MappedType: {} break;
            case ts.SyntaxKind.LiteralType: {
                let literalTypeNode = syntaxNode as ts.LiteralTypeNode;
                // unpack literal expression node and convert that instead
                return this.convertSyntaxType(literalTypeNode.literal, atSymbol, exportRoot);
            } break;
            // case ts.SyntaxKind.ImportType: {} break;
            // case ts.SyntaxKind.ObjectBindingPattern: {} break;
            // case ts.SyntaxKind.ArrayBindingPattern: {} break;
            // case ts.SyntaxKind.BindingElement: {} break;
            // case ts.SyntaxKind.ArrayLiteralExpression: {} break;
            // case ts.SyntaxKind.ObjectLiteralExpression: {} break;
            // case ts.SyntaxKind.PropertyAccessExpression: {} break;
            // case ts.SyntaxKind.ElementAccessExpression: {} break;
            // case ts.SyntaxKind.CallExpression: {} break;
            // case ts.SyntaxKind.NewExpression: {} break;
            // case ts.SyntaxKind.TaggedTemplateExpression: {} break;
            // case ts.SyntaxKind.TypeAssertionExpression: {} break;
            // case ts.SyntaxKind.ParenthesizedExpression: {} break;
            // case ts.SyntaxKind.FunctionExpression: {} break;
            // case ts.SyntaxKind.ArrowFunction: {} break;
            // case ts.SyntaxKind.DeleteExpression: {} break;
            // case ts.SyntaxKind.TypeOfExpression: {} break;
            // case ts.SyntaxKind.VoidExpression: {} break;
            // case ts.SyntaxKind.AwaitExpression: {} break;
            // case ts.SyntaxKind.PrefixUnaryExpression: {} break;
            // case ts.SyntaxKind.PostfixUnaryExpression: {} break;
            // case ts.SyntaxKind.BinaryExpression: {} break;
            // case ts.SyntaxKind.ConditionalExpression: {} break;
            // case ts.SyntaxKind.TemplateExpression: {} break;
            // case ts.SyntaxKind.YieldExpression: {} break;
            // case ts.SyntaxKind.SpreadElement: {} break;
            // case ts.SyntaxKind.ClassExpression: {} break;
            // case ts.SyntaxKind.OmittedExpression: {} break;
            // case ts.SyntaxKind.ExpressionWithTypeArguments: {} break;
            // case ts.SyntaxKind.AsExpression: {} break;
            // case ts.SyntaxKind.NonNullExpression: {} break;
            // case ts.SyntaxKind.MetaProperty: {} break;
            // case ts.SyntaxKind.SyntheticExpression: {} break;
            // case ts.SyntaxKind.TemplateSpan: {} break;
            // case ts.SyntaxKind.SemicolonClassElement: {} break;
            // case ts.SyntaxKind.Block: {} break;
            // case ts.SyntaxKind.VariableStatement: {} break;
            // case ts.SyntaxKind.EmptyStatement: {} break;
            // case ts.SyntaxKind.ExpressionStatement: {} break;
            // case ts.SyntaxKind.IfStatement: {} break;
            // case ts.SyntaxKind.DoStatement: {} break;
            // case ts.SyntaxKind.WhileStatement: {} break;
            // case ts.SyntaxKind.ForStatement: {} break;
            // case ts.SyntaxKind.ForInStatement: {} break;
            // case ts.SyntaxKind.ForOfStatement: {} break;
            // case ts.SyntaxKind.ContinueStatement: {} break;
            // case ts.SyntaxKind.BreakStatement: {} break;
            // case ts.SyntaxKind.ReturnStatement: {} break;
            // case ts.SyntaxKind.WithStatement: {} break;
            // case ts.SyntaxKind.SwitchStatement: {} break;
            // case ts.SyntaxKind.LabeledStatement: {} break;
            // case ts.SyntaxKind.ThrowStatement: {} break;
            // case ts.SyntaxKind.TryStatement: {} break;
            // case ts.SyntaxKind.DebuggerStatement: {} break;
            // case ts.SyntaxKind.VariableDeclaration: {} break;
            // case ts.SyntaxKind.VariableDeclarationList: {} break;
            // case ts.SyntaxKind.FunctionDeclaration: {} break;
            // case ts.SyntaxKind.ClassDeclaration: {} break;
            // case ts.SyntaxKind.InterfaceDeclaration: {} break;
            case ts.SyntaxKind.TypeAliasDeclaration: {
                let typeAliasDeclarationNode = syntaxNode as ts.TypeAliasDeclaration;
                let typeNameString = this.convertSyntaxType(typeAliasDeclarationNode.type, atSymbol, exportRoot);
                let typeArguments: ReadonlyArray<ts.Node> = (typeAliasDeclarationNode.typeParameters || []);
                let typeArgumentsStrings = typeArguments.map((arg) => this.convertSyntaxType(arg, atSymbol, exportRoot));
                return `${typeNameString}` + (typeArgumentsStrings.length > 0 ? `<${typeArgumentsStrings.join(', ')}>` : '');
            } break;
            // case ts.SyntaxKind.EnumDeclaration: {} break;
            // case ts.SyntaxKind.ModuleDeclaration: {} break;
            // case ts.SyntaxKind.ModuleBlock: {} break;
            // case ts.SyntaxKind.CaseBlock: {} break;
            // case ts.SyntaxKind.NamespaceExportDeclaration: {} break;
            // case ts.SyntaxKind.ImportEqualsDeclaration: {} break;
            // case ts.SyntaxKind.ImportDeclaration: {} break;
            // case ts.SyntaxKind.ImportClause: {} break;
            // case ts.SyntaxKind.NamespaceImport: {} break;
            // case ts.SyntaxKind.NamedImports: {} break;
            // case ts.SyntaxKind.ImportSpecifier: {} break;
            // case ts.SyntaxKind.ExportAssignment: {} break;
            // case ts.SyntaxKind.ExportDeclaration: {} break;
            // case ts.SyntaxKind.NamedExports: {} break;
            // case ts.SyntaxKind.ExportSpecifier: {} break;
            // case ts.SyntaxKind.MissingDeclaration: {} break;
            // case ts.SyntaxKind.ExternalModuleReference: {} break;
            // case ts.SyntaxKind.JsxElement: {} break;
            // case ts.SyntaxKind.JsxSelfClosingElement: {} break;
            // case ts.SyntaxKind.JsxOpeningElement: {} break;
            // case ts.SyntaxKind.JsxClosingElement: {} break;
            // case ts.SyntaxKind.JsxFragment: {} break;
            // case ts.SyntaxKind.JsxOpeningFragment: {} break;
            // case ts.SyntaxKind.JsxClosingFragment: {} break;
            // case ts.SyntaxKind.JsxAttribute: {} break;
            // case ts.SyntaxKind.JsxAttributes: {} break;
            // case ts.SyntaxKind.JsxSpreadAttribute: {} break;
            // case ts.SyntaxKind.JsxExpression: {} break;
            // case ts.SyntaxKind.CaseClause: {} break;
            // case ts.SyntaxKind.DefaultClause: {} break;
            // case ts.SyntaxKind.HeritageClause: {} break;
            // case ts.SyntaxKind.CatchClause: {} break;
            // case ts.SyntaxKind.PropertyAssignment: {} break;
            // case ts.SyntaxKind.ShorthandPropertyAssignment: {} break;
            // case ts.SyntaxKind.SpreadAssignment: {} break;
            // case ts.SyntaxKind.EnumMember: {} break;
            // case ts.SyntaxKind.SourceFile: {} break;
            // case ts.SyntaxKind.Bundle: {} break;
            // case ts.SyntaxKind.UnparsedSource: {} break;
            // case ts.SyntaxKind.InputFiles: {} break;
            // case ts.SyntaxKind.JSDocTypeExpression: {} break;
            // case ts.SyntaxKind.JSDocAllType: {} break;
            // case ts.SyntaxKind.JSDocUnknownType: {} break;
            // case ts.SyntaxKind.JSDocNullableType: {} break;
            // case ts.SyntaxKind.JSDocNonNullableType: {} break;
            // case ts.SyntaxKind.JSDocOptionalType: {} break;
            // case ts.SyntaxKind.JSDocFunctionType: {} break;
            // case ts.SyntaxKind.JSDocVariadicType: {} break;
            // case ts.SyntaxKind.JSDocComment: {} break;
            // case ts.SyntaxKind.JSDocTypeLiteral: {} break;
            // case ts.SyntaxKind.JSDocSignature: {} break;
            // case ts.SyntaxKind.JSDocTag: {} break;
            // case ts.SyntaxKind.JSDocAugmentsTag: {} break;
            // case ts.SyntaxKind.JSDocClassTag: {} break;
            // case ts.SyntaxKind.JSDocCallbackTag: {} break;
            // case ts.SyntaxKind.JSDocEnumTag: {} break;
            // case ts.SyntaxKind.JSDocParameterTag: {} break;
            // case ts.SyntaxKind.JSDocReturnTag: {} break;
            // case ts.SyntaxKind.JSDocThisTag: {} break;
            // case ts.SyntaxKind.JSDocTypeTag: {} break;
            // case ts.SyntaxKind.JSDocTemplateTag: {} break;
            // case ts.SyntaxKind.JSDocTypedefTag: {} break;
            // case ts.SyntaxKind.JSDocPropertyTag: {} break;
            // case ts.SyntaxKind.SyntaxList: {} break;
            // case ts.SyntaxKind.NotEmittedStatement: {} break;
            // case ts.SyntaxKind.PartiallyEmittedExpression: {} break;
            // case ts.SyntaxKind.CommaListExpression: {} break;
            // case ts.SyntaxKind.MergeDeclarationMarker: {} break;
            // case ts.SyntaxKind.EndOfDeclarationMarker: {} break;
            // case ts.SyntaxKind.Count: {} break;
            // case ts.SyntaxKind.FirstAssignment: {} break;
            // case ts.SyntaxKind.LastAssignment: {} break;
            // case ts.SyntaxKind.FirstCompoundAssignment: {} break;
            // case ts.SyntaxKind.LastCompoundAssignment: {} break;
            // case ts.SyntaxKind.FirstReservedWord: {} break;
            // case ts.SyntaxKind.LastReservedWord: {} break;
            // case ts.SyntaxKind.FirstKeyword: {} break;
            // case ts.SyntaxKind.LastKeyword: {} break;
            // case ts.SyntaxKind.FirstFutureReservedWord: {} break;
            // case ts.SyntaxKind.LastFutureReservedWord: {} break;
            // case ts.SyntaxKind.FirstTypeNode: {} break;
            // case ts.SyntaxKind.LastTypeNode: {} break;
            // case ts.SyntaxKind.FirstPunctuation: {} break;
            // case ts.SyntaxKind.LastPunctuation: {} break;
            // case ts.SyntaxKind.FirstToken: {} break;
            // case ts.SyntaxKind.LastToken: {} break;
            // case ts.SyntaxKind.FirstTriviaToken: {} break;
            // case ts.SyntaxKind.LastTriviaToken: {} break;
            // case ts.SyntaxKind.FirstLiteralToken: {} break;
            // case ts.SyntaxKind.LastLiteralToken: {} break;
            // case ts.SyntaxKind.FirstTemplateToken: {} break;
            // case ts.SyntaxKind.LastTemplateToken: {} break;
            // case ts.SyntaxKind.FirstBinaryOperator: {} break;
            // case ts.SyntaxKind.LastBinaryOperator: {} break;
            // case ts.SyntaxKind.FirstNode: {} break;
            // case ts.SyntaxKind.FirstJSDocNode: {} break;
            // case ts.SyntaxKind.LastJSDocNode: {} break;
            // case ts.SyntaxKind.FirstJSDocTagNode: {} break;
            // case ts.SyntaxKind.LastJSDocTagNode: {} break;
            default: {
                this.logWarning(`Unhandled SyntaxKind <b>${ts.SyntaxKind[syntaxNode.kind]}</b>`, this.location(atSymbol));
                return `<UNHANDLED SyntaxKind: ${ts.SyntaxKind[syntaxNode.kind]}>`;
            }
        }
        // translate typescript typeNode into a haxe type (probably just a string for this version); i.e.
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

        if (typeAliasDeclarations.length === 1) {
            typeKind = new TDAlias(this.convertSyntaxType(typeAliasDeclarations[0], symbol, exportRoot));
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
        // @! if the exportRoot is a file export then the package path should be also determined by file path (relative to root)
        let symbolPath = TSUtil.getSymbolPath(symbol, exportRoot);

        // check if it's a built-in
        if (symbol.valueDeclaration != null) {
            let sourceFile = symbol.valueDeclaration.getSourceFile();
            let isDefaultLib = sourceFile.hasNoDefaultLib;
            if (isDefaultLib) {
                switch (symbol.escapedName) {
                    case 'Array': return ['Array'];
                    case 'Map': return ['js.lib.Map'];
                    case 'String': return ['String'];
                    // @! should search js.lib to find a matching built-in
                    default: {
                        this.logWarning(`<red>Unhandled built-in symbol <b>${symbol.escapedName}</b></>`);
                        return ['Any'];
                    }
                }
            }
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