package ts.html;
/**
	The textual content of Element or Attr. If an element has no markup within its content, it has a single child implementing Text that contains the element's text. However, if the element contains markup, it is parsed into information items and Text nodes that form its children.
**/
@:native("Text") extern class Text {
	function new(?data:String);
	final assignedSlot : Null<IHTMLSlotElement>;
	/**
		Returns the combined data of all direct Text node siblings.
	**/
	final wholeText : String;
	/**
		Splits data at the given offset and returns the remainder as Text node.
	**/
	function splitText(offset:Float):IText;
	static var prototype : IText;
}