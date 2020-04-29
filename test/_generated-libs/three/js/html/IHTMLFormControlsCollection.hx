package js.html;
/**
	A collection of HTML form control elements.
**/
extern typedef IHTMLFormControlsCollection = {
	/**
		Returns the item with ID or name name from the collection.
		
		If there are multiple matching items, then a RadioNodeList object containing all those elements is returned.
	**/
	function namedItem(name:String):Null<haxe.extern.EitherType<IElement, IRadioNodeList>>;
	/**
		Sets or retrieves the number of objects in a collection.
	**/
	final length : Float;
	/**
		Retrieves an object from various collections.
	**/
	function item(index:Float):Null<IElement>;
};