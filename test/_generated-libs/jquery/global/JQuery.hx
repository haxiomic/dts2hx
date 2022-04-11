package global;

typedef JQuery<TElement> = {
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
	@:overload(function(selector_elements_html_selection:ts.AnyOf7<String, js.html.DOMElement, JQuery<js.html.Element>, js.html.Text, js.html.Comment, js.html.DocumentFragment, Array<js.html.DOMElement>>):JQuery<TElement> { })
	function add(selector:String, context:js.html.DOMElement):JQuery<TElement>;
	/**
		Add the previous set of elements on the stack to the current set, optionally filtered by a selector.
	**/
	function addBack(?selector:String):JQuery<TElement>;
	/**
		Adds the specified class(es) to each element in the set of matched elements.
	**/
	function addClass(className_function:ts.AnyOf3<String, Array<String>, (index:Float, currentClassName:String) -> String>):JQuery<TElement>;
	/**
		Insert content, specified by the parameter, after each element in the set of matched elements.
		
		Insert content, specified by the parameter, after each element in the set of matched elements.
	**/
	@:overload(function(function_function_Html:(index:Float, html:String) -> ts.AnyOf7<String, js.html.DOMElement, js.html.Text, js.html.Comment, js.html.DocumentFragment, JQuery<global.jquery.Node>, Array<ts.AnyOf5<js.html.DOMElement, js.html.Text, js.html.Comment, js.html.DocumentFragment, JQuery<global.jquery.Node>>>>):JQuery<TElement> { })
	function after(contents:haxe.extern.Rest<ts.AnyOf7<String, js.html.DOMElement, js.html.Text, js.html.Comment, js.html.DocumentFragment, JQuery<global.jquery.Node>, Array<ts.AnyOf5<js.html.DOMElement, js.html.Text, js.html.Comment, js.html.DocumentFragment, JQuery<global.jquery.Node>>>>>):JQuery<TElement>;
	/**
		Register a handler to be called when Ajax requests complete. This is an AjaxEvent.
	**/
	function ajaxComplete(handler:(event:global.jquery.TriggeredEvent<js.html.Document, Null<Any>, js.html.Document, js.html.Document>, jqXHR:global.jquery.JqXHR<Dynamic>, ajaxOptions:global.jquery.AjaxSettings<Dynamic>) -> ts.AnyOf2<Bool, ts.Undefined>):JQuery<TElement>;
	/**
		Register a handler to be called when Ajax requests complete with an error. This is an Ajax Event.
	**/
	function ajaxError(handler:(event:global.jquery.TriggeredEvent<js.html.Document, Null<Any>, js.html.Document, js.html.Document>, jqXHR:global.jquery.JqXHR<Dynamic>, ajaxSettings:global.jquery.AjaxSettings<Dynamic>, thrownError:String) -> ts.AnyOf2<Bool, ts.Undefined>):JQuery<TElement>;
	/**
		Attach a function to be executed before an Ajax request is sent. This is an Ajax Event.
	**/
	function ajaxSend(handler:(event:global.jquery.TriggeredEvent<js.html.Document, Null<Any>, js.html.Document, js.html.Document>, jqXHR:global.jquery.JqXHR<Dynamic>, ajaxOptions:global.jquery.AjaxSettings<Dynamic>) -> ts.AnyOf2<Bool, ts.Undefined>):JQuery<TElement>;
	/**
		Register a handler to be called when the first Ajax request begins. This is an Ajax Event.
	**/
	function ajaxStart(handler:() -> ts.AnyOf2<Bool, ts.Undefined>):JQuery<TElement>;
	/**
		Register a handler to be called when all Ajax requests have completed. This is an Ajax Event.
	**/
	function ajaxStop(handler:() -> ts.AnyOf2<Bool, ts.Undefined>):JQuery<TElement>;
	/**
		Attach a function to be executed whenever an Ajax request completes successfully. This is an Ajax Event.
	**/
	function ajaxSuccess(handler:(event:global.jquery.TriggeredEvent<js.html.Document, Null<Any>, js.html.Document, js.html.Document>, jqXHR:global.jquery.JqXHR<Dynamic>, ajaxOptions:global.jquery.AjaxSettings<Dynamic>, data:global.jquery.PlainObject<Dynamic>) -> ts.AnyOf2<Bool, ts.Undefined>):JQuery<TElement>;
	/**
		Perform a custom animation of a set of CSS properties.
		
		Perform a custom animation of a set of CSS properties.
		
		Perform a custom animation of a set of CSS properties.
		
		Perform a custom animation of a set of CSS properties.
	**/
	@:overload(function(properties:global.jquery.PlainObject<Dynamic>, duration_easing:ts.AnyOf2<String, Float>, ?complete:() -> Void):JQuery<TElement> { })
	@:overload(function(properties:global.jquery.PlainObject<Dynamic>, options:global.jquery.EffectsOptions<TElement>):JQuery<TElement> { })
	@:overload(function(properties:global.jquery.PlainObject<Dynamic>, ?complete:() -> Void):JQuery<TElement> { })
	function animate(properties:global.jquery.PlainObject<Dynamic>, duration:global.jquery.Duration, easing:String, ?complete:() -> Void):JQuery<TElement>;
	/**
		Insert content, specified by the parameter, to the end of each element in the set of matched elements.
		
		Insert content, specified by the parameter, to the end of each element in the set of matched elements.
	**/
	@:overload(function(fun_Tion:(index:Float, html:String) -> ts.AnyOf7<String, js.html.DOMElement, js.html.Text, js.html.Comment, js.html.DocumentFragment, JQuery<global.jquery.Node>, Array<ts.AnyOf5<js.html.DOMElement, js.html.Text, js.html.Comment, js.html.DocumentFragment, JQuery<global.jquery.Node>>>>):JQuery<TElement> { })
	function append(contents:haxe.extern.Rest<ts.AnyOf7<String, js.html.DOMElement, js.html.Text, js.html.Comment, js.html.DocumentFragment, JQuery<global.jquery.Node>, Array<ts.AnyOf5<js.html.DOMElement, js.html.Text, js.html.Comment, js.html.DocumentFragment, JQuery<global.jquery.Node>>>>>):JQuery<TElement>;
	/**
		Insert every element in the set of matched elements to the end of the target.
	**/
	function appendTo(target:ts.AnyOf5<String, js.html.DOMElement, JQuery<js.html.Element>, js.html.DocumentFragment, Array<ts.AnyOf2<js.html.DOMElement, js.html.DocumentFragment>>>):JQuery<TElement>;
	/**
		Set one or more attributes for the set of matched elements.
		
		Set one or more attributes for the set of matched elements.
		
		Get the value of an attribute for the first element in the set of matched elements.
	**/
	@:overload(function(attributes:global.jquery.PlainObject<Dynamic>):JQuery<TElement> { })
	@:overload(function(attributeName:String):Null<String> { })
	function attr(attributeName:String, value_function:Null<ts.AnyOf3<String, Float, (index:Float, attr:String) -> Null<ts.AnyOf3<String, Float, ts.Undefined>>>>):JQuery<TElement>;
	/**
		Insert content, specified by the parameter, before each element in the set of matched elements.
		
		Insert content, specified by the parameter, before each element in the set of matched elements.
	**/
	@:overload(function(function_function_Html:(index:Float, html:String) -> ts.AnyOf7<String, js.html.DOMElement, js.html.Text, js.html.Comment, js.html.DocumentFragment, JQuery<global.jquery.Node>, Array<ts.AnyOf5<js.html.DOMElement, js.html.Text, js.html.Comment, js.html.DocumentFragment, JQuery<global.jquery.Node>>>>):JQuery<TElement> { })
	function before(contents:haxe.extern.Rest<ts.AnyOf7<String, js.html.DOMElement, js.html.Text, js.html.Comment, js.html.DocumentFragment, JQuery<global.jquery.Node>, Array<ts.AnyOf5<js.html.DOMElement, js.html.Text, js.html.Comment, js.html.DocumentFragment, JQuery<global.jquery.Node>>>>>):JQuery<TElement>;
	/**
		Attach a handler to an event for the elements.
		
		Attach a handler to an event for the elements.
		
		Attach a handler to an event for the elements.
	**/
	@:overload(function<TType>(eventType:TType, handler_preventBubble:Null<ts.AnyOf2<Bool, global.jquery.EventHandlerBase<TElement, Dynamic>>>):JQuery<TElement> { })
	@:overload(function(events:global.jquery.TypeEventHandlers<TElement, Null<Any>, TElement, TElement>):JQuery<TElement> { })
	function bind<TType, TData>(eventType:TType, eventData:TData, handler:global.jquery.EventHandlerBase<TElement, Dynamic>):JQuery<TElement>;
	/**
		Bind an event handler to the "blur" JavaScript event, or trigger that event on an element.
		
		Bind an event handler to the "blur" JavaScript event, or trigger that event on an element.
	**/
	@:overload(function(?handler:ts.AnyOf2<Bool, global.jquery.EventHandlerBase<TElement, global.jquery.BlurEvent<TElement, Dynamic, TElement, TElement>>>):JQuery<TElement> { })
	function blur<TData>(eventData:TData, handler:global.jquery.EventHandlerBase<TElement, global.jquery.BlurEvent<TElement, TData, TElement, TElement>>):JQuery<TElement>;
	/**
		Bind an event handler to the "change" JavaScript event, or trigger that event on an element.
		
		Bind an event handler to the "change" JavaScript event, or trigger that event on an element.
	**/
	@:overload(function(?handler:ts.AnyOf2<Bool, global.jquery.EventHandlerBase<TElement, global.jquery.ChangeEvent<TElement, Dynamic, TElement, TElement>>>):JQuery<TElement> { })
	function change<TData>(eventData:TData, handler:global.jquery.EventHandlerBase<TElement, global.jquery.ChangeEvent<TElement, TData, TElement, TElement>>):JQuery<TElement>;
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
	@:overload(function(?handler:ts.AnyOf2<Bool, global.jquery.EventHandlerBase<TElement, global.jquery.ClickEvent<TElement, Dynamic, TElement, TElement>>>):JQuery<TElement> { })
	function click<TData>(eventData:TData, handler:global.jquery.EventHandlerBase<TElement, global.jquery.ClickEvent<TElement, TData, TElement, TElement>>):JQuery<TElement>;
	/**
		Create a deep copy of the set of matched elements.
	**/
	function clone(?withDataAndEvents:Bool, ?deepWithDataAndEvents:Bool):JQuery<TElement>;
	/**
		For each element in the set, get the first element that matches the selector by testing the element itself and traversing up through its ancestors in the DOM tree.
		
		For each element in the set, get the first element that matches the selector by testing the element itself and traversing up through its ancestors in the DOM tree.
	**/
	@:overload(function(selector_selection_element:ts.AnyOf3<String, js.html.DOMElement, JQuery<js.html.Element>>):JQuery<TElement> { })
	function closest(selector:String, context:js.html.DOMElement):JQuery<TElement>;
	/**
		Get the children of each element in the set of matched elements, including text and comment nodes.
	**/
	function contents():JQuery<ts.AnyOf4<js.html.Document, js.html.Text, js.html.Comment, TElement>>;
	/**
		Bind an event handler to the "contextmenu" JavaScript event, or trigger that event on an element.
		
		Bind an event handler to the "contextmenu" JavaScript event, or trigger that event on an element.
	**/
	@:overload(function(?handler:ts.AnyOf2<Bool, global.jquery.EventHandlerBase<TElement, global.jquery.ContextMenuEvent<TElement, Dynamic, TElement, TElement>>>):JQuery<TElement> { })
	function contextmenu<TData>(eventData:TData, handler:global.jquery.EventHandlerBase<TElement, global.jquery.ContextMenuEvent<TElement, TData, TElement, TElement>>):JQuery<TElement>;
	/**
		Set one or more CSS properties for the set of matched elements.
		
		Set one or more CSS properties for the set of matched elements.
		
		Get the computed style properties for the first element in the set of matched elements.
		
		Get the computed style properties for the first element in the set of matched elements.
	**/
	@:overload(function(properties:global.jquery.PlainObject<ts.AnyOf3<String, Float, (index:Float, value:String) -> Null<ts.AnyOf3<String, Float, ts.Undefined>>>>):JQuery<TElement> { })
	@:overload(function(propertyName:String):String { })
	@:overload(function(propertyNames:Array<String>):global.jquery.PlainObject<String> { })
	function css(propertyName:String, value_function:ts.AnyOf3<String, Float, (index:Float, value:String) -> Null<ts.AnyOf3<String, Float, ts.Undefined>>>):JQuery<TElement>;
	/**
		Store arbitrary data associated with the matched elements.
		
		Store arbitrary data associated with the matched elements.
		
		Return the value at the named data store for the first element in the jQuery collection, as set by data(name, value) or by an HTML5 data-* attribute.
		
		Return the value at the named data store for the first element in the jQuery collection, as set by data(name, value) or by an HTML5 data-* attribute.
		
		Return the value at the named data store for the first element in the jQuery collection, as set by data(name, value) or by an HTML5 data-* attribute.
	**/
	@:overload(function(obj:global.jquery.PlainObject<Dynamic>):JQuery<TElement> { })
	@:overload(function(key:String, value:Null<Any>):Dynamic { })
	@:overload(function(key:String):Dynamic { })
	@:overload(function():global.jquery.PlainObject<Dynamic> { })
	function data(key:String, value:Null<ts.AnyOf5<String, Float, Bool, js.lib.Symbol, Dynamic>>):JQuery<TElement>;
	/**
		Bind an event handler to the "dblclick" JavaScript event, or trigger that event on an element.
		
		Bind an event handler to the "dblclick" JavaScript event, or trigger that event on an element.
	**/
	@:overload(function(?handler:ts.AnyOf2<Bool, global.jquery.EventHandlerBase<TElement, global.jquery.DoubleClickEvent<TElement, Dynamic, TElement, TElement>>>):JQuery<TElement> { })
	function dblclick<TData>(eventData:TData, handler:global.jquery.EventHandlerBase<TElement, global.jquery.DoubleClickEvent<TElement, TData, TElement, TElement>>):JQuery<TElement>;
	/**
		Set a timer to delay execution of subsequent items in the queue.
	**/
	function delay(duration:global.jquery.Duration, ?queueName:String):JQuery<TElement>;
	/**
		Attach a handler to one or more events for all elements that match the selector, now or in the future, based on a specific set of root elements.
		
		Attach a handler to one or more events for all elements that match the selector, now or in the future, based on a specific set of root elements.
		
		Attach a handler to one or more events for all elements that match the selector, now or in the future, based on a specific set of root elements.
	**/
	@:overload(function<TType>(selector:String, eventType:TType, handler:ts.AnyOf2<Bool, global.jquery.EventHandlerBase<Dynamic, Dynamic>>):JQuery<TElement> { })
	@:overload(function(selector:String, events:global.jquery.TypeEventHandlers<TElement, Null<Any>, Dynamic, Dynamic>):JQuery<TElement> { })
	function delegate<TType, TData>(selector:String, eventType:TType, eventData:TData, handler:global.jquery.EventHandlerBase<Dynamic, Dynamic>):JQuery<TElement>;
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
	function each(fun_Tion:(index:Float, element:TElement) -> ts.AnyOf2<Bool, ts.Undefined>):JQuery<TElement>;
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
	function extend(obj:Dynamic):JQuery<TElement>;
	/**
		Display the matched elements by fading them to opaque.
		
		Display the matched elements by fading them to opaque.
		
		Display the matched elements by fading them to opaque.
	**/
	@:overload(function(duration_easing:ts.AnyOf2<String, Float>, complete:() -> Void):JQuery<TElement> { })
	@:overload(function(?duration_easing_complete_options:ts.AnyOf4<String, Float, global.jquery.EffectsOptions<TElement>, () -> Void>):JQuery<TElement> { })
	function fadeIn(duration:global.jquery.Duration, easing:String, ?complete:() -> Void):JQuery<TElement>;
	/**
		Hide the matched elements by fading them to transparent.
		
		Hide the matched elements by fading them to transparent.
		
		Hide the matched elements by fading them to transparent.
	**/
	@:overload(function(duration_easing:ts.AnyOf2<String, Float>, complete:() -> Void):JQuery<TElement> { })
	@:overload(function(?duration_easing_complete_options:ts.AnyOf4<String, Float, global.jquery.EffectsOptions<TElement>, () -> Void>):JQuery<TElement> { })
	function fadeOut(duration:global.jquery.Duration, easing:String, ?complete:() -> Void):JQuery<TElement>;
	/**
		Adjust the opacity of the matched elements.
		
		Adjust the opacity of the matched elements.
	**/
	@:overload(function(duration:global.jquery.Duration, opacity:Float, ?complete:() -> Void):JQuery<TElement> { })
	function fadeTo(duration:global.jquery.Duration, opacity:Float, easing:String, ?complete:() -> Void):JQuery<TElement>;
	/**
		Display or hide the matched elements by animating their opacity.
		
		Display or hide the matched elements by animating their opacity.
		
		Display or hide the matched elements by animating their opacity.
	**/
	@:overload(function(duration_easing:ts.AnyOf2<String, Float>, complete:() -> Void):JQuery<TElement> { })
	@:overload(function(?duration_easing_complete_options:ts.AnyOf4<String, Float, global.jquery.EffectsOptions<TElement>, () -> Void>):JQuery<TElement> { })
	function fadeToggle(duration:global.jquery.Duration, easing:String, ?complete:() -> Void):JQuery<TElement>;
	/**
		Reduce the set of matched elements to those that match the selector or pass the function's test.
	**/
	function filter(selector_elements_selection_function:ts.AnyOf5<String, js.html.DOMElement, JQuery<js.html.Element>, Array<js.html.DOMElement>, (index:Float, element:TElement) -> Bool>):JQuery<TElement>;
	/**
		Get the descendants of each element in the current set of matched elements, filtered by a selector, jQuery object, or element.
	**/
	function find(selector_element:ts.AnyOf3<String, js.html.DOMElement, JQuery<js.html.Element>>):JQuery<TElement>;
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
	@:overload(function(?handler:ts.AnyOf2<Bool, global.jquery.EventHandlerBase<TElement, global.jquery.FocusEvent<TElement, Dynamic, TElement, TElement>>>):JQuery<TElement> { })
	function focus<TData>(eventData:TData, handler:global.jquery.EventHandlerBase<TElement, global.jquery.FocusEvent<TElement, TData, TElement, TElement>>):JQuery<TElement>;
	/**
		Bind an event handler to the "focusin" event.
		
		Bind an event handler to the "focusin" event.
	**/
	@:overload(function(?handler:ts.AnyOf2<Bool, global.jquery.EventHandlerBase<TElement, global.jquery.FocusInEvent<TElement, Dynamic, TElement, TElement>>>):JQuery<TElement> { })
	function focusin<TData>(eventData:TData, handler:global.jquery.EventHandlerBase<TElement, global.jquery.FocusInEvent<TElement, TData, TElement, TElement>>):JQuery<TElement>;
	/**
		Bind an event handler to the "focusout" JavaScript event.
		
		Bind an event handler to the "focusout" JavaScript event.
	**/
	@:overload(function(?handler:ts.AnyOf2<Bool, global.jquery.EventHandlerBase<TElement, global.jquery.FocusOutEvent<TElement, Dynamic, TElement, TElement>>>):JQuery<TElement> { })
	function focusout<TData>(eventData:TData, handler:global.jquery.EventHandlerBase<TElement, global.jquery.FocusOutEvent<TElement, TData, TElement, TElement>>):JQuery<TElement>;
	/**
		Retrieve one of the elements matched by the jQuery object.
		
		Retrieve the elements matched by the jQuery object.
	**/
	@:overload(function():Array<TElement> { })
	function get(index:Float):TElement;
	/**
		Reduce the set of matched elements to those that have a descendant that matches the selector or DOM element.
	**/
	function has(selector_contained:ts.AnyOf2<String, js.html.DOMElement>):JQuery<TElement>;
	/**
		Determine whether any of the matched elements are assigned the given class.
	**/
	function hasClass(className:String):Bool;
	/**
		Set the CSS height of every matched element.
		
		Get the current computed height for the first element in the set of matched elements.
	**/
	@:overload(function():Null<Float> { })
	function height(value_function:ts.AnyOf3<String, Float, (index:Float, height:Float) -> ts.AnyOf2<String, Float>>):JQuery<TElement>;
	/**
		Hide the matched elements.
		
		Hide the matched elements.
		
		Hide the matched elements.
	**/
	@:overload(function(duration:global.jquery.Duration, easing_complete:ts.AnyOf2<String, () -> Void>):JQuery<TElement> { })
	@:overload(function(?duration_complete_options:ts.AnyOf4<Float, String, global.jquery.EffectsOptions<TElement>, () -> Void>):JQuery<TElement> { })
	function hide(duration:global.jquery.Duration, easing:String, complete:() -> Void):JQuery<TElement>;
	/**
		Bind two handlers to the matched elements, to be executed when the mouse pointer enters and leaves the elements.
		
		Bind a single handler to the matched elements, to be executed when the mouse pointer enters or leaves the elements.
	**/
	@:overload(function(handlerInOut:ts.AnyOf2<Bool, global.jquery.EventHandlerBase<TElement, ts.AnyOf2<global.jquery.MouseEnterEvent<TElement, Dynamic, TElement, TElement>, global.jquery.MouseLeaveEvent<TElement, Dynamic, TElement, TElement>>>>):JQuery<TElement> { })
	function hover(handlerIn:ts.AnyOf2<Bool, global.jquery.EventHandlerBase<TElement, global.jquery.MouseEnterEvent<TElement, Dynamic, TElement, TElement>>>, handlerOut:ts.AnyOf2<Bool, global.jquery.EventHandlerBase<TElement, global.jquery.MouseLeaveEvent<TElement, Dynamic, TElement, TElement>>>):JQuery<TElement>;
	/**
		Set the HTML contents of each element in the set of matched elements.
		
		Get the HTML contents of the first element in the set of matched elements.
	**/
	@:overload(function():String { })
	function html(htmlString_function:ts.AnyOf6<String, js.html.DOMElement, js.html.Text, js.html.Comment, js.html.DocumentFragment, (index:Float, oldhtml:String) -> ts.AnyOf5<String, js.html.DOMElement, js.html.Text, js.html.Comment, js.html.DocumentFragment>>):JQuery<TElement>;
	/**
		Search for a given element from among the matched elements.
	**/
	function index(?selector_element:ts.AnyOf3<String, js.html.DOMElement, JQuery<js.html.Element>>):Float;
	/**
		Set the CSS inner height of each element in the set of matched elements.
		
		Get the current computed height for the first element in the set of matched elements, including padding but not border.
	**/
	@:overload(function():Null<Float> { })
	function innerHeight(value_function:ts.AnyOf3<String, Float, (index:Float, height:Float) -> ts.AnyOf2<String, Float>>):JQuery<TElement>;
	/**
		Set the CSS inner width of each element in the set of matched elements.
		
		Get the current computed inner width for the first element in the set of matched elements, including padding but not border.
	**/
	@:overload(function():Null<Float> { })
	function innerWidth(value_function:ts.AnyOf3<String, Float, (index:Float, width:Float) -> ts.AnyOf2<String, Float>>):JQuery<TElement>;
	/**
		Insert every element in the set of matched elements after the target.
	**/
	function insertAfter(target:ts.AnyOf4<String, js.html.Node, Array<js.html.Node>, JQuery<js.html.Node>>):JQuery<TElement>;
	/**
		Insert every element in the set of matched elements before the target.
	**/
	function insertBefore(target:ts.AnyOf4<String, js.html.Node, Array<js.html.Node>, JQuery<js.html.Node>>):JQuery<TElement>;
	/**
		Check the current matched set of elements against a selector, element, or jQuery object and return true if at least one of these elements matches the given arguments.
	**/
	function is(selector_function_selection_elements:ts.AnyOf5<String, js.html.DOMElement, JQuery<js.html.Element>, Array<js.html.DOMElement>, (index:Float, element:TElement) -> Bool>):Bool;
	/**
		Bind an event handler to the "keydown" JavaScript event, or trigger that event on an element.
		
		Bind an event handler to the "keydown" JavaScript event, or trigger that event on an element.
	**/
	@:overload(function(?handler:ts.AnyOf2<Bool, global.jquery.EventHandlerBase<TElement, global.jquery.KeyDownEvent<TElement, Dynamic, TElement, TElement>>>):JQuery<TElement> { })
	function keydown<TData>(eventData:TData, handler:global.jquery.EventHandlerBase<TElement, global.jquery.KeyDownEvent<TElement, TData, TElement, TElement>>):JQuery<TElement>;
	/**
		Bind an event handler to the "keypress" JavaScript event, or trigger that event on an element.
		
		Bind an event handler to the "keypress" JavaScript event, or trigger that event on an element.
	**/
	@:overload(function(?handler:ts.AnyOf2<Bool, global.jquery.EventHandlerBase<TElement, global.jquery.KeyPressEvent<TElement, Dynamic, TElement, TElement>>>):JQuery<TElement> { })
	function keypress<TData>(eventData:TData, handler:global.jquery.EventHandlerBase<TElement, global.jquery.KeyPressEvent<TElement, TData, TElement, TElement>>):JQuery<TElement>;
	/**
		Bind an event handler to the "keyup" JavaScript event, or trigger that event on an element.
		
		Bind an event handler to the "keyup" JavaScript event, or trigger that event on an element.
	**/
	@:overload(function(?handler:ts.AnyOf2<Bool, global.jquery.EventHandlerBase<TElement, global.jquery.KeyUpEvent<TElement, Dynamic, TElement, TElement>>>):JQuery<TElement> { })
	function keyup<TData>(eventData:TData, handler:global.jquery.EventHandlerBase<TElement, global.jquery.KeyUpEvent<TElement, TData, TElement, TElement>>):JQuery<TElement>;
	/**
		Reduce the set of matched elements to the final one in the set.
	**/
	function last():JQuery<TElement>;
	/**
		Load data from the server and place the returned HTML into the matched element.
		
		Load data from the server and place the returned HTML into the matched element.
	**/
	@:overload(function(url:String, ?complete_data:ts.AnyOf3<String, global.jquery.PlainObject<Dynamic>, (responseText:String, textStatus:global.jquery.ajax.TextStatus, jqXHR:global.jquery.JqXHR<Dynamic>) -> Void>):JQuery<TElement> { })
	function load(url:String, data:ts.AnyOf2<String, global.jquery.PlainObject<Dynamic>>, complete:(responseText:String, textStatus:global.jquery.ajax.TextStatus, jqXHR:global.jquery.JqXHR<Dynamic>) -> Void):JQuery<TElement>;
	/**
		Pass each element in the current matched set through a function, producing a new jQuery object containing the return values.
	**/
	function map<TReturn>(callback:(index:Float, domElement:TElement) -> Null<ts.AnyOf2<Array<TReturn>, TReturn>>):JQuery<TReturn>;
	/**
		Bind an event handler to the "mousedown" JavaScript event, or trigger that event on an element.
		
		Bind an event handler to the "mousedown" JavaScript event, or trigger that event on an element.
	**/
	@:overload(function(?handler:ts.AnyOf2<Bool, global.jquery.EventHandlerBase<TElement, global.jquery.MouseDownEvent<TElement, Dynamic, TElement, TElement>>>):JQuery<TElement> { })
	function mousedown<TData>(eventData:TData, handler:global.jquery.EventHandlerBase<TElement, global.jquery.MouseDownEvent<TElement, TData, TElement, TElement>>):JQuery<TElement>;
	/**
		Bind an event handler to be fired when the mouse enters an element, or trigger that handler on an element.
		
		Bind an event handler to be fired when the mouse enters an element, or trigger that handler on an element.
	**/
	@:overload(function(?handler:ts.AnyOf2<Bool, global.jquery.EventHandlerBase<TElement, global.jquery.MouseEnterEvent<TElement, Dynamic, TElement, TElement>>>):JQuery<TElement> { })
	function mouseenter<TData>(eventData:TData, handler:global.jquery.EventHandlerBase<TElement, global.jquery.MouseEnterEvent<TElement, TData, TElement, TElement>>):JQuery<TElement>;
	/**
		Bind an event handler to be fired when the mouse leaves an element, or trigger that handler on an element.
		
		Bind an event handler to be fired when the mouse leaves an element, or trigger that handler on an element.
	**/
	@:overload(function(?handler:ts.AnyOf2<Bool, global.jquery.EventHandlerBase<TElement, global.jquery.MouseLeaveEvent<TElement, Dynamic, TElement, TElement>>>):JQuery<TElement> { })
	function mouseleave<TData>(eventData:TData, handler:global.jquery.EventHandlerBase<TElement, global.jquery.MouseLeaveEvent<TElement, TData, TElement, TElement>>):JQuery<TElement>;
	/**
		Bind an event handler to the "mousemove" JavaScript event, or trigger that event on an element.
		
		Bind an event handler to the "mousemove" JavaScript event, or trigger that event on an element.
	**/
	@:overload(function(?handler:ts.AnyOf2<Bool, global.jquery.EventHandlerBase<TElement, global.jquery.MouseMoveEvent<TElement, Dynamic, TElement, TElement>>>):JQuery<TElement> { })
	function mousemove<TData>(eventData:TData, handler:global.jquery.EventHandlerBase<TElement, global.jquery.MouseMoveEvent<TElement, TData, TElement, TElement>>):JQuery<TElement>;
	/**
		Bind an event handler to the "mouseout" JavaScript event, or trigger that event on an element.
		
		Bind an event handler to the "mouseout" JavaScript event, or trigger that event on an element.
	**/
	@:overload(function(?handler:ts.AnyOf2<Bool, global.jquery.EventHandlerBase<TElement, global.jquery.MouseOutEvent<TElement, Dynamic, TElement, TElement>>>):JQuery<TElement> { })
	function mouseout<TData>(eventData:TData, handler:global.jquery.EventHandlerBase<TElement, global.jquery.MouseOutEvent<TElement, TData, TElement, TElement>>):JQuery<TElement>;
	/**
		Bind an event handler to the "mouseover" JavaScript event, or trigger that event on an element.
		
		Bind an event handler to the "mouseover" JavaScript event, or trigger that event on an element.
	**/
	@:overload(function(?handler:ts.AnyOf2<Bool, global.jquery.EventHandlerBase<TElement, global.jquery.MouseOverEvent<TElement, Dynamic, TElement, TElement>>>):JQuery<TElement> { })
	function mouseover<TData>(eventData:TData, handler:global.jquery.EventHandlerBase<TElement, global.jquery.MouseOverEvent<TElement, TData, TElement, TElement>>):JQuery<TElement>;
	/**
		Bind an event handler to the "mouseup" JavaScript event, or trigger that event on an element.
		
		Bind an event handler to the "mouseup" JavaScript event, or trigger that event on an element.
	**/
	@:overload(function(?handler:ts.AnyOf2<Bool, global.jquery.EventHandlerBase<TElement, global.jquery.MouseUpEvent<TElement, Dynamic, TElement, TElement>>>):JQuery<TElement> { })
	function mouseup<TData>(eventData:TData, handler:global.jquery.EventHandlerBase<TElement, global.jquery.MouseUpEvent<TElement, TData, TElement, TElement>>):JQuery<TElement>;
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
	function nextUntil(?selector_element:ts.AnyOf3<String, js.html.DOMElement, JQuery<js.html.Element>>, ?filter:String):JQuery<TElement>;
	/**
		Remove elements from the set of matched elements.
	**/
	function not(selector_function_selection:ts.AnyOf5<String, js.html.DOMElement, JQuery<js.html.Element>, Array<js.html.DOMElement>, (index:Float, element:TElement) -> Bool>):JQuery<TElement>;
	/**
		Remove an event handler.
		
		Remove an event handler.
		
		Remove an event handler.
		
		Remove an event handler.
	**/
	@:overload(function<TType>(events:TType, ?selector_handler:ts.AnyOf3<String, Bool, global.jquery.EventHandlerBase<Dynamic, Dynamic>>):JQuery<TElement> { })
	@:overload(function(events:global.jquery.TypeEventHandlers<TElement, Dynamic, Dynamic, Dynamic>, ?selector:String):JQuery<TElement> { })
	@:overload(function(?event:global.jquery.TriggeredEvent<TElement, Dynamic, Dynamic, Dynamic>):JQuery<TElement> { })
	function off<TType>(events:TType, selector:String, handler:ts.AnyOf2<Bool, global.jquery.EventHandlerBase<Dynamic, Dynamic>>):JQuery<TElement>;
	/**
		Set the current coordinates of every element in the set of matched elements, relative to the document.
		
		Get the current coordinates of the first element in the set of matched elements, relative to the document.
	**/
	@:overload(function():Null<global.jquery.Coordinates> { })
	function offset(coordinates_function:ts.AnyOf4<{ var left : Float; }, { var top : Float; }, haxe.DynamicAccess<Any>, (index:Float, coords:global.jquery.Coordinates) -> global.jquery.CoordinatesPartial>):JQuery<TElement>;
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
	@:overload(function<TType, TData>(events:TType, selector:Null<Any>, data:TData, handler:global.jquery.EventHandlerBase<TElement, Dynamic>):JQuery<TElement> { })
	@:overload(function(events:String, selector:Null<String>, data:Dynamic, handler:(event:JQueryEventObject) -> Void):JQuery<TElement> { })
	@:overload(function<TType>(events:TType, selector:String, handler:ts.AnyOf2<Bool, global.jquery.EventHandlerBase<Dynamic, Dynamic>>):JQuery<TElement> { })
	@:overload(function<TType, TData>(events:TType, data:TData, handler:global.jquery.EventHandlerBase<TElement, Dynamic>):JQuery<TElement> { })
	@:overload(function(events:String, selector_data:Dynamic, handler:(event:JQueryEventObject) -> Void):JQuery<TElement> { })
	@:overload(function<TType>(events:TType, handler:ts.AnyOf2<Bool, global.jquery.EventHandlerBase<TElement, Dynamic>>):JQuery<TElement> { })
	@:overload(function(events:String, handler:(event:JQueryEventObject) -> Void):JQuery<TElement> { })
	@:overload(function<TData>(events:global.jquery.TypeEventHandlers<TElement, TData, Dynamic, Dynamic>, selector:String, data:TData):JQuery<TElement> { })
	@:overload(function<TData>(events:global.jquery.TypeEventHandlers<TElement, TData, TElement, TElement>, selector:Null<Any>, data:TData):JQuery<TElement> { })
	@:overload(function(events:global.jquery.TypeEventHandlers<TElement, Null<Any>, Dynamic, Dynamic>, selector:String):JQuery<TElement> { })
	@:overload(function<TData>(events:global.jquery.TypeEventHandlers<TElement, TData, TElement, TElement>, data:TData):JQuery<TElement> { })
	@:overload(function(events:global.jquery.TypeEventHandlers<TElement, Null<Any>, TElement, TElement>):JQuery<TElement> { })
	function on<TType, TData>(events:TType, selector:String, data:TData, handler:global.jquery.EventHandlerBase<Dynamic, Dynamic>):JQuery<TElement>;
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
	@:overload(function<TType, TData>(events:TType, selector:Null<Any>, data:TData, handler:global.jquery.EventHandlerBase<TElement, Dynamic>):JQuery<TElement> { })
	@:overload(function<TType>(events:TType, selector:String, handler:ts.AnyOf2<Bool, global.jquery.EventHandlerBase<Dynamic, Dynamic>>):JQuery<TElement> { })
	@:overload(function<TType, TData>(events:TType, data:TData, handler:global.jquery.EventHandlerBase<TElement, Dynamic>):JQuery<TElement> { })
	@:overload(function<TType>(events:TType, handler:ts.AnyOf2<Bool, global.jquery.EventHandlerBase<TElement, Dynamic>>):JQuery<TElement> { })
	@:overload(function<TData>(events:global.jquery.TypeEventHandlers<TElement, TData, Dynamic, Dynamic>, selector:String, data:TData):JQuery<TElement> { })
	@:overload(function<TData>(events:global.jquery.TypeEventHandlers<TElement, TData, TElement, TElement>, selector:Null<Any>, data:TData):JQuery<TElement> { })
	@:overload(function(events:global.jquery.TypeEventHandlers<TElement, Null<Any>, Dynamic, Dynamic>, selector:String):JQuery<TElement> { })
	@:overload(function<TData>(events:global.jquery.TypeEventHandlers<TElement, TData, TElement, TElement>, data:TData):JQuery<TElement> { })
	@:overload(function(events:global.jquery.TypeEventHandlers<TElement, Null<Any>, TElement, TElement>):JQuery<TElement> { })
	function one<TType, TData>(events:TType, selector:String, data:TData, handler:global.jquery.EventHandlerBase<Dynamic, Dynamic>):JQuery<TElement>;
	/**
		Set the CSS outer height of each element in the set of matched elements.
		
		Get the current computed outer height (including padding, border, and optionally margin) for the first element in the set of matched elements.
	**/
	@:overload(function(?includeMargin:Bool):Null<Float> { })
	function outerHeight(value_function:ts.AnyOf3<String, Float, (index:Float, height:Float) -> ts.AnyOf2<String, Float>>, ?includeMargin:Bool):JQuery<TElement>;
	/**
		Set the CSS outer width of each element in the set of matched elements.
		
		Get the current computed outer width (including padding, border, and optionally margin) for the first element in the set of matched elements.
	**/
	@:overload(function(?includeMargin:Bool):Null<Float> { })
	function outerWidth(value_function:ts.AnyOf3<String, Float, (index:Float, width:Float) -> ts.AnyOf2<String, Float>>, ?includeMargin:Bool):JQuery<TElement>;
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
	function parentsUntil(?selector_element:ts.AnyOf3<String, js.html.DOMElement, JQuery<js.html.Element>>, ?filter:String):JQuery<TElement>;
	/**
		Get the current coordinates of the first element in the set of matched elements, relative to the offset parent.
	**/
	function position():global.jquery.Coordinates;
	/**
		Insert content, specified by the parameter, to the beginning of each element in the set of matched elements.
		
		Insert content, specified by the parameter, to the beginning of each element in the set of matched elements.
	**/
	@:overload(function(fun_Tion:(index:Float, html:String) -> ts.AnyOf7<String, js.html.DOMElement, js.html.Text, js.html.Comment, js.html.DocumentFragment, JQuery<global.jquery.Node>, Array<ts.AnyOf5<js.html.DOMElement, js.html.Text, js.html.Comment, js.html.DocumentFragment, JQuery<global.jquery.Node>>>>):JQuery<TElement> { })
	function prepend(contents:haxe.extern.Rest<ts.AnyOf7<String, js.html.DOMElement, js.html.Text, js.html.Comment, js.html.DocumentFragment, JQuery<global.jquery.Node>, Array<ts.AnyOf5<js.html.DOMElement, js.html.Text, js.html.Comment, js.html.DocumentFragment, JQuery<global.jquery.Node>>>>>):JQuery<TElement>;
	/**
		Insert every element in the set of matched elements to the beginning of the target.
	**/
	function prependTo(target:ts.AnyOf5<String, js.html.DOMElement, JQuery<js.html.Element>, js.html.DocumentFragment, Array<ts.AnyOf2<js.html.DOMElement, js.html.DocumentFragment>>>):JQuery<TElement>;
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
	function prevUntil(?selector_element:ts.AnyOf3<String, js.html.DOMElement, JQuery<js.html.Element>>, ?filter:String):JQuery<TElement>;
	/**
		Return a Promise object to observe when all actions of a certain type bound to the collection, queued or not, have finished.
		
		Return a Promise object to observe when all actions of a certain type bound to the collection, queued or not, have finished.
		
		Return a Promise object to observe when all actions of a certain type bound to the collection, queued or not, have finished.
	**/
	@:overload(function<T>(target:T):Dynamic { })
	@:overload(function(?type:String):global.jquery.Promise<JQuery<TElement>, Dynamic, Dynamic> { })
	function promise<T>(type:String, target:T):Dynamic;
	/**
		Set one or more properties for the set of matched elements.
		
		Set one or more properties for the set of matched elements.
		
		Get the value of a property for the first element in the set of matched elements.
	**/
	@:overload(function(properties:global.jquery.PlainObject<Dynamic>):JQuery<TElement> { })
	@:overload(function(propertyName:String):Dynamic { })
	function prop(propertyName:String, value_function:Null<ts.AnyOf6<String, Float, Bool, js.lib.Symbol, Dynamic, (index:Float, oldPropertyValue:Dynamic) -> Dynamic>>):JQuery<TElement>;
	/**
		Add a collection of DOM elements onto the jQuery stack.
		
		Add a collection of DOM elements onto the jQuery stack.
	**/
	@:overload(function(elements:js.lib.ArrayLike<js.html.DOMElement>):JQuery<TElement> { })
	function pushStack(elements:js.lib.ArrayLike<js.html.DOMElement>, name:String, args:Array<Dynamic>):JQuery<TElement>;
	/**
		Manipulate the queue of functions to be executed, once for each matched element.
		
		Manipulate the queue of functions to be executed, once for each matched element.
		
		Show the queue of functions to be executed on the matched elements.
	**/
	@:overload(function(newQueue:global.jquery.TypeOrArray<global.jquery.QueueFunction<TElement>>):JQuery<TElement> { })
	@:overload(function(?queueName:String):global.jquery.Queue<js.html.Node> { })
	function queue(queueName:String, newQueue:global.jquery.TypeOrArray<global.jquery.QueueFunction<TElement>>):JQuery<TElement>;
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
	function removeClass(?className_function:ts.AnyOf3<String, Array<String>, (index:Float, className:String) -> String>):JQuery<TElement>;
	/**
		Remove a previously-stored piece of data.
	**/
	function removeData(?name:global.jquery.TypeOrArray<String>):JQuery<TElement>;
	/**
		Remove a property for the set of matched elements.
	**/
	function removeProp(propertyName:String):JQuery<TElement>;
	/**
		Replace each target element with the set of matched elements.
	**/
	function replaceAll(target:ts.AnyOf4<String, js.html.DOMElement, JQuery<js.html.Element>, Array<js.html.DOMElement>>):JQuery<TElement>;
	/**
		Replace each element in the set of matched elements with the provided new content and return the set of elements that was removed.
	**/
	function replaceWith(newContent_function:ts.AnyOf8<String, js.html.DOMElement, js.html.Text, js.html.Comment, js.html.DocumentFragment, Array<js.html.DOMElement>, JQuery<global.jquery.Node>, (index:Float, oldhtml:String) -> ts.AnyOf7<String, js.html.DOMElement, js.html.Text, js.html.Comment, js.html.DocumentFragment, Array<js.html.DOMElement>, JQuery<global.jquery.Node>>>):JQuery<TElement>;
	/**
		Bind an event handler to the "resize" JavaScript event, or trigger that event on an element.
		
		Bind an event handler to the "resize" JavaScript event, or trigger that event on an element.
	**/
	@:overload(function(?handler:ts.AnyOf2<Bool, global.jquery.EventHandlerBase<TElement, global.jquery.ResizeEvent<TElement, Dynamic, TElement, TElement>>>):JQuery<TElement> { })
	function resize<TData>(eventData:TData, handler:global.jquery.EventHandlerBase<TElement, global.jquery.ResizeEvent<TElement, TData, TElement, TElement>>):JQuery<TElement>;
	/**
		Bind an event handler to the "scroll" JavaScript event, or trigger that event on an element.
		
		Bind an event handler to the "scroll" JavaScript event, or trigger that event on an element.
	**/
	@:overload(function(?handler:ts.AnyOf2<Bool, global.jquery.EventHandlerBase<TElement, global.jquery.ScrollEvent<TElement, Dynamic, TElement, TElement>>>):JQuery<TElement> { })
	function scroll<TData>(eventData:TData, handler:global.jquery.EventHandlerBase<TElement, global.jquery.ScrollEvent<TElement, TData, TElement, TElement>>):JQuery<TElement>;
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
	@:overload(function(?handler:ts.AnyOf2<Bool, global.jquery.EventHandlerBase<TElement, global.jquery.SelectEvent<TElement, Dynamic, TElement, TElement>>>):JQuery<TElement> { })
	function select<TData>(eventData:TData, handler:global.jquery.EventHandlerBase<TElement, global.jquery.SelectEvent<TElement, TData, TElement, TElement>>):JQuery<TElement>;
	/**
		Encode a set of form elements as a string for submission.
	**/
	function serialize():String;
	/**
		Encode a set of form elements as an array of names and values.
	**/
	function serializeArray():Array<global.jquery.NameValuePair>;
	/**
		Display the matched elements.
		
		Display the matched elements.
		
		Display the matched elements.
	**/
	@:overload(function(duration:global.jquery.Duration, easing_complete:ts.AnyOf2<String, () -> Void>):JQuery<TElement> { })
	@:overload(function(?duration_complete_options:ts.AnyOf4<Float, String, global.jquery.EffectsOptions<TElement>, () -> Void>):JQuery<TElement> { })
	function show(duration:global.jquery.Duration, easing:String, complete:() -> Void):JQuery<TElement>;
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
	@:overload(function(duration_easing:ts.AnyOf2<String, Float>, complete:() -> Void):JQuery<TElement> { })
	@:overload(function(?duration_easing_complete_options:ts.AnyOf4<String, Float, global.jquery.EffectsOptions<TElement>, () -> Void>):JQuery<TElement> { })
	function slideDown(duration:global.jquery.Duration, easing:String, ?complete:() -> Void):JQuery<TElement>;
	/**
		Display or hide the matched elements with a sliding motion.
		
		Display or hide the matched elements with a sliding motion.
		
		Display or hide the matched elements with a sliding motion.
	**/
	@:overload(function(duration_easing:ts.AnyOf2<String, Float>, complete:() -> Void):JQuery<TElement> { })
	@:overload(function(?duration_easing_complete_options:ts.AnyOf4<String, Float, global.jquery.EffectsOptions<TElement>, () -> Void>):JQuery<TElement> { })
	function slideToggle(duration:global.jquery.Duration, easing:String, ?complete:() -> Void):JQuery<TElement>;
	/**
		Hide the matched elements with a sliding motion.
		
		Hide the matched elements with a sliding motion.
		
		Hide the matched elements with a sliding motion.
	**/
	@:overload(function(duration_easing:ts.AnyOf2<String, Float>, complete:() -> Void):JQuery<TElement> { })
	@:overload(function(?duration_easing_complete_options:ts.AnyOf4<String, Float, global.jquery.EffectsOptions<TElement>, () -> Void>):JQuery<TElement> { })
	function slideUp(duration:global.jquery.Duration, easing:String, ?complete:() -> Void):JQuery<TElement>;
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
	@:overload(function(?handler:ts.AnyOf2<Bool, global.jquery.EventHandlerBase<TElement, global.jquery.SubmitEvent<TElement, Dynamic, TElement, TElement>>>):JQuery<TElement> { })
	function submit<TData>(eventData:TData, handler:global.jquery.EventHandlerBase<TElement, global.jquery.SubmitEvent<TElement, TData, TElement, TElement>>):JQuery<TElement>;
	/**
		Set the content of each element in the set of matched elements to the specified text.
		
		Get the combined text contents of each element in the set of matched elements, including their descendants.
	**/
	@:overload(function():String { })
	function text(text_function:ts.AnyOf4<String, Float, Bool, (index:Float, text:String) -> ts.AnyOf3<String, Float, Bool>>):JQuery<TElement>;
	/**
		Retrieve all the elements contained in the jQuery set, as an array.
	**/
	function toArray():Array<TElement>;
	/**
		Display or hide the matched elements.
		
		Display or hide the matched elements.
		
		Display or hide the matched elements.
	**/
	@:overload(function(duration:global.jquery.Duration, complete:() -> Void):JQuery<TElement> { })
	@:overload(function(?duration_complete_options_display:ts.AnyOf5<Float, Bool, String, global.jquery.EffectsOptions<TElement>, () -> Void>):JQuery<TElement> { })
	function toggle(duration:global.jquery.Duration, easing:String, ?complete:() -> Void):JQuery<TElement>;
	/**
		Add or remove one or more classes from each element in the set of matched elements, depending on either the class's presence or the value of the state argument.
		
		Add or remove one or more classes from each element in the set of matched elements, depending on either the class's presence or the value of the state argument.
	**/
	@:overload(function(?state:Bool):JQuery<TElement> { })
	function toggleClass<TState>(className_function:ts.AnyOf3<String, Array<String>, (index:Float, className:String, state:TState) -> String>, ?state:TState):JQuery<TElement>;
	/**
		Execute all handlers and behaviors attached to the matched elements for the given event type.
	**/
	function trigger(eventType_event:ts.AnyOf2<String, global.jquery.Event>, ?extraParameters:ts.AnyOf5<String, Float, Bool, Array<Dynamic>, global.jquery.PlainObject<Dynamic>>):JQuery<TElement>;
	/**
		Execute all handlers attached to an element for an event.
	**/
	function triggerHandler(eventType_event:ts.AnyOf2<String, global.jquery.Event>, ?extraParameters:ts.AnyOf5<String, Float, Bool, Array<Dynamic>, global.jquery.PlainObject<Dynamic>>):Dynamic;
	/**
		Remove a previously-attached event handler from the elements.
		
		Remove a previously-attached event handler from the elements.
	**/
	@:overload(function(?event:ts.AnyOf2<String, global.jquery.TriggeredEvent<TElement, Dynamic, Dynamic, Dynamic>>):JQuery<TElement> { })
	function unbind<TType>(event:TType, handler:ts.AnyOf2<Bool, global.jquery.EventHandlerBase<TElement, Dynamic>>):JQuery<TElement>;
	/**
		Remove a handler from the event for all elements which match the current selector, based upon a specific set of root elements.
		
		Remove a handler from the event for all elements which match the current selector, based upon a specific set of root elements.
		
		Remove a handler from the event for all elements which match the current selector, based upon a specific set of root elements.
	**/
	@:overload(function(selector:String, eventType_events:ts.AnyOf2<String, global.jquery.TypeEventHandlers<TElement, Dynamic, Dynamic, Dynamic>>):JQuery<TElement> { })
	@:overload(function(?namespace:String):JQuery<TElement> { })
	function undelegate<TType>(selector:String, eventType:TType, handler:ts.AnyOf2<Bool, global.jquery.EventHandlerBase<Dynamic, Dynamic>>):JQuery<TElement>;
	/**
		Remove the parents of the set of matched elements from the DOM, leaving the matched elements in their place.
	**/
	function unwrap(?selector:String):JQuery<TElement>;
	/**
		Set the value of each element in the set of matched elements.
		
		Get the current value of the first element in the set of matched elements.
	**/
	@:overload(function():Null<ts.AnyOf3<String, Float, Array<String>>> { })
	function val(value_function:ts.AnyOf4<String, Float, Array<String>, (index:Float, value:String) -> String>):JQuery<TElement>;
	/**
		Set the CSS width of each element in the set of matched elements.
		
		Get the current computed width for the first element in the set of matched elements.
	**/
	@:overload(function():Null<Float> { })
	function width(value_function:ts.AnyOf3<String, Float, (index:Float, value:Float) -> ts.AnyOf2<String, Float>>):JQuery<TElement>;
	/**
		Wrap an HTML structure around each element in the set of matched elements.
	**/
	function wrap(wrappingElement_function:ts.AnyOf4<String, js.html.DOMElement, JQuery<js.html.Element>, (index:Float) -> ts.AnyOf2<String, JQuery<js.html.Element>>>):JQuery<TElement>;
	/**
		Wrap an HTML structure around all elements in the set of matched elements.
	**/
	function wrapAll(wrappingElement_function:ts.AnyOf4<String, js.html.DOMElement, JQuery<js.html.Element>, () -> ts.AnyOf2<String, JQuery<js.html.Element>>>):JQuery<TElement>;
	/**
		Wrap an HTML structure around the content of each element in the set of matched elements.
	**/
	function wrapInner(wrappingElement_function:ts.AnyOf4<String, js.html.DOMElement, JQuery<js.html.Element>, (index:Float) -> ts.AnyOf3<String, js.html.DOMElement, JQuery<js.html.Element>>>):JQuery<TElement>;
};