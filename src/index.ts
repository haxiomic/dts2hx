import * as ts from 'typescript';
import * as path from 'path';
import * as fs from 'fs';
import * as util from 'util';
import Terminal from './Terminal';
import Debug from './Debug';
import ProcessFileQueue from './ProcessFileQueue';
import { TSUtil } from './TSUtil';
import { ExternGenerator } from './ExternGenerator';

// lazy log aliases
let error = Terminal.error.bind(Terminal);
let indent = Debug.getIndent.bind(Debug);

let outputDirectory = 'output';

// sometimes a module does not have any global exports, in which case it can only be accessed via import ... '$module-name'
// setting this to true will generated externs that use @:jsRequire()
// these are symbols that are exported from a sourceFile
let generateSourceFileExports = false;

// logging options
let logVerboseSymbolWalkEnabled = false;
let logWarnSymbolWalkEnabled = true;

let logGen = true;
let logGenVerboseEnabled = logGen && false;
let logGenWarningsEnabled = logGen && true;
let logGenErrorsEnabled = logGen && true;

let logSavedFilesEnabled = false;

/**
 * Aim is to be able to do `haxelib run dts2hx install @types/three` and have it pull three.js from definitely typed and install it into haxelib as @types-three
 * Pulling any dependent types that are referenced
 */

/*
Bugs:
    - When processing lib, we get things like
        ```
        package lib.ts.ts.server.protocol;

        @:native('ts.ts.server.protocol.ApplicableRefactorInfo')
        interface ApplicableRefactorInfo {}
        ```
    - So we might have a bug in TSUtils.getSymbolPath
*/

generateHaxeExterns('test-definitions/edge-cases', {});
// generateHaxeExterns('test-definitions/templates/module-class', {});
// generateHaxeExterns('test-definitions/templates/module', {});
// generateHaxeExterns('test-definitions/templates/module-plugin', {});
// generateHaxeExterns('test-definitions/templates/global', {});
// generateHaxeExterns('test-definitions/templates/global-modifying-module', {});
// generateHaxeExterns('test-definitions/templates/global-plugin', {});
// generateHaxeExterns('node_modules/typescript/lib/typescript.d.ts', {});
// generateHaxeExterns('node_modules/typescript/lib', {});
// generateHaxeExterns('node_modules/typescript/lib/lib.d.ts', {});
// generateHaxeExterns(path.join('test-definitions/node_modules/@types', 'dat.gui'), {});
// generateHaxeExterns(path.join('test-definitions/node_modules/@types', 'three'), {});
// generateHaxeExterns(path.join('test-definitions/node_modules/@types', 'node'), {});
// generateHaxeExterns(path.join('test-definitions/node_modules/@types', 'big.js'), {});

