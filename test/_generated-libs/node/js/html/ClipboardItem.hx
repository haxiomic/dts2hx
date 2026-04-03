package js.html;

/**
	The **`ClipboardItem`** interface of the Clipboard API represents a single item format, used when reading or writing clipboard data using Clipboard.read() and Clipboard.write() respectively.
	Available only in secure contexts.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/ClipboardItem)
**/
@:native("ClipboardItem") extern class ClipboardItem {
	function new(items:haxe.DynamicAccess<ts.AnyOf3<String, js.html.Blob, js.lib.PromiseLike<ts.AnyOf2<String, js.html.Blob>>>>, ?options:ClipboardItemOptions);
	/**
		The read-only **`presentationStyle`** property of the ClipboardItem interface returns a string indicating how an item should be presented.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ClipboardItem/presentationStyle)
	**/
	final presentationStyle : PresentationStyle;
	/**
		The read-only **`types`** property of the ClipboardItem interface returns an Array of MIME type available within the ClipboardItem.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ClipboardItem/types)
	**/
	final types : haxe.ds.ReadOnlyArray<String>;
	/**
		The **`getType()`** method of the ClipboardItem interface returns a Promise that resolves with a Blob of the requested MIME type or an error if the MIME type is not found.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ClipboardItem/getType)
	**/
	function getType(type:String):js.lib.Promise<js.html.Blob>;
	static var prototype : ClipboardItem;
	/**
		The **`supports()`** static method of the ClipboardItem interface returns `true` if the given MIME type is supported by the clipboard, and `false` otherwise.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ClipboardItem/supports_static)
	**/
	static function supports(type:String):Bool;
}