import * as ts from 'typescript';
import * as path from 'path';
import * as fs from 'fs';
import Terminal from './Terminal';
import Debug from './Debug';

// lazy log aliases
let log = Terminal.log.bind(Terminal);
let warn = Terminal.warn.bind(Terminal);
let error = Terminal.error.bind(Terminal);
let indent = Debug.getIndent.bind(Debug);

let outputDirectory = 'output';

generateHaxeExterns('test-definitions/edge-cases', {});
// generateHaxeExterns('test-definitions/templates/module-class', {});
// generateHaxeExterns('test-definitions/templates/module', {});
// generateHaxeExterns('test-definitions/templates/global', {});
// generateHaxeExterns('test-definitions/templates/global-modifying-module', {});
// generateHaxeExterns('node_modules/typescript/lib/typescript.d.ts', {});
// generateHaxeExterns('node_modules/typescript/lib', {});
// generateHaxeExterns('node_modules/typescript/lib/lib.d.ts', {});

// generateHaxeExterns(path.join('test-definitions/node_modules/@types', 'dat.gui'), {});
// generateHaxeExterns(path.join('test-definitions/node_modules/@types', 'three'), {});
// generateHaxeExterns(path.join('test-definitions/node_modules/@types', 'node'), {});
// generateHaxeExterns(path.join('test-definitions/node_modules/@types', 'big.js'), {});

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
    
    function processSourceFile(sourceFile: ts.SourceFile, depth: number) {
        // do not process the same file twice
        if (_processedFiles.has(sourceFile)) return;
        _processedFiles.add(sourceFile);

        log(indent(depth) + `<b,LIGHT_CYAN>- ${sourceFile.fileName} -<//>`);
        

        // process the /// <reference path="..."> files
        queueReferencedFiles(sourceFile, depth);

        // source file locals (these are your non-export declares)
        if (sourceFile.locals != null) {
            log(indent(depth) + `>> <red>locals</red>`);
            sourceFile.locals.forEach(s => processSymbol(s, depth + 1));
        }

        // for UMD style exports, we can get the sourceFile symbol
        let sourceFileSymbol = sourceFile.symbol;//checker.getSymbolAtLocation(sourceFile);
        if (sourceFileSymbol != null) {
            let globalExports = new Array<ts.Symbol>();
            // these are currently only set on sourceFile symbols I believe
            if (sourceFileSymbol.globalExports != null && sourceFileSymbol.globalExports.size > 0) {
                sourceFileSymbol.globalExports.forEach(s => globalExports.push(s));
            }

            let globalExportsString = globalExports.map(s => s.name).join(', ');

            log(indent(depth) + `>> <red>sourceFileSymbol ` + (globalExports.length > 0 ? `exporting as <b>${globalExportsString}</b>` : ``) + `</red>`);
            processSymbol(sourceFileSymbol, depth);
        }
    }

    function processSymbol(symbol: ts.Symbol, depth: number): void {
        queueSymbolReferencedFiles(symbol, depth);

        Debug.logSymbol(checker, symbol, depth);

        // @! deterministically insert symbol into haxe externs AST, creating structures as required

        // process sub symbols
        {
            // globalExports are currently only set on sourceFile symbols I believe
            if (symbol.globalExports != null && symbol.globalExports.size > 0) {
                log(indent(depth) + `<green><b>${symbol.name}</> globalExports</>`);
                symbol.globalExports.forEach(s => processSymbol(s, depth + 1));
            }

            if (symbol.members != null && symbol.members.size > 0) {
                log(indent(depth) + `<green><b>${symbol.name}</> members</>`);
                symbol.members.forEach(s => processSymbol(s, depth + 1));
            }

            if (symbol.flags & ts.SymbolFlags.Module) {
                log(indent(depth) + `<blue><b>${symbol.name}</> All Exports of Module</>`);
                let allExports = checker.getExportsOfModule(symbol);
                allExports.forEach(s => processSymbol(s, depth + 1));
            }

            // since module exports were handled by checker.getExportsOfModule, this finds just the remaining export types such as export = T
            // and ExportStar, (all export * declarations are collected in an __export symbol by the binder, this is the ExportStar symbol)
            if (symbol.exports != null && symbol.exports.size > 0) {
                let specialExports: Array<ts.Symbol> = [];
                symbol.exports.forEach(s => {
                    if (s.flags & (
                        ts.SymbolFlags.Alias | // `export default DefaultThing` 
                        ts.SymbolFlags.ExportStar | // all the `export * from 'x'` directives end up in this symbol
                        ts.SymbolFlags.ExportValue | // ?
                        ts.SymbolFlags.ModuleExports // `module.exports = x` (for CommonJS exports which actually isn't allowed in type definition files, but it's here for the future)
                    )) {
                        specialExports.push(s);
                    }
                });

                if (specialExports.length > 0) {
                    log(indent(depth) + `<magenta><b>${symbol.name}</> special exports</>`);
                    specialExports.forEach(s => processSymbol(s, depth + 1));
                }
            }
        }

    }

}

function isFile(path: string) {
    try { return fs.statSync(path).isFile(); } catch (e) { return false; }
}

function isDirectory(path: string) {
    try { return fs.statSync(path).isDirectory(); } catch (e) { return false; }
}