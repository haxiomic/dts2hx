import haxe.macro.Expr;
import sys.FileSystem;
import haxe.Json;
import haxe.io.Path;

class Macro {

	macro static public function getJson(fileName: String): ExprOf<Dynamic> {
		return macro $v{Json.parse(sys.io.File.getContent(fileName))};
	}

	macro static public function getFileContent(fileName: String): ExprOf<String> {
		return macro $v{sys.io.File.getContent(fileName)};
	}

}