package tool;

import sys.FileSystem;
import js.node.Fs;
import haxe.io.Path;

using StringTools;

class FileTools {

	static public function cwdRelativeFilePath(path: String) {
		return relativePath(Sys.getCwd(), path);
	}

	/**
		Prefix './' if the path is relative

		- `.example` -> `./.example`
		- `./example` -> `./example`
		- `/example` -> `/example`
		- `example` -> `./example`
	**/
	static public function withRelativePrefix(path: String) {
		// prefix a ./ when looking up relative paths
		return if (!haxe.io.Path.isAbsolute(path) && !path.startsWith('./') && !path.startsWith('.\\')) {
			'./' + path;
		} else {
			path;
		}
	}

	static public function relativePath(relativeTo: String, path: String) {
		// make both absolute
		path = Path.removeTrailingSlashes(FileSystem.absolutePath(path));
		relativeTo = Path.removeTrailingSlashes(FileSystem.absolutePath(relativeTo));

		var aPath = path.split('/');
		var aRelativeTo = relativeTo.split('/');

		// find shared part of path
		var matchesUpToIndex = 0;
		for (i in 0...aRelativeTo.length) {
			if (aPath[i] == aRelativeTo[i]) {
				matchesUpToIndex = i;
			} else {
				break;
			}
		}

		return [for (_ in 0...(aRelativeTo.length - 1) - matchesUpToIndex) '..']
			.concat(aPath.slice(matchesUpToIndex + 1))
			.join('/');
	}


	/**
		Ensures directory structure exists for a given path
		(Same behavior as mkdir -p)
		@throws Any
	**/
	static public function touchDirectoryPath(path: String) {
		var directories = Path.normalize(path).split('/');
		var currentDirectories = [];
		for (directory in directories) {
			currentDirectories.push(directory);
			var currentPath = currentDirectories.join('/');
			if (currentPath == '/' || currentPath == '') continue;
			if (Fs.existsSync(currentPath) && Fs.statSync(currentPath).isDirectory()) continue;
			if (!Fs.existsSync(currentPath)) {
				Fs.mkdirSync(currentPath);
			} else {
				throw 'Could not create directory $currentPath because a file already exists at this path';
			}
		}
	}

}