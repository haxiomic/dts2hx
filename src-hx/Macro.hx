import haxe.macro.Expr;
import sys.FileSystem;
import haxe.Json;
import haxe.io.Path;

class Macro {

	macro static public function getLocalPackageJson(): ExprOf<Dynamic> {
		var packageJsonPath = Path.join([Sys.getCwd(), 'package.json']);
		return macro $v{Json.parse(sys.io.File.getContent('package.json'))};
	}

}