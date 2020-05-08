package ts.html;
@:native("HTMLAllCollection") extern class HTMLAllCollection {
	function new();
	/**
		Returns the number of elements in the collection.
	**/
	final length : Float;
	/**
		Returns the item with index index from the collection (determined by tree order).
	**/
	function item(?nameOrIndex:String):Null<ts.AnyOf2<Element, HTMLCollection>>;
	/**
		Returns the item with ID or name name from the collection.
		
		If there are multiple matching items, then an HTMLCollection object containing all those elements is returned.
		
		Only button, form, iframe, input, map, meta, object, select, and textarea elements can have a name for the purpose of this method; their name is given by the value of their name attribute.
	**/
	function namedItem(name:String):Null<ts.AnyOf2<Element, HTMLCollection>>;
	static var prototype : HTMLAllCollection;
}