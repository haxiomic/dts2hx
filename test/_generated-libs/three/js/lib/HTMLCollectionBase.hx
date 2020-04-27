package js.lib;
/**
	A generic collection (array-like object similar to arguments) of elements (in document order) and offers methods and properties for selecting from the list.
**/
extern interface HTMLCollectionBase {
	/**
		Sets or retrieves the number of objects in a collection.
	**/
	final length : Float;
	/**
		Retrieves an object from various collections.
	**/
	function item(index:Float):Null<js.html.Element>;
}