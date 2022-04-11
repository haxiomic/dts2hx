package global.jquery;

typedef CoordinatesPartial = ts.AnyOf3<{
	var left : Float;
}, {
	var top : Float;
}, haxe.DynamicAccess<Any>>;