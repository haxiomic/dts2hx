package unit.types.types;
@:jsRequire("./unit/types", "Types.ThisIntersection") extern class ThisIntersection {
	var _this : ThisIntersection;
	var thisAndAnon : Dynamic;
	var thisAndAnon2 : ThisIntersection;
	var thisAndString : Dynamic;
	function thisAndTp<T>():Dynamic;
}