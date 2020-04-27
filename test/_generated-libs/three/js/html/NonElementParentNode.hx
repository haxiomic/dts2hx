package js.html;
extern typedef NonElementParentNode = { /**
		Returns the first element within node's descendants whose ID is elementId.
	**/
	function getElementById(elementId:String):Null<Element>; };