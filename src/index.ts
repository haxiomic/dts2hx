import * as ts from 'typescript';
import * as path from 'path';
import * as fs from 'fs';
import Terminal from './Terminal';
import { ExternGenerator } from './ExternGenerator';
import { SymbolWalk } from './SymbolWalk';

let outputDirectory = 'output';

// sometimes a module does not have any global exports, in which case it can only be accessed via import ... '$module-name'
// setting this to true will generated externs that use @:jsRequire()
// these are symbols that are exported from a sourceFile
let generateSourceFileExports = false;

// logging options
let logVerboseSymbolWalkEnabled = false;
let logWarnSymbolWalkEnabled = true;

let logGen = true;
let logGenVerboseEnabled = logGen && true;
let logGenWarningsEnabled = logGen && true;
let logGenErrorsEnabled = logGen && true;

let logSavedFilesEnabled = false;
let logWarnOverwriteFilesEnabled = false;

/**
 * Aim is to be able to do `haxelib run dts2hx install @types/three` and have it pull three.js from definitely typed and install it into haxelib as @types-three
 * Pulling any dependent types that are referenced
 */

/*
Bugs:
    - pixi.js has two modules classes, one called PIXI and another called Pixi
        - The problem is names are case-sensitive but macos filesystems are not
        - To resolve, we need to detect the collision and rename
    - When processing lib, we get things like
        ```
        package lib.ts.ts.server.protocol;

        @:native('ts.ts.server.protocol.ApplicableRefactorInfo')
        interface ApplicableRefactorInfo {}
        ```
    - So we might have a bug in TSUtils.getSymbolPath
*/

try {

// generateHaxeExterns('test-definitions/edge-cases', {});
// generateHaxeExterns('test-definitions/templates/module-class', {});
// generateHaxeExterns('test-definitions/templates/module', {});
// generateHaxeExterns('test-definitions/templates/module-plugin', {});
// generateHaxeExterns('test-definitions/templates/global', {});
// generateHaxeExterns('test-definitions/templates/global-modifying-module', {});
// generateHaxeExterns('test-definitions/templates/global-plugin', {});
// generateHaxeExterns('test-definitions/typescript', {});
// generateHaxeExterns('node_modules/typescript/lib/typescript.d.ts', {});
generateHaxeExterns('node_modules/typescript/lib', {});
// generateHaxeExterns('node_modules/typescript/lib/lib.d.ts', {});

// ** to use the following, run `npm install` in test-definitions/ ** //

// generateHaxeExterns(path.join('test-definitions/node_modules/@types', 'jquery'), {});
// generateHaxeExterns(path.join('test-definitions/node_modules/@types', 'dat.gui'), {});
// generateHaxeExterns(path.join('test-definitions/node_modules/@types', 'three'), {});
// generateHaxeExterns(path.join('test-definitions/node_modules/@types', 'node'), {});
// generateHaxeExterns(path.join('test-definitions/node_modules/@types', 'big.js'), {});
// generateHaxeExterns(path.join('test-definitions/node_modules/@types', 'pixi.js'), {});
// generateHaxeExterns('test-definitions/node_modules/babylonjs', {});

} catch (e) {
    Terminal.error(e);
    process.exit(1);
}

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

            if (files.length > 0) {
                Terminal.warn(`\tfound: ${definitionRoots.join(', ')}`);
            }
        }
    } else if (!fs.existsSync(definitionsPath)) {
        throw `Path doesn't exist "${definitionsPath}"`;
    } else {
        throw `Could not handle path "${definitionsPath}"`;
    }

    if (definitionRoots.length === 0) {
        throw `No typescript definition files (.d.ts) found at "${definitionsPath}"`;
    }

    Terminal.log(`Processing definitions <cyan>${definitionName}</> (<i>${definitionsPath}</>)`);

    let program = ts.createProgram(definitionRoots, options);
    let typeChecker = program.getTypeChecker();
    let externGenerator = new ExternGenerator(
        program.getTypeChecker(),
        [definitionName],
        {
            logVerbose: logGenVerboseEnabled,
            logWarnings: logGenWarningsEnabled,
        }
    );

    SymbolWalk.walk(
        program,
        // for each symbol
        (symbol, exportRoot) => {
            externGenerator.addSymbol(symbol, exportRoot)
        },
        // for each library reference (experimental)
        (refFilename: string, sourceFile: ts.SourceFile) => {
            generateHaxeExterns(path.join(path.dirname(path.dirname(definitionRoots[0])), refFilename), options)
        },
        {
            logVerbose: logVerboseSymbolWalkEnabled,
            logWarnings: logWarnSymbolWalkEnabled,
        }
    );

    // save generated haxe externs
    let result = externGenerator.generateHaxeFiles();
    for (let filePath of result.files.keys()) {
        let content = result.files.get(filePath);
        let writePath = path.join(outputDirectory, filePath);
        fs.mkdirSync(path.dirname(writePath), { recursive: true });
        if (logWarnOverwriteFilesEnabled && fs.existsSync(writePath)) {
            Terminal.warn(`Overwriting <b>${writePath}</b>`);
        }
        fs.writeFileSync(writePath, content);
        if (logSavedFilesEnabled) Terminal.success(`Saved <b>${writePath}</b>`);
    }

    for (let error of result.errors) {
        if (logGenErrorsEnabled) Terminal.error(error);
    }

}

function isFile(path: string) {
    try { return fs.statSync(path).isFile(); } catch (e) { return false; }
}

function isDirectory(path: string) {
    try { return fs.statSync(path).isDirectory(); } catch (e) { return false; }
}