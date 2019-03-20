import * as ts from 'typescript';
import * as path from 'path';
import * as fs from 'fs';
import Terminal from './Terminal';

// lazy log aliases
let log = Terminal.log.bind(Terminal);
let warn = Terminal.warn.bind(Terminal);
let error = Terminal.error.bind(Terminal);

let outputDirectory = 'output';

// generateHaxeExterns('test-definitions/edge-cases', {});
// generateHaxeExterns('test-definitions/templates/module-class', {});
// generateHaxeExterns('test-definitions/templates/module', {});
// generateHaxeExterns('test-definitions/templates/global', {});
// generateHaxeExterns('test-definitions/templates/global-modifying-module', {});
// generateHaxeExterns('node_modules/typescript/lib/typescript.d.ts', {});
// generateHaxeExterns('node_modules/typescript/lib', {});
// generateHaxeExterns('node_modules/typescript/lib/lib.d.ts', {});

generateHaxeExterns(path.join('test-definitions/node_modules/@types', 'dat.gui'), {});
generateHaxeExterns(path.join('test-definitions/node_modules/@types', 'three'), {});
// generateHaxeExterns(path.join('test-definitions/node_modules/@types', 'node'), {});
generateHaxeExterns(path.join('test-definitions/node_modules/@types', 'big.js'), {});

