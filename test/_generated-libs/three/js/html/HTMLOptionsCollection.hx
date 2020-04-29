package js.html;
/**
	HTMLOptionsCollection is an interface representing a collection of HTML option elements (in document order) and offers methods and properties for traversing the list as well as optionally altering its items. This type is returned solely by the "options" property of select.
**/
@:native("HTMLOptionsCollection") extern class HTMLOptionsCollection {
	function new();
	/**
		Returns the number of elements in the collection.
		
		When set to a smaller number, truncates the number of option elements in the corresponding container.
		
		When set to a greater number, adds new blank option elements to that container.
	**/
	var length : Float;
	/**
		Returns the index of the first selected item, if any, or −1 if there is no selected item.
		
		Can be set, to change the selection.
	**/
	var selectedIndex : Float;
	/**
		Inserts element before the node given by before.
		
		The before argument can be a number, in which case element is inserted before the item with that number, or an element from the collection, in which case element is inserted before that element.
		
		If before is omitted, null, or a number out of range, then element will be added at the end of the list.
		
		This method will throw a "HierarchyRequestError" DOMException if element is an ancestor of the element into which it is to be inserted.
	**/
	function add(element:haxe.extern.EitherType<IHTMLOptGroupElement, IHTMLOptionElement>, ?before:haxe.extern.EitherType<Float, IHTMLElement>):Void;
	/**
		Removes the item with index index from the collection.
	**/
	function remove(index:Float):Void;
	/**
		Retrieves an object from various collections.
	**/
	function item(index:Float):Null<IHTMLOptionElement>;
	function namedItem(name:String):Null<IHTMLOptionElement>;
	static var prototype : IHTMLOptionsCollection;
}