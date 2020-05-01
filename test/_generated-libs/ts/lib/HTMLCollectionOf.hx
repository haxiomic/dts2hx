package ts.lib;
typedef HTMLCollectionOf<T> = {
	/**
		Retrieves an object from various collections.
	**/
	function item(index:Float):Null<T>;
	function namedItem(name:String):Null<T>;
	/**
		Sets or retrieves the number of objects in a collection.
	**/
	final length : Float;
};