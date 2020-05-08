package ts.html;
/**
	A key range can be a single value or a range with upper and lower bounds or endpoints. If the key range has both upper and lower bounds, then it is bounded; if it has no bounds, it is unbounded. A bounded key range can either be open (the endpoints are excluded) or closed (the endpoints are included). To retrieve all keys within a certain range, you can use the following code constructs:
**/
@:native("IDBKeyRange") extern class IDBKeyRange {
	function new();
	/**
		Returns lower bound, or undefined if none.
	**/
	final lower : Dynamic;
	/**
		Returns true if the lower open flag is set, and false otherwise.
	**/
	final lowerOpen : Bool;
	/**
		Returns upper bound, or undefined if none.
	**/
	final upper : Dynamic;
	/**
		Returns true if the upper open flag is set, and false otherwise.
	**/
	final upperOpen : Bool;
	/**
		Returns true if key is included in the range, and false otherwise.
	**/
	function includes(key:Dynamic):Bool;
	static var prototype : IDBKeyRange;
	/**
		Returns a new IDBKeyRange spanning from lower to upper. If lowerOpen is true, lower is not included in the range. If upperOpen is true, upper is not included in the range.
	**/
	static function bound(lower:Dynamic, upper:Dynamic, ?lowerOpen:Bool, ?upperOpen:Bool):IDBKeyRange;
	/**
		Returns a new IDBKeyRange starting at key with no upper bound. If open is true, key is not included in the range.
	**/
	static function lowerBound(lower:Dynamic, ?open:Bool):IDBKeyRange;
	/**
		Returns a new IDBKeyRange spanning only key.
	**/
	static function only(value:Dynamic):IDBKeyRange;
	/**
		Returns a new IDBKeyRange with no lower bound and ending at key. If open is true, key is not included in the range.
	**/
	static function upperBound(upper:Dynamic, ?open:Bool):IDBKeyRange;
}