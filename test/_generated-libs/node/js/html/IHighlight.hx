package js.html;

/**
	The **`Highlight`** interface of the CSS Custom Highlight API is used to represent a collection of Range instances to be styled using the API.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/Highlight)
**/
typedef IHighlight = {
	/**
		It is possible to create Range objects that overlap in a document.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Highlight/priority)
	**/
	var priority : Float;
	/**
		The `type` property of the Highlight interface is an enumerated String used to specify the meaning of the highlight.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Highlight/type)
	**/
	var type : HighlightType;
	function forEach(callbackfn:(value:AbstractRange, key:AbstractRange, parent:Highlight) -> Void, ?thisArg:Dynamic):Void;
	/**
		Appends a new element with a specified value to the end of the Set.
	**/
	function add(value:AbstractRange):Highlight;
	function clear():Void;
	/**
		Removes a specified value from the Set.
	**/
	function delete(value:AbstractRange):Bool;
	function has(value:AbstractRange):Bool;
	final size : Float;
	/**
		Returns an iterable of [v,v] pairs for every value `v` in the set.
	**/
	function entries():js.lib.SetIterator<ts.Tuple2<AbstractRange, AbstractRange>>;
	/**
		Despite its name, returns an iterable of the values in the set.
	**/
	function keys():js.lib.SetIterator<AbstractRange>;
	/**
		Returns an iterable of values in the set.
	**/
	function values():js.lib.SetIterator<AbstractRange>;
};