package unit.types.types;

@:jsRequire("./unit/types", "Types.ThisIntersection") extern class ThisIntersection<T> {
	function new();
	var _this : ThisIntersection<T>;
	var thisAndAnon : ThisIntersection<T> & {
		var field : String;
	};
	var thisAndAnon2 : ThisIntersection<T>;
	var thisAndString : ThisIntersection<T>;
	var thisAndTp : ThisIntersection<T>;
	function thisAndTpArg<T>(arg:ThisIntersection<T>):Void;
	function thisAndTpRet<T>():ThisIntersection<T>;
	static var prototype : ThisIntersection<Dynamic>;
}