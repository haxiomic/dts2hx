package unit.types.types;

@:jsRequire("./unit/types", "Types.ThisIntersection") extern class ThisIntersection<T> {
	var _this : ThisIntersection<T>;
	var thisAndAnon : Dynamic;
	var thisAndAnon2 : ThisIntersection<T>;
	var thisAndString : Dynamic;
	var thisAndTp : Dynamic;
	function thisAndTpArg<T>(arg:Dynamic):Void;
	function thisAndTpRet<T>():Dynamic;
}