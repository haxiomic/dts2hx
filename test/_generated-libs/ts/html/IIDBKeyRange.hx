package ts.html;
/**
	A key range can be a single value or a range with upper and lower bounds or endpoints. If the key range has both upper and lower bounds, then it is bounded; if it has no bounds, it is unbounded. A bounded key range can either be open (the endpoints are excluded) or closed (the endpoints are included). To retrieve all keys within a certain range, you can use the following code constructs:
**/
typedef IIDBKeyRange = {
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
};