function generateHaxeExterns(definitionsPath: string, options: ts.CompilerOptions) {
    Terminal.log(`Processing <b>${definitionsPath}</b>`);

    // create output directory
    fs.mkdirSync(outputDirectory, { recursive: true });
    
    // determine root definition file(s) from definitionsPath, favoring index.d.ts if one exists
    let definitionRoots: Array<string>;

    if (isFile(definitionsPath)) {
        definitionRoots = [definitionsPath];
    } else if (isDirectory(definitionsPath)) {

        // check for an index.d.ts file
        let indexPath = path.join(definitionsPath, 'index.d.ts');
        if (fs.existsSync(indexPath)) {
            definitionRoots = [indexPath];
        } else {
            // process all .d.ts files within the directory and subdirectories 
            warn(`No index.d.ts file found in "${definitionsPath}", finding all .d.ts files instead`);
            definitionRoots = [];

            let files = fs.readdirSync(definitionsPath);
            for (let filename of files) {
                if (filename.match(/\.d\.ts$/i)) {
                    definitionRoots.push(path.join(definitionsPath, filename));
                }
            }
        }
    } else if (!fs.existsSync(definitionsPath)) {
        Terminal.error(`Path doesn't exist "${definitionsPath}"`);
        process.exit(1);
        return;
    } else {
        Terminal.error(`Could not handle path "${definitionsPath}"`);
        process.exit(1);
        return;
    }

    if (definitionRoots.length === 0) {
        error(`No typescript definition files (.d.ts) found at "${definitionsPath}"`);
        process.exit(1);
        return;
    }

    let program = ts.createProgram(definitionRoots, options);
    let checker = program.getTypeChecker();

    // processor state
    let _processFileQueue = new Array<ts.SourceFile>();
    let _processedFiles = new Set<ts.SourceFile>();
    let _processReferenceFilesSeen = new Set<ts.SourceFile>();

    for (let sourceFile of program.getSourceFiles()) {
        // only directly process explicitly specified files
        if (program.getRootFileNames().indexOf(sourceFile.fileName) === -1) {
            continue;
        }

        // reject non-declaration files because otherwise assumptions are broken
        if (!sourceFile.isDeclarationFile) {
            Terminal.error(`Expected declaration file (${sourceFile})`);
            ts.sys.exit(1);
            return;
        }
        
        // let isExternal = program.isSourceFileDefaultLibrary(sourceFile) || program.isSourceFileFromExternalLibrary(sourceFile);
        // if (isExternal) continue;

        // add this file to the process queue
        _processFileQueue.push(sourceFile);
    }

    // the process file queue may grow when processSourceFile is called
    while (_processFileQueue.length > 0) {
        let sourceFile = _processFileQueue.shift();
        if (sourceFile != null) {
            processSourceFile(sourceFile, 0);
        }
    }

    if (_processedFiles.size === 0) {
        error(`No definition files were processed – this indicates an error when determining which source files are not external`);
    }
    
    function processSourceFile(sourceFile: ts.SourceFile, depth: number) {
        // do not process the same file twice
        if (_processedFiles.has(sourceFile)) return;
        _processedFiles.add(sourceFile);

        log(getIndent(depth) + `<b,LIGHT_CYAN>- ${sourceFile.fileName} -<//>`);
        // @! lib reference directives 

        queueReferencedFiles(sourceFile, depth);

        // source file locals (these are your non-export declares)
        if (sourceFile.locals != null) {
            log(getIndent(depth) + `>> <red>locals</red>`);
            sourceFile.locals.forEach(s => processSymbol(s, depth + 1));
        }

        // for UMD style exports, we can get the sourceFile symbol
        let sourceFileSymbol = sourceFile.symbol;//checker.getSymbolAtLocation(sourceFile);
        if (sourceFileSymbol != null) {
            log(getIndent(depth) + `>> <red>sourceFileSymbol</red>`);
            processSymbol(sourceFileSymbol, depth);
        }
    }

    function processSymbol(symbol: ts.Symbol, depth: number): void {
        queueSymbolReferencedFiles(symbol, depth);

        logSymbol(symbol, depth);

        // @! deterministically insert symbol into haxe externs AST, creating structures as required

        // these are currently only set on sourceFile symbols I believe
        if (symbol.globalExports != null && symbol.globalExports.size > 0) {
            log(getIndent(depth) + `<green><b>${symbol.name}</> globalExports</>`);
            symbol.globalExports.forEach(s => processSymbol(s, depth + 1));
        }

        if (symbol.members != null && symbol.members.size > 0) {
            log(getIndent(depth) + `<green><b>${symbol.name}</> members</>`);
            symbol.members.forEach(s => processSymbol(s, depth + 1));
        }

        if (symbol.flags & ts.SymbolFlags.Module) {
            log(getIndent(depth) + `<blue><b>${symbol.name}</> All Exports of Module</>`);
            let allExports = checker.getExportsOfModule(symbol);
            allExports.forEach(s => processSymbol(s, depth + 1));
        }

        // since module exports were handled by checker.getExportsOfModule, this finds just the remaining export types such as export = T
        // and ExportStar, (all export * declarations are collected in an __export symbol by the binder, this is the ExportStar symbol)
        if (symbol.exports != null && symbol.exports.size > 0) {
            let specialExports: Array<ts.Symbol> = [];
            symbol.exports.forEach(s => {
                if (s.flags & (
                    ts.SymbolFlags.Alias | // for export default DefaultThing; 
                    ts.SymbolFlags.ExportStar |
                    ts.SymbolFlags.ExportValue |
                    ts.SymbolFlags.ModuleExports
                )) {
                    specialExports.push(s);
                }
            });

            if (specialExports.length > 0) {
                log(getIndent(depth) + `<magenta><b>${symbol.name}</> special exports</>`);
                specialExports.forEach(s => processSymbol(s, depth + 1));
            }
        }
   
    }

    /**
     * Find the source file associated with this symbol
     */
    function queueSymbolReferencedFiles(symbol: ts.Symbol, depth: number) {
        let sourceFile = symbol.valueDeclaration != null ? symbol.valueDeclaration.getSourceFile() : undefined;

        if (sourceFile != null) {
            queueReferencedFiles(sourceFile, depth);
        }
    }

    function queueReferencedFiles(sourceFile: ts.SourceFile, depth: number) {
        for (let ref of sourceFile.referencedFiles) {
            let referencedSourceFile = program.getSourceFileFromReference(sourceFile, ref);
            if (referencedSourceFile != null) {
                if (_processFileQueue.indexOf(referencedSourceFile) === -1) {
                    _processFileQueue.push(referencedSourceFile);
                }
            }
        }

        for (let ref of sourceFile.typeReferenceDirectives) {
            warn(`<b>${sourceFile.fileName}</b> references types "<b>${ref.fileName}</>" but this reference is currently unhandled`);
        }

        for (let ref of sourceFile.libReferenceDirectives) {
            warn(`<b>${sourceFile.fileName}</b> references lib "<b>${ref.fileName}</>" but this reference is currently unhandled`);
        }
    }

    function logSymbol(s: ts.Symbol, depth: number) {
        log(getIndent(depth) + '<b>' + s.getName(), '</b>', '<i,dim>', getKeyActiveFlags(s.getFlags()).join(', '), '<//>');
    }

}

