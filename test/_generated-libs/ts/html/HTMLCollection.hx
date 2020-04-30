package ts.html;
@:native("HTMLCollection") extern class HTMLCollection {
	function new();
	/**
		Retrieves a select object or an object from an options collection.
	**/
	function namedItem(name:String):Null<IElement>;
	static var prototype : IHTMLCollection;
}