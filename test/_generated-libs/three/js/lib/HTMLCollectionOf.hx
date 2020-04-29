package js.lib;
extern typedef HTMLCollectionOf<T:(js.html.IElement)> = {
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