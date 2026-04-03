package js.html;

/**
	The DOM **`StaticRange`** interface extends AbstractRange to provide a method to specify a range of content in the DOM whose contents don't update to reflect changes which occur within the DOM tree.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/StaticRange)
**/
typedef IStaticRange = {
	/**
		The read-only **`collapsed`** property of the AbstractRange interface returns `true` if the range's start position and end position are the same.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AbstractRange/collapsed)
	**/
	final collapsed : Bool;
	/**
		The read-only **`endContainer`** property of the AbstractRange interface returns the Node in which the end of the range is located.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AbstractRange/endContainer)
	**/
	final endContainer : js.html.Node;
	/**
		The **`endOffset`** property of the AbstractRange interface returns the offset into the end node of the range's end position.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AbstractRange/endOffset)
	**/
	final endOffset : Float;
	/**
		The read-only **`startContainer`** property of the AbstractRange interface returns the start Node for the range.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AbstractRange/startContainer)
	**/
	final startContainer : js.html.Node;
	/**
		The read-only **`startOffset`** property of the AbstractRange interface returns the offset into the start node of the range's start position.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AbstractRange/startOffset)
	**/
	final startOffset : Float;
};