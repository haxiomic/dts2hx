package unit.types.types;

@:jsRequire("./unit/types", "Types.Color4") extern class Color4 {
	function equals(otherColor:{ dynamic function equals(otherColor:DeepImmutableObject<Color4>):Bool; dynamic function toColor3(?alpha:Float):DeepImmutableObject<Color3>; }):Bool;
	function toColor3(?alpha:Float):{
		dynamic function equals(otherColor:DeepImmutableObject<Color3>):Bool;
		dynamic function toColor4(?alpha:Float):DeepImmutableObject<Color4>;
	};
	static var prototype : Color4;
}