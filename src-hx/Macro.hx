import sys.FileSystem;
import haxe.Json;
import haxe.io.Path;

class Macro {

    macro static public function getLocalPackageJsonVersion() {
        var packageJsonPath = Path.join([Sys.getCwd(), 'package.json']);
        if (FileSystem.exists('package.json')) {
            var json = sys.io.File.getContent('package.json');
            return macro $v{Json.parse(json).version};
        } else {
            return macro 'x.x.x';
        }
    }

}