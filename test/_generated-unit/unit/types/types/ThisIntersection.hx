package unit.types.types;

@:jsRequire("./unit/types", "Types.ThisIntersection") extern class ThisIntersection<T> {
	function new();
	var _this : ThisIntersection<T>;
	var thisAndAnon : ThisIntersection<T> & {
		var field : String;
	};
	var thisAndAnon2 : ThisIntersection<T>;
	var thisAndString : Dynamic;
	var thisAndTp : Dynamic;
	function thisAndTpArg<T>(arg:Dynamic):Void;
	function thisAndTpRet<T>():Dynamic;
	static var prototype : ThisIntersection<Dynamic>;
}