function getIndent(depth: number) {
    let indent = '';
    for (let i = 0;i < depth; i++) indent += '\t';
    return indent;
}

function getNodeLocation(node: ts.Node) {
    return node.getSourceFile().getLineAndCharacterOfPosition(node.getStart());
}

function getPrintableLocation(node: ts.Node) {
    let { line, character } = getNodeLocation(node);
    return `${node.getSourceFile().fileName}:${line}${character > 0 ? ':0' : ''}`;
}

/**
 * # SymbolFlag Notes
 * FunctionScopedVariable  = 1 << 0,   // Variable (var) or parameter
 * BlockScopedVariable     = 1 << 1,   // A block-scoped variable (let or const)
 * Property                = 1 << 2,   // Property or enum member
 * EnumMember              = 1 << 3,   // Enum member
 * Function                = 1 << 4,   // Function
 * Class                   = 1 << 5,   // Class
 * Interface               = 1 << 6,   // Interface
 * ConstEnum               = 1 << 7,   // Const enum
 * RegularEnum             = 1 << 8,   // Enum
 * ValueModule             = 1 << 9,   // Instantiated module
 * NamespaceModule         = 1 << 10,  // Uninstantiated module
 * TypeLiteral             = 1 << 11,  // Type Literal or mapped type
 * ObjectLiteral           = 1 << 12,  // Object Literal
 * Method                  = 1 << 13,  // Method
 * Constructor             = 1 << 14,  // Constructor
 * GetAccessor             = 1 << 15,  // Get accessor
 * SetAccessor             = 1 << 16,  // Set accessor
 * Signature               = 1 << 17,  // Call, construct, or index signature
 * TypeParameter           = 1 << 18,  // Type parameter
 * TypeAlias               = 1 << 19,  // Type alias
 * ExportValue             = 1 << 20,  // Exported value marker (see comment in declareModuleMember in binder)
 * Alias                   = 1 << 21,  // An alias for another symbol (see comment in isAliasSymbolDeclaration in checker)
 * Prototype               = 1 << 22,  // Prototype property (no source representation)
 * ExportStar              = 1 << 23,  // Export * declaration
 * Optional                = 1 << 24,  // Optional property
 * Transient               = 1 << 25,  // Transient symbol (created during type check)
 * Assignment              = 1 << 26,  // Assignment treated as declaration (eg `this.prop = 1`)
 * ModuleExports           = 1 << 27,  // Symbol for CommonJS `module` of `module.exports`
 */

