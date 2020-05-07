package ts.html;
@:native("HTMLCollection") extern class HTMLCollection {
	function new();
	/**
		Retrieves a select object or an object from an options collection.
	**/
	function namedItem(name:String):Null<Element>;
	/**
		Sets or retrieves the number of objects in a collection.
	**/
	final length : Float;
	/**
		Retrieves an object from various collections.
	**/
	function item(index:Float):Null<Element>;
	static var prototype : HTMLCollection;
}