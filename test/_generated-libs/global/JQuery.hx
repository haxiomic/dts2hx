package global;
extern typedef JQuery<TElement> = {
	/**
		A string containing the jQuery version number.
	**/
	var jquery : String;
	/**
		The number of elements in the jQuery object.
	**/
	var length : Float;
	/**
		Create a new jQuery object with elements added to the set of matched elements.
		
		Create a new jQuery object with elements added to the set of matched elements.
	**/
	@:overload(function(selector_elements_html_selection:haxe.extern.EitherType<String, haxe.extern.EitherType<ts.html.IElement, haxe.extern.EitherType<JQuery<ts.html.IHTMLElement>, haxe.extern.EitherType<ts.html.IText, haxe.extern.EitherType<ts.html.IComment, haxe.extern.EitherType<ts.html.IDocumentFragment, std.Array<ts.html.IElement>>>>>>>):JQuery<TElement> { })
	function add(selector:String, context:ts.html.IElement):JQuery<TElement>;
	/**
		Add the previous set of elements on the stack to the current set, optionally filtered by a selector.
	**/
	function addBack(?selector:String):JQuery<TElement>;
	/**
		Adds the specified class(es) to each element in the set of matched elements.
	**/
	function addClass(className_function:haxe.extern.EitherType<String, haxe.extern.EitherType<std.Array<String>, (index:Float, currentClassName:String) -> String>>):JQuery<TElement>;
	/**
		Insert content, specified by the parameter, after each element in the set of matched elements.
		
		Insert content, specified by the parameter, after each element in the set of matched elements.
	**/
	@:overload(function(function_function_Html:(index:Float, html:String) -> haxe.extern.EitherType<String, haxe.extern.EitherType<ts.html.IElement, haxe.extern.EitherType<ts.html.IText, haxe.extern.EitherType<ts.html.IComment, haxe.extern.EitherType<ts.html.IDocumentFragment, haxe.extern.EitherType<JQuery<haxe.extern.EitherType<ts.html.IElement, haxe.extern.EitherType<ts.html.IText, haxe.extern.EitherType<ts.html.IComment, ts.html.IDocumentFragment>>>>, std.Array<haxe.extern.EitherType<ts.html.IElement, haxe.extern.EitherType<ts.html.IText, haxe.extern.EitherType<ts.html.IComment, haxe.extern.EitherType<ts.html.IDocumentFragment, JQuery<haxe.extern.EitherType<ts.html.IElement, haxe.extern.EitherType<ts.html.IText, haxe.extern.EitherType<ts.html.IComment, ts.html.IDocumentFragment>>>>>>>>>>>>>>>):JQuery<TElement> { })
	function after(contents:std.Array<haxe.extern.EitherType<String, haxe.extern.EitherType<ts.html.IElement, haxe.extern.EitherType<ts.html.IText, haxe.extern.EitherType<ts.html.IComment, haxe.extern.EitherType<ts.html.IDocumentFragment, haxe.extern.EitherType<JQuery<haxe.extern.EitherType<ts.html.IElement, haxe.extern.EitherType<ts.html.IText, haxe.extern.EitherType<ts.html.IComment, ts.html.IDocumentFragment>>>>, std.Array<haxe.extern.EitherType<ts.html.IElement, haxe.extern.EitherType<ts.html.IText, haxe.extern.EitherType<ts.html.IComment, haxe.extern.EitherType<ts.html.IDocumentFragment, JQuery<haxe.extern.EitherType<ts.html.IElement, haxe.extern.EitherType<ts.html.IText, haxe.extern.EitherType<ts.html.IComment, ts.html.IDocumentFragment>>>>>>>>>>>>>>>>):JQuery<TElement>;
	/**
		Register a handler to be called when Ajax requests complete. This is an AjaxEvent.
	**/
	function ajaxComplete(handler:(event:global.jquery.TriggeredEvent<ts.html.IDocument, Null<Any>, ts.html.IDocument, ts.html.IDocument>, jqXHR:global.jquery.JqXHR<Any>, ajaxOptions:global.jquery.AjaxSettings<Any>) -> haxe.extern.EitherType<Bool, Void>):JQuery<TElement>;
	/**
		Register a handler to be called when Ajax requests complete with an error. This is an Ajax Event.
	**/
	function ajaxError(handler:(event:global.jquery.TriggeredEvent<ts.html.IDocument, Null<Any>, ts.html.IDocument, ts.html.IDocument>, jqXHR:global.jquery.JqXHR<Any>, ajaxSettings:global.jquery.AjaxSettings<Any>, thrownError:String) -> haxe.extern.EitherType<Bool, Void>):JQuery<TElement>;
	/**
		Attach a function to be executed before an Ajax request is sent. This is an Ajax Event.
	**/
	function ajaxSend(handler:(event:global.jquery.TriggeredEvent<ts.html.IDocument, Null<Any>, ts.html.IDocument, ts.html.IDocument>, jqXHR:global.jquery.JqXHR<Any>, ajaxOptions:global.jquery.AjaxSettings<Any>) -> haxe.extern.EitherType<Bool, Void>):JQuery<TElement>;
	/**
		Register a handler to be called when the first Ajax request begins. This is an Ajax Event.
	**/
	function ajaxStart(handler:() -> haxe.extern.EitherType<Bool, Void>):JQuery<TElement>;
	/**
		Register a handler to be called when all Ajax requests have completed. This is an Ajax Event.
	**/
	function ajaxStop(handler:() -> haxe.extern.EitherType<Bool, Void>):JQuery<TElement>;
	/**
		Attach a function to be executed whenever an Ajax request completes successfully. This is an Ajax Event.
	**/
	function ajaxSuccess(handler:(event:global.jquery.TriggeredEvent<ts.html.IDocument, Null<Any>, ts.html.IDocument, ts.html.IDocument>, jqXHR:global.jquery.JqXHR<Any>, ajaxOptions:global.jquery.AjaxSettings<Any>, data:global.jquery.PlainObject<Any>) -> haxe.extern.EitherType<Bool, Void>):JQuery<TElement>;
	/**
		Perform a custom animation of a set of CSS properties.
		
		Perform a custom animation of a set of CSS properties.
		
		Perform a custom animation of a set of CSS properties.
		
		Perform a custom animation of a set of CSS properties.
	**/
	@:overload(function(properties:global.jquery.PlainObject<Any>, duration_easing:haxe.extern.EitherType<String, Float>, ?complete:() -> Void):JQuery<TElement> { })
	@:overload(function(properties:global.jquery.PlainObject<Any>, options:global.jquery.EffectsOptions<TElement>):JQuery<TElement> { })
	@:overload(function(properties:global.jquery.PlainObject<Any>, ?complete:() -> Void):JQuery<TElement> { })
	function animate(properties:global.jquery.PlainObject<Any>, duration:haxe.extern.EitherType<Float, String>, easing:String, ?complete:() -> Void):JQuery<TElement>;
	/**
		Insert content, specified by the parameter, to the end of each element in the set of matched elements.
		
		Insert content, specified by the parameter, to the end of each element in the set of matched elements.
	**/
	@:overload(function(fun_Tion:(index:Float, html:String) -> haxe.extern.EitherType<String, haxe.extern.EitherType<ts.html.IElement, haxe.extern.EitherType<ts.html.IText, haxe.extern.EitherType<ts.html.IComment, haxe.extern.EitherType<ts.html.IDocumentFragment, haxe.extern.EitherType<JQuery<haxe.extern.EitherType<ts.html.IElement, haxe.extern.EitherType<ts.html.IText, haxe.extern.EitherType<ts.html.IComment, ts.html.IDocumentFragment>>>>, std.Array<haxe.extern.EitherType<ts.html.IElement, haxe.extern.EitherType<ts.html.IText, haxe.extern.EitherType<ts.html.IComment, haxe.extern.EitherType<ts.html.IDocumentFragment, JQuery<haxe.extern.EitherType<ts.html.IElement, haxe.extern.EitherType<ts.html.IText, haxe.extern.EitherType<ts.html.IComment, ts.html.IDocumentFragment>>>>>>>>>>>>>>>):JQuery<TElement> { })
	function append(contents:std.Array<haxe.extern.EitherType<String, haxe.extern.EitherType<ts.html.IElement, haxe.extern.EitherType<ts.html.IText, haxe.extern.EitherType<ts.html.IComment, haxe.extern.EitherType<ts.html.IDocumentFragment, haxe.extern.EitherType<JQuery<haxe.extern.EitherType<ts.html.IElement, haxe.extern.EitherType<ts.html.IText, haxe.extern.EitherType<ts.html.IComment, ts.html.IDocumentFragment>>>>, std.Array<haxe.extern.EitherType<ts.html.IElement, haxe.extern.EitherType<ts.html.IText, haxe.extern.EitherType<ts.html.IComment, haxe.extern.EitherType<ts.html.IDocumentFragment, JQuery<haxe.extern.EitherType<ts.html.IElement, haxe.extern.EitherType<ts.html.IText, haxe.extern.EitherType<ts.html.IComment, ts.html.IDocumentFragment>>>>>>>>>>>>>>>>):JQuery<TElement>;
	/**
		Insert every element in the set of matched elements to the end of the target.
	**/
	function appendTo(target:haxe.extern.EitherType<String, haxe.extern.EitherType<ts.html.IElement, haxe.extern.EitherType<JQuery<ts.html.IHTMLElement>, haxe.extern.EitherType<ts.html.IDocumentFragment, std.Array<haxe.extern.EitherType<ts.html.IElement, ts.html.IDocumentFragment>>>>>>):JQuery<TElement>;
	/**
		Set one or more attributes for the set of matched elements.
		
		Set one or more attributes for the set of matched elements.
		
		Get the value of an attribute for the first element in the set of matched elements.
	**/
	@:overload(function(attributes:global.jquery.PlainObject<Any>):JQuery<TElement> { })
	@:overload(function(attributeName:String):Null<String> { })
	function attr(attributeName:String, value_function:Null<haxe.extern.EitherType<String, haxe.extern.EitherType<Float, (index:Float, attr:String) -> Null<haxe.extern.EitherType<String, haxe.extern.EitherType<Float, Void>>>>>>):JQuery<TElement>;
	/**
		Insert content, specified by the parameter, before each element in the set of matched elements.
		
		Insert content, specified by the parameter, before each element in the set of matched elements.
	**/
	@:overload(function(function_function_Html:(index:Float, html:String) -> haxe.extern.EitherType<String, haxe.extern.EitherType<ts.html.IElement, haxe.extern.EitherType<ts.html.IText, haxe.extern.EitherType<ts.html.IComment, haxe.extern.EitherType<ts.html.IDocumentFragment, haxe.extern.EitherType<JQuery<haxe.extern.EitherType<ts.html.IElement, haxe.extern.EitherType<ts.html.IText, haxe.extern.EitherType<ts.html.IComment, ts.html.IDocumentFragment>>>>, std.Array<haxe.extern.EitherType<ts.html.IElement, haxe.extern.EitherType<ts.html.IText, haxe.extern.EitherType<ts.html.IComment, haxe.extern.EitherType<ts.html.IDocumentFragment, JQuery<haxe.extern.EitherType<ts.html.IElement, haxe.extern.EitherType<ts.html.IText, haxe.extern.EitherType<ts.html.IComment, ts.html.IDocumentFragment>>>>>>>>>>>>>>>):JQuery<TElement> { })
	function before(contents:std.Array<haxe.extern.EitherType<String, haxe.extern.EitherType<ts.html.IElement, haxe.extern.EitherType<ts.html.IText, haxe.extern.EitherType<ts.html.IComment, haxe.extern.EitherType<ts.html.IDocumentFragment, haxe.extern.EitherType<JQuery<haxe.extern.EitherType<ts.html.IElement, haxe.extern.EitherType<ts.html.IText, haxe.extern.EitherType<ts.html.IComment, ts.html.IDocumentFragment>>>>, std.Array<haxe.extern.EitherType<ts.html.IElement, haxe.extern.EitherType<ts.html.IText, haxe.extern.EitherType<ts.html.IComment, haxe.extern.EitherType<ts.html.IDocumentFragment, JQuery<haxe.extern.EitherType<ts.html.IElement, haxe.extern.EitherType<ts.html.IText, haxe.extern.EitherType<ts.html.IComment, ts.html.IDocumentFragment>>>>>>>>>>>>>>>>):JQuery<TElement>;
	/**
		Attach a handler to an event for the elements.
		
		Attach a handler to an event for the elements.
		
		Attach a handler to an event for the elements.
	**/
	@:overload(function<TType>(eventType:TType, handler_preventBubble:Null<haxe.extern.EitherType<Bool, (t:global.jquery.TriggeredEvent<TElement, Null<Any>, TElement, TElement, Any>, args:std.Array<Any>) -> Any>>):JQuery<TElement> { })
	@:overload(function(events:global.jquery.TypeEventHandlers<TElement, Null<Any>, TElement, TElement>):JQuery<TElement> { })
	function bind<TType, TData>(eventType:TType, eventData:TData, handler:(t:global.jquery.TriggeredEvent<TElement, TData, TElement, TElement, Any>, args:std.Array<Any>) -> Any):JQuery<TElement>;
	/**
		Bind an event handler to the "blur" JavaScript event, or trigger that event on an element.
		
		Bind an event handler to the "blur" JavaScript event, or trigger that event on an element.
	**/
	@:overload(function(?handler:haxe.extern.EitherType<Bool, (t:global.jquery.BlurEvent<TElement, Any, TElement, TElement>, args:std.Array<Any>) -> Any>):JQuery<TElement> { })
	function blur<TData>(eventData:TData, handler:(t:global.jquery.BlurEvent<TElement, TData, TElement, TElement>, args:std.Array<Any>) -> Any):JQuery<TElement>;
	/**
		Bind an event handler to the "change" JavaScript event, or trigger that event on an element.
		
		Bind an event handler to the "change" JavaScript event, or trigger that event on an element.
	**/
	@:overload(function(?handler:haxe.extern.EitherType<Bool, (t:global.jquery.ChangeEvent<TElement, Any, TElement, TElement>, args:std.Array<Any>) -> Any>):JQuery<TElement> { })
	function change<TData>(eventData:TData, handler:(t:global.jquery.ChangeEvent<TElement, TData, TElement, TElement>, args:std.Array<Any>) -> Any):JQuery<TElement>;
	/**
		Get the children of each element in the set of matched elements, optionally filtered by a selector.
	**/
	function children(?selector:String):JQuery<TElement>;
	/**
		Remove from the queue all items that have not yet been run.
	**/
	function clearQueue(?queueName:String):JQuery<TElement>;
	/**
		Bind an event handler to the "click" JavaScript event, or trigger that event on an element.
		
		Bind an event handler to the "click" JavaScript event, or trigger that event on an element.
	**/
	@:overload(function(?handler:haxe.extern.EitherType<Bool, (t:global.jquery.ClickEvent<TElement, Any, TElement, TElement>, args:std.Array<Any>) -> Any>):JQuery<TElement> { })
	function click<TData>(eventData:TData, handler:(t:global.jquery.ClickEvent<TElement, TData, TElement, TElement>, args:std.Array<Any>) -> Any):JQuery<TElement>;
	/**
		Create a deep copy of the set of matched elements.
	**/
	function clone(?withDataAndEvents:Bool, ?deepWithDataAndEvents:Bool):JQuery<TElement>;
	/**
		For each element in the set, get the first element that matches the selector by testing the element itself and traversing up through its ancestors in the DOM tree.
		
		For each element in the set, get the first element that matches the selector by testing the element itself and traversing up through its ancestors in the DOM tree.
	**/
	@:overload(function(selector_selection_element:haxe.extern.EitherType<String, haxe.extern.EitherType<ts.html.IElement, JQuery<ts.html.IHTMLElement>>>):JQuery<TElement> { })
	function closest(selector:String, context:ts.html.IElement):JQuery<TElement>;
	/**
		Get the children of each element in the set of matched elements, including text and comment nodes.
	**/
	function contents():JQuery<haxe.extern.EitherType<ts.html.IDocument, haxe.extern.EitherType<TElement, haxe.extern.EitherType<ts.html.IText, ts.html.IComment>>>>;
	/**
		Bind an event handler to the "contextmenu" JavaScript event, or trigger that event on an element.
		
		Bind an event handler to the "contextmenu" JavaScript event, or trigger that event on an element.
	**/
	@:overload(function(?handler:haxe.extern.EitherType<Bool, (t:global.jquery.ContextMenuEvent<TElement, Any, TElement, TElement>, args:std.Array<Any>) -> Any>):JQuery<TElement> { })
	function contextmenu<TData>(eventData:TData, handler:(t:global.jquery.ContextMenuEvent<TElement, TData, TElement, TElement>, args:std.Array<Any>) -> Any):JQuery<TElement>;
	/**
		Set one or more CSS properties for the set of matched elements.
		
		Set one or more CSS properties for the set of matched elements.
		
		Get the computed style properties for the first element in the set of matched elements.
		
		Get the computed style properties for the first element in the set of matched elements.
	**/
	@:overload(function(properties:global.jquery.PlainObject<haxe.extern.EitherType<String, haxe.extern.EitherType<Float, (index:Float, value:String) -> Null<haxe.extern.EitherType<String, haxe.extern.EitherType<Float, Void>>>>>>):JQuery<TElement> { })
	@:overload(function(propertyName:String):String { })
	@:overload(function(propertyNames:std.Array<String>):global.jquery.PlainObject<String> { })
	function css(propertyName:String, value_function:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, (index:Float, value:String) -> Null<haxe.extern.EitherType<String, haxe.extern.EitherType<Float, Void>>>>>):JQuery<TElement>;
	/**
		Store arbitrary data associated with the matched elements.
		
		Store arbitrary data associated with the matched elements.
		
		Return the value at the named data store for the first element in the jQuery collection, as set by data(name, value) or by an HTML5 data-* attribute.
		
		Return the value at the named data store for the first element in the jQuery collection, as set by data(name, value) or by an HTML5 data-* attribute.
		
		Return the value at the named data store for the first element in the jQuery collection, as set by data(name, value) or by an HTML5 data-* attribute.
	**/
	@:overload(function(obj:global.jquery.PlainObject<Any>):JQuery<TElement> { })
	@:overload(function(key:String, value:Null<Any>):Any { })
	@:overload(function(key:String):Any { })
	@:overload(function():global.jquery.PlainObject<Any> { })
	function data(key:String, value:Null<haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<Bool, haxe.extern.EitherType<js.lib.Symbol, Any>>>>>):JQuery<TElement>;
	/**
		Bind an event handler to the "dblclick" JavaScript event, or trigger that event on an element.
		
		Bind an event handler to the "dblclick" JavaScript event, or trigger that event on an element.
	**/
	@:overload(function(?handler:haxe.extern.EitherType<Bool, (t:global.jquery.DoubleClickEvent<TElement, Any, TElement, TElement>, args:std.Array<Any>) -> Any>):JQuery<TElement> { })
	function dblclick<TData>(eventData:TData, handler:(t:global.jquery.DoubleClickEvent<TElement, TData, TElement, TElement>, args:std.Array<Any>) -> Any):JQuery<TElement>;
	/**
		Set a timer to delay execution of subsequent items in the queue.
	**/
	function delay(duration:haxe.extern.EitherType<Float, String>, ?queueName:String):JQuery<TElement>;
	/**
		Attach a handler to one or more events for all elements that match the selector, now or in the future, based on a specific set of root elements.
		
		Attach a handler to one or more events for all elements that match the selector, now or in the future, based on a specific set of root elements.
		
		Attach a handler to one or more events for all elements that match the selector, now or in the future, based on a specific set of root elements.
	**/
	@:overload(function<TType>(selector:String, eventType:TType, handler:haxe.extern.EitherType<Bool, (t:global.jquery.TriggeredEvent<TElement, Null<Any>, Any, Any, Any>, args:std.Array<Any>) -> Any>):JQuery<TElement> { })
	@:overload(function(selector:String, events:global.jquery.TypeEventHandlers<TElement, Null<Any>, Any, Any>):JQuery<TElement> { })
	function delegate<TType, TData>(selector:String, eventType:TType, eventData:TData, handler:(t:global.jquery.TriggeredEvent<TElement, TData, Any, Any, Any>, args:std.Array<Any>) -> Any):JQuery<TElement>;
	/**
		Execute the next function on the queue for the matched elements.
	**/
	function dequeue(?queueName:String):JQuery<TElement>;
	/**
		Remove the set of matched elements from the DOM.
	**/
	function detach(?selector:String):JQuery<TElement>;
	/**
		Iterate over a jQuery object, executing a function for each matched element.
	**/
	function each(fun_Tion:(index:Float, element:TElement) -> haxe.extern.EitherType<Bool, Void>):JQuery<TElement>;
	/**
		Remove all child nodes of the set of matched elements from the DOM.
	**/
	function empty():JQuery<TElement>;
	/**
		End the most recent filtering operation in the current chain and return the set of matched elements to its previous state.
	**/
	function end():JQuery<TElement>;
	/**
		Reduce the set of matched elements to the one at the specified index.
	**/
	function eq(index:Float):JQuery<TElement>;
	/**
		Merge the contents of an object onto the jQuery prototype to provide new jQuery instance methods.
	**/
	function extend(obj:Any):JQuery<TElement>;
	/**
		Display the matched elements by fading them to opaque.
		
		Display the matched elements by fading them to opaque.
		
		Display the matched elements by fading them to opaque.
	**/
	@:overload(function(duration_easing:haxe.extern.EitherType<String, Float>, complete:() -> Void):JQuery<TElement> { })
	@:overload(function(?duration_easing_complete_options:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<global.jquery.EffectsOptions<TElement>, () -> Void>>>):JQuery<TElement> { })
	function fadeIn(duration:haxe.extern.EitherType<Float, String>, easing:String, ?complete:() -> Void):JQuery<TElement>;
	/**
		Hide the matched elements by fading them to transparent.
		
		Hide the matched elements by fading them to transparent.
		
		Hide the matched elements by fading them to transparent.
	**/
	@:overload(function(duration_easing:haxe.extern.EitherType<String, Float>, complete:() -> Void):JQuery<TElement> { })
	@:overload(function(?duration_easing_complete_options:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<global.jquery.EffectsOptions<TElement>, () -> Void>>>):JQuery<TElement> { })
	function fadeOut(duration:haxe.extern.EitherType<Float, String>, easing:String, ?complete:() -> Void):JQuery<TElement>;
	/**
		Adjust the opacity of the matched elements.
		
		Adjust the opacity of the matched elements.
	**/
	@:overload(function(duration:haxe.extern.EitherType<Float, String>, opacity:Float, ?complete:() -> Void):JQuery<TElement> { })
	function fadeTo(duration:haxe.extern.EitherType<Float, String>, opacity:Float, easing:String, ?complete:() -> Void):JQuery<TElement>;
	/**
		Display or hide the matched elements by animating their opacity.
		
		Display or hide the matched elements by animating their opacity.
		
		Display or hide the matched elements by animating their opacity.
	**/
	@:overload(function(duration_easing:haxe.extern.EitherType<String, Float>, complete:() -> Void):JQuery<TElement> { })
	@:overload(function(?duration_easing_complete_options:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<global.jquery.EffectsOptions<TElement>, () -> Void>>>):JQuery<TElement> { })
	function fadeToggle(duration:haxe.extern.EitherType<Float, String>, easing:String, ?complete:() -> Void):JQuery<TElement>;
	/**
		Reduce the set of matched elements to those that match the selector or pass the function's test.
	**/
	function filter(selector_elements_selection_function:haxe.extern.EitherType<String, haxe.extern.EitherType<ts.html.IElement, haxe.extern.EitherType<JQuery<ts.html.IHTMLElement>, haxe.extern.EitherType<std.Array<ts.html.IElement>, (index:Float, element:TElement) -> Bool>>>>):JQuery<TElement>;
	/**
		Get the descendants of each element in the current set of matched elements, filtered by a selector, jQuery object, or element.
	**/
	function find(selector_element:haxe.extern.EitherType<String, haxe.extern.EitherType<ts.html.IElement, JQuery<ts.html.IHTMLElement>>>):JQuery<TElement>;
	/**
		Stop the currently-running animation, remove all queued animations, and complete all animations for the matched elements.
	**/
	function finish(?queue:String):JQuery<TElement>;
	/**
		Reduce the set of matched elements to the first in the set.
	**/
	function first():JQuery<TElement>;
	/**
		Bind an event handler to the "focus" JavaScript event, or trigger that event on an element.
		
		Bind an event handler to the "focus" JavaScript event, or trigger that event on an element.
	**/
	@:overload(function(?handler:haxe.extern.EitherType<Bool, (t:global.jquery.FocusEvent<TElement, Any, TElement, TElement>, args:std.Array<Any>) -> Any>):JQuery<TElement> { })
	function focus<TData>(eventData:TData, handler:(t:global.jquery.FocusEvent<TElement, TData, TElement, TElement>, args:std.Array<Any>) -> Any):JQuery<TElement>;
	/**
		Bind an event handler to the "focusin" event.
		
		Bind an event handler to the "focusin" event.
	**/
	@:overload(function(?handler:haxe.extern.EitherType<Bool, (t:global.jquery.FocusInEvent<TElement, Any, TElement, TElement>, args:std.Array<Any>) -> Any>):JQuery<TElement> { })
	function focusin<TData>(eventData:TData, handler:(t:global.jquery.FocusInEvent<TElement, TData, TElement, TElement>, args:std.Array<Any>) -> Any):JQuery<TElement>;
	/**
		Bind an event handler to the "focusout" JavaScript event.
		
		Bind an event handler to the "focusout" JavaScript event.
	**/
	@:overload(function(?handler:haxe.extern.EitherType<Bool, (t:global.jquery.FocusOutEvent<TElement, Any, TElement, TElement>, args:std.Array<Any>) -> Any>):JQuery<TElement> { })
	function focusout<TData>(eventData:TData, handler:(t:global.jquery.FocusOutEvent<TElement, TData, TElement, TElement>, args:std.Array<Any>) -> Any):JQuery<TElement>;
	/**
		Retrieve one of the elements matched by the jQuery object.
		
		Retrieve the elements matched by the jQuery object.
	**/
	@:overload(function():std.Array<TElement> { })
	function get(index:Float):TElement;
	/**
		Reduce the set of matched elements to those that have a descendant that matches the selector or DOM element.
	**/
	function has(selector_contained:haxe.extern.EitherType<String, ts.html.IElement>):JQuery<TElement>;
	/**
		Determine whether any of the matched elements are assigned the given class.
	**/
	function hasClass(className:String):Bool;
	/**
		Set the CSS height of every matched element.
		
		Get the current computed height for the first element in the set of matched elements.
	**/
	@:overload(function():Null<Float> { })
	function height(value_function:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, (index:Float, height:Float) -> haxe.extern.EitherType<String, Float>>>):JQuery<TElement>;
	/**
		Hide the matched elements.
		
		Hide the matched elements.
		
		Hide the matched elements.
	**/
	@:overload(function(duration:haxe.extern.EitherType<Float, String>, easing_complete:haxe.extern.EitherType<String, () -> Void>):JQuery<TElement> { })
	@:overload(function(?duration_complete_options:haxe.extern.EitherType<Float, haxe.extern.EitherType<String, haxe.extern.EitherType<global.jquery.EffectsOptions<TElement>, () -> Void>>>):JQuery<TElement> { })
	function hide(duration:haxe.extern.EitherType<Float, String>, easing:String, complete:() -> Void):JQuery<TElement>;
	/**
		Bind two handlers to the matched elements, to be executed when the mouse pointer enters and leaves the elements.
		
		Bind a single handler to the matched elements, to be executed when the mouse pointer enters or leaves the elements.
	**/
	@:overload(function(handlerInOut:haxe.extern.EitherType<Bool, (t:haxe.extern.EitherType<global.jquery.MouseEnterEvent<TElement, Any, TElement, TElement>, global.jquery.MouseLeaveEvent<TElement, Any, TElement, TElement>>, args:std.Array<Any>) -> Any>):JQuery<TElement> { })
	function hover(handlerIn:haxe.extern.EitherType<Bool, (t:global.jquery.MouseEnterEvent<TElement, Any, TElement, TElement>, args:std.Array<Any>) -> Any>, handlerOut:haxe.extern.EitherType<Bool, (t:global.jquery.MouseLeaveEvent<TElement, Any, TElement, TElement>, args:std.Array<Any>) -> Any>):JQuery<TElement>;
	/**
		Set the HTML contents of each element in the set of matched elements.
		
		Get the HTML contents of the first element in the set of matched elements.
	**/
	@:overload(function():String { })
	function html(htmlString_function:haxe.extern.EitherType<String, haxe.extern.EitherType<ts.html.IElement, haxe.extern.EitherType<ts.html.IText, haxe.extern.EitherType<ts.html.IComment, haxe.extern.EitherType<ts.html.IDocumentFragment, (index:Float, oldhtml:String) -> haxe.extern.EitherType<String, haxe.extern.EitherType<ts.html.IElement, haxe.extern.EitherType<ts.html.IText, haxe.extern.EitherType<ts.html.IComment, ts.html.IDocumentFragment>>>>>>>>>):JQuery<TElement>;
	/**
		Search for a given element from among the matched elements.
	**/
	function index(?selector_element:haxe.extern.EitherType<String, haxe.extern.EitherType<ts.html.IElement, JQuery<ts.html.IHTMLElement>>>):Float;
	/**
		Set the CSS inner height of each element in the set of matched elements.
		
		Get the current computed height for the first element in the set of matched elements, including padding but not border.
	**/
	@:overload(function():Null<Float> { })
	function innerHeight(value_function:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, (index:Float, height:Float) -> haxe.extern.EitherType<String, Float>>>):JQuery<TElement>;
	/**
		Set the CSS inner width of each element in the set of matched elements.
		
		Get the current computed inner width for the first element in the set of matched elements, including padding but not border.
	**/
	@:overload(function():Null<Float> { })
	function innerWidth(value_function:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, (index:Float, width:Float) -> haxe.extern.EitherType<String, Float>>>):JQuery<TElement>;
	/**
		Insert every element in the set of matched elements after the target.
	**/
	function insertAfter(target:haxe.extern.EitherType<String, haxe.extern.EitherType<ts.html.INode, haxe.extern.EitherType<std.Array<ts.html.INode>, JQuery<ts.html.INode>>>>):JQuery<TElement>;
	/**
		Insert every element in the set of matched elements before the target.
	**/
	function insertBefore(target:haxe.extern.EitherType<String, haxe.extern.EitherType<ts.html.INode, haxe.extern.EitherType<std.Array<ts.html.INode>, JQuery<ts.html.INode>>>>):JQuery<TElement>;
	/**
		Check the current matched set of elements against a selector, element, or jQuery object and return true if at least one of these elements matches the given arguments.
	**/
	function is(selector_function_selection_elements:haxe.extern.EitherType<String, haxe.extern.EitherType<ts.html.IElement, haxe.extern.EitherType<JQuery<ts.html.IHTMLElement>, haxe.extern.EitherType<std.Array<ts.html.IElement>, (index:Float, element:TElement) -> Bool>>>>):Bool;
	/**
		Bind an event handler to the "keydown" JavaScript event, or trigger that event on an element.
		
		Bind an event handler to the "keydown" JavaScript event, or trigger that event on an element.
	**/
	@:overload(function(?handler:haxe.extern.EitherType<Bool, (t:global.jquery.KeyDownEvent<TElement, Any, TElement, TElement>, args:std.Array<Any>) -> Any>):JQuery<TElement> { })
	function keydown<TData>(eventData:TData, handler:(t:global.jquery.KeyDownEvent<TElement, TData, TElement, TElement>, args:std.Array<Any>) -> Any):JQuery<TElement>;
	/**
		Bind an event handler to the "keypress" JavaScript event, or trigger that event on an element.
		
		Bind an event handler to the "keypress" JavaScript event, or trigger that event on an element.
	**/
	@:overload(function(?handler:haxe.extern.EitherType<Bool, (t:global.jquery.KeyPressEvent<TElement, Any, TElement, TElement>, args:std.Array<Any>) -> Any>):JQuery<TElement> { })
	function keypress<TData>(eventData:TData, handler:(t:global.jquery.KeyPressEvent<TElement, TData, TElement, TElement>, args:std.Array<Any>) -> Any):JQuery<TElement>;
	/**
		Bind an event handler to the "keyup" JavaScript event, or trigger that event on an element.
		
		Bind an event handler to the "keyup" JavaScript event, or trigger that event on an element.
	**/
	@:overload(function(?handler:haxe.extern.EitherType<Bool, (t:global.jquery.KeyUpEvent<TElement, Any, TElement, TElement>, args:std.Array<Any>) -> Any>):JQuery<TElement> { })
	function keyup<TData>(eventData:TData, handler:(t:global.jquery.KeyUpEvent<TElement, TData, TElement, TElement>, args:std.Array<Any>) -> Any):JQuery<TElement>;
	/**
		Reduce the set of matched elements to the final one in the set.
	**/
	function last():JQuery<TElement>;
	/**
		Load data from the server and place the returned HTML into the matched element.
		
		Load data from the server and place the returned HTML into the matched element.
	**/
	@:overload(function(url:String, ?complete_data:haxe.extern.EitherType<String, haxe.extern.EitherType<global.jquery.PlainObject<Any>, (responseText:String, textStatus:String, jqXHR:global.jquery.JqXHR<Any>) -> Void>>):JQuery<TElement> { })
	function load(url:String, data:haxe.extern.EitherType<String, global.jquery.PlainObject<Any>>, complete:(responseText:String, textStatus:String, jqXHR:global.jquery.JqXHR<Any>) -> Void):JQuery<TElement>;
	/**
		Pass each element in the current matched set through a function, producing a new jQuery object containing the return values.
	**/
	function map<TReturn>(callback:(index:Float, domElement:TElement) -> Null<haxe.extern.EitherType<TReturn, std.Array<TReturn>>>):JQuery<TReturn>;
	/**
		Bind an event handler to the "mousedown" JavaScript event, or trigger that event on an element.
		
		Bind an event handler to the "mousedown" JavaScript event, or trigger that event on an element.
	**/
	@:overload(function(?handler:haxe.extern.EitherType<Bool, (t:global.jquery.MouseDownEvent<TElement, Any, TElement, TElement>, args:std.Array<Any>) -> Any>):JQuery<TElement> { })
	function mousedown<TData>(eventData:TData, handler:(t:global.jquery.MouseDownEvent<TElement, TData, TElement, TElement>, args:std.Array<Any>) -> Any):JQuery<TElement>;
	/**
		Bind an event handler to be fired when the mouse enters an element, or trigger that handler on an element.
		
		Bind an event handler to be fired when the mouse enters an element, or trigger that handler on an element.
	**/
	@:overload(function(?handler:haxe.extern.EitherType<Bool, (t:global.jquery.MouseEnterEvent<TElement, Any, TElement, TElement>, args:std.Array<Any>) -> Any>):JQuery<TElement> { })
	function mouseenter<TData>(eventData:TData, handler:(t:global.jquery.MouseEnterEvent<TElement, TData, TElement, TElement>, args:std.Array<Any>) -> Any):JQuery<TElement>;
	/**
		Bind an event handler to be fired when the mouse leaves an element, or trigger that handler on an element.
		
		Bind an event handler to be fired when the mouse leaves an element, or trigger that handler on an element.
	**/
	@:overload(function(?handler:haxe.extern.EitherType<Bool, (t:global.jquery.MouseLeaveEvent<TElement, Any, TElement, TElement>, args:std.Array<Any>) -> Any>):JQuery<TElement> { })
	function mouseleave<TData>(eventData:TData, handler:(t:global.jquery.MouseLeaveEvent<TElement, TData, TElement, TElement>, args:std.Array<Any>) -> Any):JQuery<TElement>;
	/**
		Bind an event handler to the "mousemove" JavaScript event, or trigger that event on an element.
		
		Bind an event handler to the "mousemove" JavaScript event, or trigger that event on an element.
	**/
	@:overload(function(?handler:haxe.extern.EitherType<Bool, (t:global.jquery.MouseMoveEvent<TElement, Any, TElement, TElement>, args:std.Array<Any>) -> Any>):JQuery<TElement> { })
	function mousemove<TData>(eventData:TData, handler:(t:global.jquery.MouseMoveEvent<TElement, TData, TElement, TElement>, args:std.Array<Any>) -> Any):JQuery<TElement>;
	/**
		Bind an event handler to the "mouseout" JavaScript event, or trigger that event on an element.
		
		Bind an event handler to the "mouseout" JavaScript event, or trigger that event on an element.
	**/
	@:overload(function(?handler:haxe.extern.EitherType<Bool, (t:global.jquery.MouseOutEvent<TElement, Any, TElement, TElement>, args:std.Array<Any>) -> Any>):JQuery<TElement> { })
	function mouseout<TData>(eventData:TData, handler:(t:global.jquery.MouseOutEvent<TElement, TData, TElement, TElement>, args:std.Array<Any>) -> Any):JQuery<TElement>;
	/**
		Bind an event handler to the "mouseover" JavaScript event, or trigger that event on an element.
		
		Bind an event handler to the "mouseover" JavaScript event, or trigger that event on an element.
	**/
	@:overload(function(?handler:haxe.extern.EitherType<Bool, (t:global.jquery.MouseOverEvent<TElement, Any, TElement, TElement>, args:std.Array<Any>) -> Any>):JQuery<TElement> { })
	function mouseover<TData>(eventData:TData, handler:(t:global.jquery.MouseOverEvent<TElement, TData, TElement, TElement>, args:std.Array<Any>) -> Any):JQuery<TElement>;
	/**
		Bind an event handler to the "mouseup" JavaScript event, or trigger that event on an element.
		
		Bind an event handler to the "mouseup" JavaScript event, or trigger that event on an element.
	**/
	@:overload(function(?handler:haxe.extern.EitherType<Bool, (t:global.jquery.MouseUpEvent<TElement, Any, TElement, TElement>, args:std.Array<Any>) -> Any>):JQuery<TElement> { })
	function mouseup<TData>(eventData:TData, handler:(t:global.jquery.MouseUpEvent<TElement, TData, TElement, TElement>, args:std.Array<Any>) -> Any):JQuery<TElement>;
	/**
		Get the immediately following sibling of each element in the set of matched elements. If a selector is provided, it retrieves the next sibling only if it matches that selector.
	**/
	function next(?selector:String):JQuery<TElement>;
	/**
		Get all following siblings of each element in the set of matched elements, optionally filtered by a selector.
	**/
	function nextAll(?selector:String):JQuery<TElement>;
	/**
		Get all following siblings of each element up to but not including the element matched by the selector, DOM node, or jQuery object passed.
	**/
	function nextUntil(?selector_element:haxe.extern.EitherType<String, haxe.extern.EitherType<ts.html.IElement, JQuery<ts.html.IHTMLElement>>>, ?filter:String):JQuery<TElement>;
	/**
		Remove elements from the set of matched elements.
	**/
	function not(selector_function_selection:haxe.extern.EitherType<String, haxe.extern.EitherType<ts.html.IElement, haxe.extern.EitherType<JQuery<ts.html.IHTMLElement>, haxe.extern.EitherType<std.Array<ts.html.IElement>, (index:Float, element:TElement) -> Bool>>>>):JQuery<TElement>;
	/**
		Remove an event handler.
		
		Remove an event handler.
		
		Remove an event handler.
		
		Remove an event handler.
	**/
	@:overload(function<TType>(events:TType, ?selector_handler:haxe.extern.EitherType<String, haxe.extern.EitherType<Bool, (t:global.jquery.TriggeredEvent<TElement, Any, Any, Any, Any>, args:std.Array<Any>) -> Any>>):JQuery<TElement> { })
	@:overload(function(events:global.jquery.TypeEventHandlers<TElement, Any, Any, Any>, ?selector:String):JQuery<TElement> { })
	@:overload(function(?event:global.jquery.TriggeredEvent<TElement, Any, Any, Any>):JQuery<TElement> { })
	function off<TType>(events:TType, selector:String, handler:haxe.extern.EitherType<Bool, (t:global.jquery.TriggeredEvent<TElement, Any, Any, Any, Any>, args:std.Array<Any>) -> Any>):JQuery<TElement>;
	/**
		Set the current coordinates of every element in the set of matched elements, relative to the document.
		
		Get the current coordinates of the first element in the set of matched elements, relative to the document.
	**/
	@:overload(function():Null<global.jquery.Coordinates> { })
	function offset(coordinates_function:Any):JQuery<TElement>;
	/**
		Get the closest ancestor element that is positioned.
	**/
	function offsetParent():JQuery<TElement>;
	/**
		Attach an event handler function for one or more events to the selected elements.
		
		Attach an event handler function for one or more events to the selected elements.
		
		Attach an event handler function for one or more events to the selected elements.
		
		Attach an event handler function for one or more events to the selected elements.
		
		Attach an event handler function for one or more events to the selected elements.
		
		Attach an event handler function for one or more events to the selected elements.
		
		Attach an event handler function for one or more events to the selected elements.
		
		Attach an event handler function for one or more events to the selected elements.
		
		Attach an event handler function for one or more events to the selected elements.
		
		Attach an event handler function for one or more events to the selected elements.
		
		Attach an event handler function for one or more events to the selected elements.
		
		Attach an event handler function for one or more events to the selected elements.
		
		Attach an event handler function for one or more events to the selected elements.
	**/
	@:overload(function<TType, TData>(events:TType, selector:Null<Any>, data:TData, handler:(t:global.jquery.TriggeredEvent<TElement, TData, TElement, TElement, Any>, args:std.Array<Any>) -> Any):JQuery<TElement> { })
	@:overload(function(events:String, selector:Null<String>, data:Any, handler:(event:JQueryEventObject) -> Void):JQuery<TElement> { })
	@:overload(function<TType>(events:TType, selector:String, handler:haxe.extern.EitherType<Bool, (t:global.jquery.TriggeredEvent<TElement, Null<Any>, Any, Any, Any>, args:std.Array<Any>) -> Any>):JQuery<TElement> { })
	@:overload(function<TType, TData>(events:TType, data:TData, handler:(t:global.jquery.TriggeredEvent<TElement, TData, TElement, TElement, Any>, args:std.Array<Any>) -> Any):JQuery<TElement> { })
	@:overload(function(events:String, selector_data:Any, handler:(event:JQueryEventObject) -> Void):JQuery<TElement> { })
	@:overload(function<TType>(events:TType, handler:haxe.extern.EitherType<Bool, (t:global.jquery.TriggeredEvent<TElement, Null<Any>, TElement, TElement, Any>, args:std.Array<Any>) -> Any>):JQuery<TElement> { })
	@:overload(function(events:String, handler:(event:JQueryEventObject) -> Void):JQuery<TElement> { })
	@:overload(function<TData>(events:global.jquery.TypeEventHandlers<TElement, TData, Any, Any>, selector:String, data:TData):JQuery<TElement> { })
	@:overload(function<TData>(events:global.jquery.TypeEventHandlers<TElement, TData, TElement, TElement>, selector:Null<Any>, data:TData):JQuery<TElement> { })
	@:overload(function(events:global.jquery.TypeEventHandlers<TElement, Null<Any>, Any, Any>, selector:String):JQuery<TElement> { })
	@:overload(function<TData>(events:global.jquery.TypeEventHandlers<TElement, TData, TElement, TElement>, data:TData):JQuery<TElement> { })
	@:overload(function(events:global.jquery.TypeEventHandlers<TElement, Null<Any>, TElement, TElement>):JQuery<TElement> { })
	function on<TType, TData>(events:TType, selector:String, data:TData, handler:(t:global.jquery.TriggeredEvent<TElement, TData, Any, Any, Any>, args:std.Array<Any>) -> Any):JQuery<TElement>;
	/**
		Attach a handler to an event for the elements. The handler is executed at most once per element per event type.
		
		Attach a handler to an event for the elements. The handler is executed at most once per element per event type.
		
		Attach a handler to an event for the elements. The handler is executed at most once per element per event type.
		
		Attach a handler to an event for the elements. The handler is executed at most once per element per event type.
		
		Attach a handler to an event for the elements. The handler is executed at most once per element per event type.
		
		Attach a handler to an event for the elements. The handler is executed at most once per element per event type.
		
		Attach a handler to an event for the elements. The handler is executed at most once per element per event type.
		
		Attach a handler to an event for the elements. The handler is executed at most once per element per event type.
		
		Attach a handler to an event for the elements. The handler is executed at most once per element per event type.
		
		Attach a handler to an event for the elements. The handler is executed at most once per element per event type.
	**/
	@:overload(function<TType, TData>(events:TType, selector:Null<Any>, data:TData, handler:(t:global.jquery.TriggeredEvent<TElement, TData, TElement, TElement, Any>, args:std.Array<Any>) -> Any):JQuery<TElement> { })
	@:overload(function<TType>(events:TType, selector:String, handler:haxe.extern.EitherType<Bool, (t:global.jquery.TriggeredEvent<TElement, Null<Any>, Any, Any, Any>, args:std.Array<Any>) -> Any>):JQuery<TElement> { })
	@:overload(function<TType, TData>(events:TType, data:TData, handler:(t:global.jquery.TriggeredEvent<TElement, TData, TElement, TElement, Any>, args:std.Array<Any>) -> Any):JQuery<TElement> { })
	@:overload(function<TType>(events:TType, handler:haxe.extern.EitherType<Bool, (t:global.jquery.TriggeredEvent<TElement, Null<Any>, TElement, TElement, Any>, args:std.Array<Any>) -> Any>):JQuery<TElement> { })
	@:overload(function<TData>(events:global.jquery.TypeEventHandlers<TElement, TData, Any, Any>, selector:String, data:TData):JQuery<TElement> { })
	@:overload(function<TData>(events:global.jquery.TypeEventHandlers<TElement, TData, TElement, TElement>, selector:Null<Any>, data:TData):JQuery<TElement> { })
	@:overload(function(events:global.jquery.TypeEventHandlers<TElement, Null<Any>, Any, Any>, selector:String):JQuery<TElement> { })
	@:overload(function<TData>(events:global.jquery.TypeEventHandlers<TElement, TData, TElement, TElement>, data:TData):JQuery<TElement> { })
	@:overload(function(events:global.jquery.TypeEventHandlers<TElement, Null<Any>, TElement, TElement>):JQuery<TElement> { })
	function one<TType, TData>(events:TType, selector:String, data:TData, handler:(t:global.jquery.TriggeredEvent<TElement, TData, Any, Any, Any>, args:std.Array<Any>) -> Any):JQuery<TElement>;
	/**
		Set the CSS outer height of each element in the set of matched elements.
		
		Get the current computed outer height (including padding, border, and optionally margin) for the first element in the set of matched elements.
	**/
	@:overload(function(?includeMargin:Bool):Null<Float> { })
	function outerHeight(value_function:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, (index:Float, height:Float) -> haxe.extern.EitherType<String, Float>>>, ?includeMargin:Bool):JQuery<TElement>;
	/**
		Set the CSS outer width of each element in the set of matched elements.
		
		Get the current computed outer width (including padding, border, and optionally margin) for the first element in the set of matched elements.
	**/
	@:overload(function(?includeMargin:Bool):Null<Float> { })
	function outerWidth(value_function:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, (index:Float, width:Float) -> haxe.extern.EitherType<String, Float>>>, ?includeMargin:Bool):JQuery<TElement>;
	/**
		Get the parent of each element in the current set of matched elements, optionally filtered by a selector.
	**/
	function parent(?selector:String):JQuery<TElement>;
	/**
		Get the ancestors of each element in the current set of matched elements, optionally filtered by a selector.
	**/
	function parents(?selector:String):JQuery<TElement>;
	/**
		Get the ancestors of each element in the current set of matched elements, up to but not including the element matched by the selector, DOM node, or jQuery object.
	**/
	function parentsUntil(?selector_element:haxe.extern.EitherType<String, haxe.extern.EitherType<ts.html.IElement, JQuery<ts.html.IHTMLElement>>>, ?filter:String):JQuery<TElement>;
	/**
		Get the current coordinates of the first element in the set of matched elements, relative to the offset parent.
	**/
	function position():global.jquery.Coordinates;
	/**
		Insert content, specified by the parameter, to the beginning of each element in the set of matched elements.
		
		Insert content, specified by the parameter, to the beginning of each element in the set of matched elements.
	**/
	@:overload(function(fun_Tion:(index:Float, html:String) -> haxe.extern.EitherType<String, haxe.extern.EitherType<ts.html.IElement, haxe.extern.EitherType<ts.html.IText, haxe.extern.EitherType<ts.html.IComment, haxe.extern.EitherType<ts.html.IDocumentFragment, haxe.extern.EitherType<JQuery<haxe.extern.EitherType<ts.html.IElement, haxe.extern.EitherType<ts.html.IText, haxe.extern.EitherType<ts.html.IComment, ts.html.IDocumentFragment>>>>, std.Array<haxe.extern.EitherType<ts.html.IElement, haxe.extern.EitherType<ts.html.IText, haxe.extern.EitherType<ts.html.IComment, haxe.extern.EitherType<ts.html.IDocumentFragment, JQuery<haxe.extern.EitherType<ts.html.IElement, haxe.extern.EitherType<ts.html.IText, haxe.extern.EitherType<ts.html.IComment, ts.html.IDocumentFragment>>>>>>>>>>>>>>>):JQuery<TElement> { })
	function prepend(contents:std.Array<haxe.extern.EitherType<String, haxe.extern.EitherType<ts.html.IElement, haxe.extern.EitherType<ts.html.IText, haxe.extern.EitherType<ts.html.IComment, haxe.extern.EitherType<ts.html.IDocumentFragment, haxe.extern.EitherType<JQuery<haxe.extern.EitherType<ts.html.IElement, haxe.extern.EitherType<ts.html.IText, haxe.extern.EitherType<ts.html.IComment, ts.html.IDocumentFragment>>>>, std.Array<haxe.extern.EitherType<ts.html.IElement, haxe.extern.EitherType<ts.html.IText, haxe.extern.EitherType<ts.html.IComment, haxe.extern.EitherType<ts.html.IDocumentFragment, JQuery<haxe.extern.EitherType<ts.html.IElement, haxe.extern.EitherType<ts.html.IText, haxe.extern.EitherType<ts.html.IComment, ts.html.IDocumentFragment>>>>>>>>>>>>>>>>):JQuery<TElement>;
	/**
		Insert every element in the set of matched elements to the beginning of the target.
	**/
	function prependTo(target:haxe.extern.EitherType<String, haxe.extern.EitherType<ts.html.IElement, haxe.extern.EitherType<JQuery<ts.html.IHTMLElement>, haxe.extern.EitherType<ts.html.IDocumentFragment, std.Array<haxe.extern.EitherType<ts.html.IElement, ts.html.IDocumentFragment>>>>>>):JQuery<TElement>;
	/**
		Get the immediately preceding sibling of each element in the set of matched elements. If a selector is provided, it retrieves the previous sibling only if it matches that selector.
	**/
	function prev(?selector:String):JQuery<TElement>;
	/**
		Get all preceding siblings of each element in the set of matched elements, optionally filtered by a selector.
	**/
	function prevAll(?selector:String):JQuery<TElement>;
	/**
		Get all preceding siblings of each element up to but not including the element matched by the selector, DOM node, or jQuery object.
	**/
	function prevUntil(?selector_element:haxe.extern.EitherType<String, haxe.extern.EitherType<ts.html.IElement, JQuery<ts.html.IHTMLElement>>>, ?filter:String):JQuery<TElement>;
	/**
		Return a Promise object to observe when all actions of a certain type bound to the collection, queued or not, have finished.
		
		Return a Promise object to observe when all actions of a certain type bound to the collection, queued or not, have finished.
		
		Return a Promise object to observe when all actions of a certain type bound to the collection, queued or not, have finished.
	**/
	@:overload(function<T>(target:T):Any { })
	@:overload(function(?type:String):global.jquery.Promise<JQuery<TElement>, Any, Any> { })
	function promise<T>(type:String, target:T):Any;
	/**
		Set one or more properties for the set of matched elements.
		
		Set one or more properties for the set of matched elements.
		
		Get the value of a property for the first element in the set of matched elements.
	**/
	@:overload(function(properties:global.jquery.PlainObject<Any>):JQuery<TElement> { })
	@:overload(function(propertyName:String):Any { })
	function prop(propertyName:String, value_function:Null<haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<Bool, haxe.extern.EitherType<js.lib.Symbol, haxe.extern.EitherType<Any, (index:Float, oldPropertyValue:Any) -> Any>>>>>>):JQuery<TElement>;
	/**
		Add a collection of DOM elements onto the jQuery stack.
		
		Add a collection of DOM elements onto the jQuery stack.
	**/
	@:overload(function(elements:ts.lib.ArrayLike<ts.html.IElement>):JQuery<TElement> { })
	function pushStack(elements:ts.lib.ArrayLike<ts.html.IElement>, name:String, args:std.Array<Any>):JQuery<TElement>;
	/**
		Manipulate the queue of functions to be executed, once for each matched element.
		
		Manipulate the queue of functions to be executed, once for each matched element.
		
		Show the queue of functions to be executed on the matched elements.
	**/
	@:overload(function(newQueue:haxe.extern.EitherType<(next:() -> Void) -> Void, std.Array<(next:() -> Void) -> Void>>):JQuery<TElement> { })
	@:overload(function(?queueName:String):{
		@:native("0")
		var Zero : String;
	} & std.Array<(next:() -> Void) -> Void> { })
	function queue(queueName:String, newQueue:haxe.extern.EitherType<(next:() -> Void) -> Void, std.Array<(next:() -> Void) -> Void>>):JQuery<TElement>;
	/**
		Specify a function to execute when the DOM is fully loaded.
	**/
	function ready(handler:(Dollar:JQueryStatic) -> Void):JQuery<TElement>;
	/**
		Remove the set of matched elements from the DOM.
	**/
	function remove(?selector:String):JQuery<TElement>;
	/**
		Remove an attribute from each element in the set of matched elements.
	**/
	function removeAttr(attributeName:String):JQuery<TElement>;
	/**
		Remove a single class, multiple classes, or all classes from each element in the set of matched elements.
	**/
	function removeClass(?className_function:haxe.extern.EitherType<String, haxe.extern.EitherType<std.Array<String>, (index:Float, className:String) -> String>>):JQuery<TElement>;
	/**
		Remove a previously-stored piece of data.
	**/
	function removeData(?name:haxe.extern.EitherType<String, std.Array<String>>):JQuery<TElement>;
	/**
		Remove a property for the set of matched elements.
	**/
	function removeProp(propertyName:String):JQuery<TElement>;
	/**
		Replace each target element with the set of matched elements.
	**/
	function replaceAll(target:haxe.extern.EitherType<String, haxe.extern.EitherType<ts.html.IElement, haxe.extern.EitherType<JQuery<ts.html.IHTMLElement>, std.Array<ts.html.IElement>>>>):JQuery<TElement>;
	/**
		Replace each element in the set of matched elements with the provided new content and return the set of elements that was removed.
	**/
	function replaceWith(newContent_function:haxe.extern.EitherType<String, haxe.extern.EitherType<ts.html.IElement, haxe.extern.EitherType<ts.html.IText, haxe.extern.EitherType<ts.html.IComment, haxe.extern.EitherType<ts.html.IDocumentFragment, haxe.extern.EitherType<std.Array<ts.html.IElement>, haxe.extern.EitherType<JQuery<haxe.extern.EitherType<ts.html.IElement, haxe.extern.EitherType<ts.html.IText, haxe.extern.EitherType<ts.html.IComment, ts.html.IDocumentFragment>>>>, (index:Float, oldhtml:String) -> haxe.extern.EitherType<String, haxe.extern.EitherType<ts.html.IElement, haxe.extern.EitherType<ts.html.IText, haxe.extern.EitherType<ts.html.IComment, haxe.extern.EitherType<ts.html.IDocumentFragment, haxe.extern.EitherType<std.Array<ts.html.IElement>, JQuery<haxe.extern.EitherType<ts.html.IElement, haxe.extern.EitherType<ts.html.IText, haxe.extern.EitherType<ts.html.IComment, ts.html.IDocumentFragment>>>>>>>>>>>>>>>>>):JQuery<TElement>;
	/**
		Bind an event handler to the "resize" JavaScript event, or trigger that event on an element.
		
		Bind an event handler to the "resize" JavaScript event, or trigger that event on an element.
	**/
	@:overload(function(?handler:haxe.extern.EitherType<Bool, (t:global.jquery.ResizeEvent<TElement, Any, TElement, TElement>, args:std.Array<Any>) -> Any>):JQuery<TElement> { })
	function resize<TData>(eventData:TData, handler:(t:global.jquery.ResizeEvent<TElement, TData, TElement, TElement>, args:std.Array<Any>) -> Any):JQuery<TElement>;
	/**
		Bind an event handler to the "scroll" JavaScript event, or trigger that event on an element.
		
		Bind an event handler to the "scroll" JavaScript event, or trigger that event on an element.
	**/
	@:overload(function(?handler:haxe.extern.EitherType<Bool, (t:global.jquery.ScrollEvent<TElement, Any, TElement, TElement>, args:std.Array<Any>) -> Any>):JQuery<TElement> { })
	function scroll<TData>(eventData:TData, handler:(t:global.jquery.ScrollEvent<TElement, TData, TElement, TElement>, args:std.Array<Any>) -> Any):JQuery<TElement>;
	/**
		Set the current horizontal position of the scroll bar for each of the set of matched elements.
		
		Get the current horizontal position of the scroll bar for the first element in the set of matched elements.
	**/
	@:overload(function():Null<Float> { })
	function scrollLeft(value:Float):JQuery<TElement>;
	/**
		Set the current vertical position of the scroll bar for each of the set of matched elements.
		
		Get the current vertical position of the scroll bar for the first element in the set of matched elements or set the vertical position of the scroll bar for every matched element.
	**/
	@:overload(function():Null<Float> { })
	function scrollTop(value:Float):JQuery<TElement>;
	/**
		Bind an event handler to the "select" JavaScript event, or trigger that event on an element.
		
		Bind an event handler to the "select" JavaScript event, or trigger that event on an element.
	**/
	@:overload(function(?handler:haxe.extern.EitherType<Bool, (t:global.jquery.SelectEvent<TElement, Any, TElement, TElement>, args:std.Array<Any>) -> Any>):JQuery<TElement> { })
	function select<TData>(eventData:TData, handler:(t:global.jquery.SelectEvent<TElement, TData, TElement, TElement>, args:std.Array<Any>) -> Any):JQuery<TElement>;
	/**
		Encode a set of form elements as a string for submission.
	**/
	function serialize():String;
	/**
		Encode a set of form elements as an array of names and values.
	**/
	function serializeArray():std.Array<global.jquery.NameValuePair>;
	/**
		Display the matched elements.
		
		Display the matched elements.
		
		Display the matched elements.
	**/
	@:overload(function(duration:haxe.extern.EitherType<Float, String>, easing_complete:haxe.extern.EitherType<String, () -> Void>):JQuery<TElement> { })
	@:overload(function(?duration_complete_options:haxe.extern.EitherType<Float, haxe.extern.EitherType<String, haxe.extern.EitherType<global.jquery.EffectsOptions<TElement>, () -> Void>>>):JQuery<TElement> { })
	function show(duration:haxe.extern.EitherType<Float, String>, easing:String, complete:() -> Void):JQuery<TElement>;
	/**
		Get the siblings of each element in the set of matched elements, optionally filtered by a selector.
	**/
	function siblings(?selector:String):JQuery<TElement>;
	/**
		Reduce the set of matched elements to a subset specified by a range of indices.
	**/
	function slice(start:Float, ?end:Float):JQuery<TElement>;
	/**
		Display the matched elements with a sliding motion.
		
		Display the matched elements with a sliding motion.
		
		Display the matched elements with a sliding motion.
	**/
	@:overload(function(duration_easing:haxe.extern.EitherType<String, Float>, complete:() -> Void):JQuery<TElement> { })
	@:overload(function(?duration_easing_complete_options:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<global.jquery.EffectsOptions<TElement>, () -> Void>>>):JQuery<TElement> { })
	function slideDown(duration:haxe.extern.EitherType<Float, String>, easing:String, ?complete:() -> Void):JQuery<TElement>;
	/**
		Display or hide the matched elements with a sliding motion.
		
		Display or hide the matched elements with a sliding motion.
		
		Display or hide the matched elements with a sliding motion.
	**/
	@:overload(function(duration_easing:haxe.extern.EitherType<String, Float>, complete:() -> Void):JQuery<TElement> { })
	@:overload(function(?duration_easing_complete_options:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<global.jquery.EffectsOptions<TElement>, () -> Void>>>):JQuery<TElement> { })
	function slideToggle(duration:haxe.extern.EitherType<Float, String>, easing:String, ?complete:() -> Void):JQuery<TElement>;
	/**
		Hide the matched elements with a sliding motion.
		
		Hide the matched elements with a sliding motion.
		
		Hide the matched elements with a sliding motion.
	**/
	@:overload(function(duration_easing:haxe.extern.EitherType<String, Float>, complete:() -> Void):JQuery<TElement> { })
	@:overload(function(?duration_easing_complete_options:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<global.jquery.EffectsOptions<TElement>, () -> Void>>>):JQuery<TElement> { })
	function slideUp(duration:haxe.extern.EitherType<Float, String>, easing:String, ?complete:() -> Void):JQuery<TElement>;
	/**
		Stop the currently-running animation on the matched elements.
		
		Stop the currently-running animation on the matched elements.
	**/
	@:overload(function(?clearQueue:Bool, ?jumpToEnd:Bool):JQuery<TElement> { })
	function stop(queue:String, ?clearQueue:Bool, ?jumpToEnd:Bool):JQuery<TElement>;
	/**
		Bind an event handler to the "submit" JavaScript event, or trigger that event on an element.
		
		Bind an event handler to the "submit" JavaScript event, or trigger that event on an element.
	**/
	@:overload(function(?handler:haxe.extern.EitherType<Bool, (t:global.jquery.SubmitEvent<TElement, Any, TElement, TElement>, args:std.Array<Any>) -> Any>):JQuery<TElement> { })
	function submit<TData>(eventData:TData, handler:(t:global.jquery.SubmitEvent<TElement, TData, TElement, TElement>, args:std.Array<Any>) -> Any):JQuery<TElement>;
	/**
		Set the content of each element in the set of matched elements to the specified text.
		
		Get the combined text contents of each element in the set of matched elements, including their descendants.
	**/
	@:overload(function():String { })
	function text(text_function:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<Bool, (index:Float, text:String) -> haxe.extern.EitherType<String, haxe.extern.EitherType<Float, Bool>>>>>):JQuery<TElement>;
	/**
		Retrieve all the elements contained in the jQuery set, as an array.
	**/
	function toArray():std.Array<TElement>;
	/**
		Display or hide the matched elements.
		
		Display or hide the matched elements.
		
		Display or hide the matched elements.
	**/
	@:overload(function(duration:haxe.extern.EitherType<Float, String>, complete:() -> Void):JQuery<TElement> { })
	@:overload(function(?duration_complete_options_display:haxe.extern.EitherType<Float, haxe.extern.EitherType<Bool, haxe.extern.EitherType<String, haxe.extern.EitherType<global.jquery.EffectsOptions<TElement>, () -> Void>>>>):JQuery<TElement> { })
	function toggle(duration:haxe.extern.EitherType<Float, String>, easing:String, ?complete:() -> Void):JQuery<TElement>;
	/**
		Add or remove one or more classes from each element in the set of matched elements, depending on either the class's presence or the value of the state argument.
		
		Add or remove one or more classes from each element in the set of matched elements, depending on either the class's presence or the value of the state argument.
	**/
	@:overload(function(?state:Bool):JQuery<TElement> { })
	function toggleClass<TState>(className_function:haxe.extern.EitherType<String, haxe.extern.EitherType<std.Array<String>, (index:Float, className:String, state:TState) -> String>>, ?state:TState):JQuery<TElement>;
	/**
		Execute all handlers and behaviors attached to the matched elements for the given event type.
	**/
	function trigger(eventType_event:haxe.extern.EitherType<String, global.jquery.Event>, ?extraParameters:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<Bool, haxe.extern.EitherType<std.Array<Any>, global.jquery.PlainObject<Any>>>>>):JQuery<TElement>;
	/**
		Execute all handlers attached to an element for an event.
	**/
	function triggerHandler(eventType_event:haxe.extern.EitherType<String, global.jquery.Event>, ?extraParameters:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<Bool, haxe.extern.EitherType<std.Array<Any>, global.jquery.PlainObject<Any>>>>>):Any;
	/**
		Remove a previously-attached event handler from the elements.
		
		Remove a previously-attached event handler from the elements.
	**/
	@:overload(function(?event:haxe.extern.EitherType<String, global.jquery.TriggeredEvent<TElement, Any, Any, Any>>):JQuery<TElement> { })
	function unbind<TType>(event:TType, handler:haxe.extern.EitherType<Bool, (t:global.jquery.TriggeredEvent<TElement, Any, TElement, TElement, Any>, args:std.Array<Any>) -> Any>):JQuery<TElement>;
	/**
		Remove a handler from the event for all elements which match the current selector, based upon a specific set of root elements.
		
		Remove a handler from the event for all elements which match the current selector, based upon a specific set of root elements.
		
		Remove a handler from the event for all elements which match the current selector, based upon a specific set of root elements.
	**/
	@:overload(function(selector:String, eventType_events:haxe.extern.EitherType<String, global.jquery.TypeEventHandlers<TElement, Any, Any, Any>>):JQuery<TElement> { })
	@:overload(function(?namespace:String):JQuery<TElement> { })
	function undelegate<TType>(selector:String, eventType:TType, handler:haxe.extern.EitherType<Bool, (t:global.jquery.TriggeredEvent<TElement, Any, Any, Any, Any>, args:std.Array<Any>) -> Any>):JQuery<TElement>;
	/**
		Remove the parents of the set of matched elements from the DOM, leaving the matched elements in their place.
	**/
	function unwrap(?selector:String):JQuery<TElement>;
	/**
		Set the value of each element in the set of matched elements.
		
		Get the current value of the first element in the set of matched elements.
	**/
	@:overload(function():Null<haxe.extern.EitherType<String, haxe.extern.EitherType<Float, std.Array<String>>>> { })
	function val(value_function:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<std.Array<String>, (index:Float, value:String) -> String>>>):JQuery<TElement>;
	/**
		Set the CSS width of each element in the set of matched elements.
		
		Get the current computed width for the first element in the set of matched elements.
	**/
	@:overload(function():Null<Float> { })
	function width(value_function:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, (index:Float, value:Float) -> haxe.extern.EitherType<String, Float>>>):JQuery<TElement>;
	/**
		Wrap an HTML structure around each element in the set of matched elements.
	**/
	function wrap(wrappingElement_function:haxe.extern.EitherType<String, haxe.extern.EitherType<ts.html.IElement, haxe.extern.EitherType<JQuery<ts.html.IHTMLElement>, (index:Float) -> haxe.extern.EitherType<String, JQuery<ts.html.IHTMLElement>>>>>):JQuery<TElement>;
	/**
		Wrap an HTML structure around all elements in the set of matched elements.
	**/
	function wrapAll(wrappingElement_function:haxe.extern.EitherType<String, haxe.extern.EitherType<ts.html.IElement, haxe.extern.EitherType<JQuery<ts.html.IHTMLElement>, () -> haxe.extern.EitherType<String, JQuery<ts.html.IHTMLElement>>>>>):JQuery<TElement>;
	/**
		Wrap an HTML structure around the content of each element in the set of matched elements.
	**/
	function wrapInner(wrappingElement_function:haxe.extern.EitherType<String, haxe.extern.EitherType<ts.html.IElement, haxe.extern.EitherType<JQuery<ts.html.IHTMLElement>, (index:Float) -> haxe.extern.EitherType<String, haxe.extern.EitherType<ts.html.IElement, JQuery<ts.html.IHTMLElement>>>>>>):JQuery<TElement>;
};