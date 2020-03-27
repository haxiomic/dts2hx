package tool;

import haxe.Json;
import haxe.io.Path;
import js.node.Fs;
import typescript.Ts;

using Lambda;
using StringTools;

/**
	A group roughly maps to a module (since some collections of definitions don't necessarily conform to modules)
**/
typedef DefinitionGroup = {
	name: String,
	files: Array<String>,
}


class TsPackageTools {

	/**
        @throws String
    **/
    public static function findDefinitionGroups(log: Log, path: String): Array<DefinitionGroup> {
        var tag = '<b>[findDefinitionGroups()]</>';
        if (Ts.sys.fileExists(path)) {
            var filename = Path.withoutDirectory(path);
            var groupName: String = if (!path.toLowerCase().endsWith('.d.ts')) {
                log.warn('$tag File path "$path" did not end with .d.ts');
                Path.withoutExtension(filename);
            } else {
                filename.substr(0, filename.length - '.d.ts'.length);
            }
            
            // @! if filename is index.d.ts maybe we should check for a package.json that references this file to get a better guess for name

            log.log('Using filename "<b>$groupName</>" as d.ts group name');
            return [{
                name: groupName,
                files: [path],
            }];
        } else if (Ts.sys.directoryExists(path)) {
            var pathDirname = Path.withoutDirectory(js.node.Path.resolve(path));

            // check for a package.json and return "types"/"typings" field if exists
            var packageJsonPath = Path.join([path, 'package.json']);
            if (Ts.sys.fileExists(packageJsonPath)) {
                log.log('$tag <b>package.json</> found - "<b>$packageJsonPath</>"');

                var error: Null<Any> = null;

                var packageJson = 
                    try Json.parse(Fs.readFileSync(packageJsonPath, {encoding: 'utf8'}))
                    catch (e: Any) {
                        error = e;
                        null;
                    }

                if (packageJson != null) {
                    var types = packageJson.types != null ? packageJson.types : packageJson.typings;

                    if (types != null) {
                        var typesFilePath = Path.join([path, types]);

                        if (!typesFilePath.toLowerCase().endsWith('.d.ts')) {
                            typesFilePath += '.d.ts';
                        }

                        if (Ts.sys.fileExists(typesFilePath)) {
                            log.log('$tag Using package.json specified types - "<b>$typesFilePath</>"');

                            var name: String = if (packageJson.name != null) {
                                log.log('$tag Using package.json specified name "<b>${packageJson.name}</>" for d.ts group name');
                                packageJson.name;
                            } else {
                                pathDirname;
                            }

                            if (!typesFilePath.toLowerCase().endsWith('.d.ts')) {
                                log.warn('$tag File path "$typesFilePath" in did not end with .d.ts (<i,dim>$packageJsonPath</i>)');
                            }

                            return [{
                                name: name,
                                files: [typesFilePath],
                            }];
                        }
                    }
                }

                log.log('$tag No types field found in package.json ${error != null ? '<i,red>($error)</>' : ''}');
            }

            // check for an index.d.ts, if found return that
            var indexPath = Path.join([path, 'index.d.ts']);
            if (Ts.sys.fileExists(indexPath)) {
                log.warn('$tag <b>index.d.ts</> found but no package.json with <i>types</> field; using directory name "<b>$pathDirname</>" as d.ts group name');
                return [{
                    name: pathDirname,
                    files: [indexPath],
                }];
            }

            log.log('$tag Finding .d.ts files within $path');
            var localDtsFiles = Ts.sys.readDirectory(path, [typescript.ts.Extension.Dts], js.Lib.undefined, js.Lib.undefined, 1);
            var subDirs = Fs.readdirSync(path).map(p -> Path.join([path, p])).filter(p -> Ts.sys.directoryExists(p));

            var localDefinitionGroup = {
                name: pathDirname,
                files: localDtsFiles,
            }

            var subgroups = [for (dir in subDirs) {
                findDefinitionGroups(log, dir);
            }].flatten();

            return if (localDtsFiles.length > 0) {
                subgroups.concat([localDefinitionGroup]);
            } else subgroups;
        } else {
            throw 'No such file or directory "<b>$path</>"';
        }
    }
	
}