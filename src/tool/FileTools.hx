package tool;

import js.node.Fs;
import haxe.io.Path;

class FileTools {

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
			if (currentPath == '/') continue;
			if (Fs.existsSync(currentPath) && Fs.statSync(currentPath).isDirectory()) continue;
			if (!Fs.existsSync(currentPath)) {
				Fs.mkdirSync(currentPath);
			} else {
				throw 'Could not create directory $currentPath because a file already exists at this path';
			}
		}
	}

}