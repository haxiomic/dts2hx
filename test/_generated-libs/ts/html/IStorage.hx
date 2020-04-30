package ts.html;
/**
	This Web Storage API interface provides access to a particular domain's session or local storage. It allows, for example, the addition, modification, or deletion of stored data items.
**/
extern typedef IStorage = {
	/**
		Returns the number of key/value pairs currently present in the list associated with the object.
	**/
	final length : Float;
	/**
		Empties the list associated with the object of all key/value pairs, if there are any.
	**/
	function clear():Void;
	/**
		Returns the current value associated with the given key, or null if the given key does not exist in the list associated with the object.
	**/
	function getItem(key:String):Null<String>;
	/**
		Returns the name of the nth key in the list, or null if n is greater than or equal to the number of key/value pairs in the object.
	**/
	function key(index:Float):Null<String>;
	/**
		Removes the key/value pair with the given key from the list associated with the object, if a key/value pair with the given key exists.
	**/
	function removeItem(key:String):Void;
	/**
		Sets the value of the pair identified by key to value, creating a new key/value pair if none existed for key previously.
		
		Throws a "QuotaExceededError" DOMException exception if the new value couldn't be set. (Setting could fail if, e.g., the user has disabled storage for the site, or if the quota has been exceeded.)
	**/
	function setItem(key:String, value:String):Void;
};