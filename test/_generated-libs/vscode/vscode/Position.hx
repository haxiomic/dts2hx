package vscode;

/**
	Represents a line and character position, such as
	the position of the cursor.
	
	Position objects are __immutable__. Use the [with](#Position.with) or
	[translate](#Position.translate) methods to derive new positions
	from an existing position.
**/
@:jsRequire("vscode", "Position") extern class Position {
	function new(line:Float, character:Float);
	/**
		The zero-based line value.
	**/
	final line : Float;
	/**
		The zero-based character value.
	**/
	final character : Float;
	/**
		Check if this position is before `other`.
	**/
	function isBefore(other:Position):Bool;
	/**
		Check if this position is before or equal to `other`.
	**/
	function isBeforeOrEqual(other:Position):Bool;
	/**
		Check if this position is after `other`.
	**/
	function isAfter(other:Position):Bool;
	/**
		Check if this position is after or equal to `other`.
	**/
	function isAfterOrEqual(other:Position):Bool;
	/**
		Check if this position is equal to `other`.
	**/
	function isEqual(other:Position):Bool;
	/**
		Compare this to `other`.
	**/
	function compareTo(other:Position):Float;
	/**
		Create a new position relative to this position.
		
		Derived a new position relative to this position.
	**/
	@:overload(function(change:{ @:optional var lineDelta : Float; @:optional var characterDelta : Float; }):Position { })
	function translate(?lineDelta:Float, ?characterDelta:Float):Position;
	/**
		Create a new position derived from this position.
		
		Derived a new position from this position.
	**/
	@:overload(function(change:{ @:optional var line : Float; @:optional var character : Float; }):Position { })
	function with(?line:Float, ?character:Float):Position;
	static var prototype : Position;
}