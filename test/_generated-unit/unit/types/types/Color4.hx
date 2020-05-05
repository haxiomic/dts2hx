package unit.types.types;
@:jsRequire("./unit/types", "Types.Color4") extern class Color4 {
	function equals(otherColor:{ var equals : (otherColor:DeepImmutableObject<Color4>) -> Bool; var toColor3 : ts.AnyOf2<() -> DeepImmutableObject<Color3>, (alpha:Float) -> DeepImmutableObject<Color3>>; }):Bool;
	function toColor3(?alpha:Float):{
		var equals : (otherColor:DeepImmutableObject<Color3>) -> Bool;
		var toColor4 : ts.AnyOf2<() -> DeepImmutableObject<Color4>, (alpha:Float) -> DeepImmutableObject<Color4>>;
	};
}