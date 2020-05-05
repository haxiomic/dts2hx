package unit.types.types;
@:jsRequire("./unit/types", "Types.Color3") extern class Color3 {
	function equals(otherColor:{ var equals : (otherColor:DeepImmutableObject<Color3>) -> Bool; var toColor4 : ts.AnyOf2<() -> DeepImmutableObject<Color4>, (alpha:Float) -> DeepImmutableObject<Color4>>; }):Bool;
	function toColor4(?alpha:Float):{
		var equals : (otherColor:DeepImmutableObject<Color4>) -> Bool;
		var toColor3 : ts.AnyOf2<() -> DeepImmutableObject<Color3>, (alpha:Float) -> DeepImmutableObject<Color3>>;
	};
}