function generateHaxeExterns(definitionsPath: string, options: ts.CompilerOptions) {
    // determine root definition file(s) from definitionsPath, favoring index.d.ts if one exists
    let definitionRoots: Array<string>;
    let definitionName: string;

    if (isFile(definitionsPath)) {
        definitionRoots = [definitionsPath];
        definitionName = path.basename(definitionsPath).split('.').shift()!;
    } else if (isDirectory(definitionsPath)) {
        // check for an index.d.ts file
        let indexPath = path.join(definitionsPath, 'index.d.ts');
        definitionName = path.basename(definitionsPath);

        if (fs.existsSync(indexPath)) {
            definitionRoots = [indexPath];
        } else {
            // process all .d.ts files within the directory and subdirectories 
            Terminal.warn(`No index.d.ts file found in "${definitionsPath}", finding all .d.ts files instead`);
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

    Terminal.log(`Processing definitions <cyan>${definitionName}</> (<i>${definitionsPath}</>)`);

    let program = ts.createProgram(definitionRoots, options);
    let checker = program.getTypeChecker();
    let externGenerator = new ExternGenerator(checker, [definitionName]);
    externGenerator.logVerboseEnabled = logGenVerboseEnabled;
    externGenerator.logWarningsEnabled = logGenWarningsEnabled;

    // processor state
    let _processFileQueue = new ProcessFileQueue();
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
        _processFileQueue.pushFileUnique(sourceFile, false);
    }

    // the process file queue may grow when processSourceFile is called
    while (_processFileQueue.length > 0) {
        let entry = _processFileQueue.shift();
        if (entry != null) {
            processSourceFile(entry.sourceFile, entry.globalExportsOnly, 0);
        }
    }

    if (_processedFiles.size === 0) {
        error(`No definition files were processed – this indicates an error when determining which source files are not external`);
    }

    // save generated haxe externs
    let result = externGenerator.generateHaxeFiles();
    for (let filePath of result.files.keys()) {
        let content = result.files.get(filePath);
        let writePath = path.join(outputDirectory, filePath);
        fs.mkdirSync(path.dirname(writePath), { recursive: true });
        fs.writeFileSync(writePath, content);
        if (logSavedFilesEnabled) Terminal.success(`Saved <b>${writePath}</b>`);
    }

    for (let error of result.errors) {
        if (logGenErrorsEnabled) Terminal.error(error);
    }

    /**
     * Find the source file associated with this symbol
     */
    function processSymbolSourceFile(symbol: ts.Symbol, depth: number) {
        let sourceFile = symbol.valueDeclaration != null ? symbol.valueDeclaration.getSourceFile() : undefined;

        if (sourceFile != null) {
            _processFileQueue.pushFileUnique(sourceFile, true);
        }
    }

    function queueReferencedFiles(sourceFile: ts.SourceFile, depth: number) {
        for (let ref of sourceFile.referencedFiles) {
            let referencedSourceFile = program.getSourceFileFromReference(sourceFile, ref);
            if (referencedSourceFile != null) {
                _processFileQueue.pushFileUnique(referencedSourceFile, true);
            }
        }

        // to handle type and lib references, we can add them as a lib dependency to haxelib.json
        // (and also download and convert them)
        for (let ref of sourceFile.typeReferenceDirectives) {
            logWarnSymbolWalk(`<b>${sourceFile.fileName}</b> references types "<b>${ref.fileName}</>" but this reference is currently unhandled`);
        }

        for (let ref of sourceFile.libReferenceDirectives) {
            logWarnSymbolWalk(`<b>${sourceFile.fileName}</b> references lib "<b>${ref.fileName}</>" but this reference is currently unhandled`);
        }
    }
    
    function processSourceFile(sourceFile: ts.SourceFile, globalExportsOnly: boolean, depth: number) {
        // do not process the same file twice
        if (_processedFiles.has(sourceFile)) return;
        _processedFiles.add(sourceFile);

        logVerboseSymbolWalk(indent(depth) + `<b,LIGHT_CYAN>- ${sourceFile.fileName} -</>`);
        
        // process the `/// <reference path="...">` files
        queueReferencedFiles(sourceFile, depth);

        // for UMD style exports, we can get the sourceFile symbol
        let sourceFileSymbol = sourceFile.symbol;//checker.getSymbolAtLocation(sourceFile);
        if (sourceFileSymbol != null) {
            // only process module if we have global exports OR global exports only is false
            if (!globalExportsOnly || (sourceFileSymbol.globalExports != null && sourceFileSymbol.globalExports.size > 0)) {

                let globalExports = new Array<ts.Symbol>();
                // these are currently only set on sourceFile symbols I believe
                if (sourceFileSymbol.globalExports != null && sourceFileSymbol.globalExports.size > 0) {
                    sourceFileSymbol.globalExports.forEach(s => globalExports.push(s));
                }
                let globalExportsString = globalExports.map(s => s.name).join(', ');

                // export = X
                let exportAlias: ts.Symbol | undefined;
                if (sourceFileSymbol.exports != null) {
                    sourceFileSymbol.exports.forEach(s => {
                        if (s.flags & ts.SymbolFlags.Alias) {
                            exportAlias = s;
                        }
                    });
                }

                // the module can be imported as '$module-folder-name' or used globally if global exports are set
                logVerboseSymbolWalk(indent(depth) + `>> <red>sourceFileSymbol ` +
                    (globalExports.length > 0 ? `exporting as <b>${globalExportsString}</b>` : ``) +
                    (exportAlias ? ` aliasing to <b>${checker.getAliasedSymbol(exportAlias).name}</b>` : '') +
                    `</red>`
                );

                if (exportAlias != null) {
                    logWarnSymbolWalk(`Export alias "${exportAlias.name}${checker.getAliasedSymbol(exportAlias).name}" is not currently handled`);
                }

                processSymbol(sourceFileSymbol, sourceFileSymbol, depth);

                for (let globalExportSymbol of globalExports) {
                    processSymbol(sourceFileSymbol, globalExportSymbol, depth);
                }
            }
        }

        // ambient declarations (these are your non-export declares)
        if (sourceFile.locals != null) {
            logVerboseSymbolWalk(indent(depth) + `>> <red>locals</red>`);
            sourceFile.locals.forEach(s => processSymbol(s, null, depth + 1));
        }

    }

    function processSymbol(
        symbol: ts.Symbol,
        exportRoot: ts.Symbol | null,
        depth: number
    ): void {
        processSymbolSourceFile(symbol, depth);

        // don't log file-exports
        let isSourceFileRoot = exportRoot != null && TSUtil.isSourceFileModuleSymbol(exportRoot);
        let generateExternsForSymbol = !isSourceFileRoot || generateSourceFileExports;
        if (generateExternsForSymbol) {
            try {
                externGenerator.addSymbol(symbol, exportRoot);
            } catch (e) {
                if (logGenErrorsEnabled) Terminal.error(e);
            }

            logVerboseSymbolWalk(indent(depth) + Debug.symbolInfoFormatted(checker, symbol, exportRoot));
        }

        // @! enum members are currently not walked

        // process sub symbols
        {
            // globalExports are currently only set on sourceFile symbols I believe
            if (symbol.globalExports != null && symbol.globalExports.size > 0 && !TSUtil.isSourceFileModuleSymbol(symbol)) {
                logWarnSymbolWalk(`Symbol unexpectedly has global exports ${Debug.symbolInfoFormatted(checker, symbol, exportRoot)}`)
            }

            if (symbol.members != null && symbol.members.size > 0) {
                if (generateExternsForSymbol) logVerboseSymbolWalk(indent(depth) + `<green><b>${symbol.name}</> members</>`);
                symbol.members.forEach(s => processSymbol(s, exportRoot, depth + 1));
            }

            if (symbol.flags & ts.SymbolFlags.Module) {
                if (generateExternsForSymbol) logVerboseSymbolWalk(indent(depth) + `<blue><b>${symbol.name}</> All Exports of Module</>`);
                let allExports = checker.getExportsOfModule(symbol);
                allExports.forEach(s => processSymbol(s, exportRoot, depth + 1));
            }

            // since module exports were handled by checker.getExportsOfModule, this finds just the remaining export types such as export = T
            // and ExportStar, (all export * declarations are collected in an __export symbol by the binder, this is the ExportStar symbol)
            if (symbol.exports != null && symbol.exports.size > 0) {
                let specialExports: Array<ts.Symbol> = [];
                symbol.exports.forEach(s => {
                    if (s.flags & (
                        ts.SymbolFlags.Alias | // `export default DefaultThing` or export = DefaultThing (although these have different behaviors)
                        ts.SymbolFlags.ExportStar | // all the `export * from 'x'` directives end up in this symbol
                        ts.SymbolFlags.ExportValue | // ?
                        ts.SymbolFlags.ModuleExports // `module.exports = x` (for CommonJS exports which actually isn't allowed in type definition files, but it's here for the future)
                    )) {
                        specialExports.push(s);
                    }
                });

                if (specialExports.length > 0) {
                    if (generateExternsForSymbol) logVerboseSymbolWalk(indent(depth) + `<magenta><b>${symbol.name}</> special exports</>`);
                    specialExports.forEach(s => processSymbol(s, exportRoot, depth + 1));
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

function logVerboseSymbolWalk(...args: Array<any>) {
    if (logVerboseSymbolWalkEnabled) {
        Terminal.write(Terminal.format(`<gray>(symbol-walk)${Terminal.lineCaret}</gray> <dim>` + util.format.apply(util, args as any) + '</dim>') + '\n');
    }
}

function logWarnSymbolWalk(...args: Array<any>) {
    if (logWarnSymbolWalkEnabled) {
        Terminal.write(Terminal.format(`<yellow>(symbol-walk)${Terminal.lineCaret}</gray> <b>Warning:</> ` + util.format.apply(util, args as any)) + '\n');
    }
}