function getKeyActiveFlags(value: ts.SymbolFlags) {
    let active = new Array<string>();
    if ((value & ts.SymbolFlags.None) !== 0) active.push('None');
    if ((value & ts.SymbolFlags.FunctionScopedVariable) !== 0) active.push('FunctionScopedVariable');
    if ((value & ts.SymbolFlags.BlockScopedVariable) !== 0) active.push('BlockScopedVariable');
    if ((value & ts.SymbolFlags.Property) !== 0) active.push('Property');
    if ((value & ts.SymbolFlags.EnumMember) !== 0) active.push('EnumMember');
    if ((value & ts.SymbolFlags.Function) !== 0) active.push('Function');
    if ((value & ts.SymbolFlags.Class) !== 0) active.push('Class');
    if ((value & ts.SymbolFlags.Interface) !== 0) active.push('Interface');
    if ((value & ts.SymbolFlags.ConstEnum) !== 0) active.push('ConstEnum');
    if ((value & ts.SymbolFlags.RegularEnum) !== 0) active.push('RegularEnum');
    if ((value & ts.SymbolFlags.ValueModule) !== 0) active.push('ValueModule');
    if ((value & ts.SymbolFlags.NamespaceModule) !== 0) active.push('NamespaceModule');
    if ((value & ts.SymbolFlags.TypeLiteral) !== 0) active.push('TypeLiteral');
    if ((value & ts.SymbolFlags.ObjectLiteral) !== 0) active.push('ObjectLiteral');
    if ((value & ts.SymbolFlags.Method) !== 0) active.push('Method');
    if ((value & ts.SymbolFlags.Constructor) !== 0) active.push('Constructor');
    if ((value & ts.SymbolFlags.GetAccessor) !== 0) active.push('GetAccessor');
    if ((value & ts.SymbolFlags.SetAccessor) !== 0) active.push('SetAccessor');
    if ((value & ts.SymbolFlags.Signature) !== 0) active.push('Signature');
    if ((value & ts.SymbolFlags.TypeParameter) !== 0) active.push('TypeParameter');
    if ((value & ts.SymbolFlags.TypeAlias) !== 0) active.push('TypeAlias');
    if ((value & ts.SymbolFlags.ExportValue) !== 0) active.push('ExportValue');
    if ((value & ts.SymbolFlags.Alias) !== 0) active.push('Alias');
    if ((value & ts.SymbolFlags.Prototype) !== 0) active.push('Prototype');
    if ((value & ts.SymbolFlags.ExportStar) !== 0) active.push('ExportStar');
    if ((value & ts.SymbolFlags.Optional) !== 0) active.push('Optional');
    if ((value & ts.SymbolFlags.Transient) !== 0) active.push('Transient');
    if ((value & ts.SymbolFlags.Assignment) !== 0) active.push('Assignment');
    if ((value & ts.SymbolFlags.ModuleExports) !== 0) active.push('ModuleExports');
    if ((value & ts.SymbolFlags.Enum) !== 0) active.push('Enum');
    if ((value & ts.SymbolFlags.Variable) !== 0) active.push('Variable');
    if ((value & ts.SymbolFlags.Value) !== 0) active.push('Value');
    if ((value & ts.SymbolFlags.Type) !== 0) active.push('Type');
    if ((value & ts.SymbolFlags.Namespace) !== 0) active.push('Namespace');
    if ((value & ts.SymbolFlags.Module) !== 0) active.push('Module');
    if ((value & ts.SymbolFlags.Accessor) !== 0) active.push('Accessor');

    if ((value & ts.SymbolFlags.ModuleMember) !== 0) active.push('ModuleMember');
    if ((value & ts.SymbolFlags.PropertyOrAccessor) !== 0) active.push('PropertyOrAccessor');
    if ((value & ts.SymbolFlags.ClassMember) !== 0) active.push('ClassMember');

    if (active.length == 0) {
        return [`<none (${value})>`];
    } else {
        return active;
    }
}

