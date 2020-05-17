package unit.types.types;
@:jsRequire("./unit/types", "Types.Color3") extern class Color3 {
	function equals(otherColor:{ dynamic function equals(otherColor:DeepImmutableObject<Color3>):Bool; dynamic function toColor4(?alpha:Float):DeepImmutableObject<Color4>; }):Bool;
	function toColor4(?alpha:Float):{
		dynamic function equals(otherColor:DeepImmutableObject<Color4>):Bool;
		dynamic function toColor3(?alpha:Float):DeepImmutableObject<Color3>;
	};
}