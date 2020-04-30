package ts.html;
/**
	A collection of HTML form control elements.
**/
@:native("HTMLFormControlsCollection") extern class HTMLFormControlsCollection {
	function new();
	/**
		Returns the item with ID or name name from the collection.
		
		If there are multiple matching items, then a RadioNodeList object containing all those elements is returned.
	**/
	function namedItem(name:String):Null<haxe.extern.EitherType<IElement, IRadioNodeList>>;
	static var prototype : IHTMLFormControlsCollection;
}