function getActiveFlags(value: ts.SymbolFlags) {
    let active = new Array<string>();
    if ((value & ts.SymbolFlags.None) !== 0) active.push('None');
    if ((value & ts.SymbolFlags.FunctionScopedVariable) !== 0) active.push('FunctionScopedVariable');
    if ((value & ts.SymbolFlags.BlockScopedVariable) !== 0) active.push('BlockScopedVariable');
    if ((value & ts.SymbolFlags.Property) !== 0) active.push('Property');
    if ((value & ts.SymbolFlags.EnumMember) !== 0) active.push('EnumMember');
    if ((value & ts.SymbolFlags.Function) !== 0) active.push('Function');
    if ((value & ts.SymbolFlags.Class) !== 0) active.push('Class');
    if ((value & ts.SymbolFlags.Interface) !== 0) active.push('Interface');
    if ((value & ts.SymbolFlags.ConstEnum) !== 0) active.push('ConstEnum');
    if ((value & ts.SymbolFlags.RegularEnum) !== 0) active.push('RegularEnum');
    if ((value & ts.SymbolFlags.ValueModule) !== 0) active.push('ValueModule');
    if ((value & ts.SymbolFlags.NamespaceModule) !== 0) active.push('NamespaceModule');
    if ((value & ts.SymbolFlags.TypeLiteral) !== 0) active.push('TypeLiteral');
    if ((value & ts.SymbolFlags.ObjectLiteral) !== 0) active.push('ObjectLiteral');
    if ((value & ts.SymbolFlags.Method) !== 0) active.push('Method');
    if ((value & ts.SymbolFlags.Constructor) !== 0) active.push('Constructor');
    if ((value & ts.SymbolFlags.GetAccessor) !== 0) active.push('GetAccessor');
    if ((value & ts.SymbolFlags.SetAccessor) !== 0) active.push('SetAccessor');
    if ((value & ts.SymbolFlags.Signature) !== 0) active.push('Signature');
    if ((value & ts.SymbolFlags.TypeParameter) !== 0) active.push('TypeParameter');
    if ((value & ts.SymbolFlags.TypeAlias) !== 0) active.push('TypeAlias');
    if ((value & ts.SymbolFlags.ExportValue) !== 0) active.push('ExportValue');
    if ((value & ts.SymbolFlags.Alias) !== 0) active.push('Alias');
    if ((value & ts.SymbolFlags.Prototype) !== 0) active.push('Prototype');
    if ((value & ts.SymbolFlags.ExportStar) !== 0) active.push('ExportStar');
    if ((value & ts.SymbolFlags.Optional) !== 0) active.push('Optional');
    if ((value & ts.SymbolFlags.Transient) !== 0) active.push('Transient');
    if ((value & ts.SymbolFlags.Assignment) !== 0) active.push('Assignment');
    if ((value & ts.SymbolFlags.ModuleExports) !== 0) active.push('ModuleExports');
    if ((value & ts.SymbolFlags.Enum) !== 0) active.push('Enum');
    if ((value & ts.SymbolFlags.Variable) !== 0) active.push('Variable');
    if ((value & ts.SymbolFlags.Value) !== 0) active.push('Value');
    if ((value & ts.SymbolFlags.Type) !== 0) active.push('Type');
    if ((value & ts.SymbolFlags.Namespace) !== 0) active.push('Namespace');
    if ((value & ts.SymbolFlags.Module) !== 0) active.push('Module');
    if ((value & ts.SymbolFlags.Accessor) !== 0) active.push('Accessor');
    if ((value & ts.SymbolFlags.FunctionScopedVariableExcludes) !== 0) active.push('FunctionScopedVariableExcludes');
    if ((value & ts.SymbolFlags.BlockScopedVariableExcludes) !== 0) active.push('BlockScopedVariableExcludes');
    if ((value & ts.SymbolFlags.ParameterExcludes) !== 0) active.push('ParameterExcludes');
    if ((value & ts.SymbolFlags.PropertyExcludes) !== 0) active.push('PropertyExcludes');
    if ((value & ts.SymbolFlags.EnumMemberExcludes) !== 0) active.push('EnumMemberExcludes');
    if ((value & ts.SymbolFlags.FunctionExcludes) !== 0) active.push('FunctionExcludes');
    if ((value & ts.SymbolFlags.ClassExcludes) !== 0) active.push('ClassExcludes');
    if ((value & ts.SymbolFlags.InterfaceExcludes) !== 0) active.push('InterfaceExcludes');
    if ((value & ts.SymbolFlags.RegularEnumExcludes) !== 0) active.push('RegularEnumExcludes');
    if ((value & ts.SymbolFlags.ConstEnumExcludes) !== 0) active.push('ConstEnumExcludes');
    if ((value & ts.SymbolFlags.ValueModuleExcludes) !== 0) active.push('ValueModuleExcludes');
    if ((value & ts.SymbolFlags.NamespaceModuleExcludes) !== 0) active.push('NamespaceModuleExcludes');
    if ((value & ts.SymbolFlags.MethodExcludes) !== 0) active.push('MethodExcludes');
    if ((value & ts.SymbolFlags.GetAccessorExcludes) !== 0) active.push('GetAccessorExcludes');
    if ((value & ts.SymbolFlags.SetAccessorExcludes) !== 0) active.push('SetAccessorExcludes');
    if ((value & ts.SymbolFlags.TypeParameterExcludes) !== 0) active.push('TypeParameterExcludes');
    if ((value & ts.SymbolFlags.TypeAliasExcludes) !== 0) active.push('TypeAliasExcludes');
    if ((value & ts.SymbolFlags.AliasExcludes) !== 0) active.push('AliasExcludes');
    if ((value & ts.SymbolFlags.ModuleMember) !== 0) active.push('ModuleMember');
    if ((value & ts.SymbolFlags.ExportHasLocal) !== 0) active.push('ExportHasLocal');
    if ((value & ts.SymbolFlags.BlockScoped) !== 0) active.push('BlockScoped');
    if ((value & ts.SymbolFlags.PropertyOrAccessor) !== 0) active.push('PropertyOrAccessor');
    if ((value & ts.SymbolFlags.ClassMember) !== 0) active.push('ClassMember');

    if (active.length == 0) {
        return [`<none (${value})>`];
    } else {
        return active;
    }
}

function isFile(path: string) {
    try {
        return fs.statSync(path).isFile();
    } catch (e) {
        return false;
    }
}

function isDirectory(path: string) {
    try {
        return fs.statSync(path).isDirectory();
    } catch (e) {
        return false;
    }
}