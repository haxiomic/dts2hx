package global;
extern typedef JQueryStatic = {
	@:overload(function<TElement>(html:String, ?ownerDocument_attributes:haxe.extern.EitherType<ts.html.IDocument, global.jquery.PlainObject<Any>>):JQuery<TElement> { })
	@:overload(function<TElement>(selector:String, ?context:haxe.extern.EitherType<ts.html.IDocument, haxe.extern.EitherType<ts.html.IElement, JQuery<ts.html.IHTMLElement>>>):JQuery<TElement> { })
	@:overload(function(element:ts.lib.IHTMLSelectElement):JQuery<ts.lib.IHTMLSelectElement> { })
	@:overload(function<T>(element_elementArray:haxe.extern.EitherType<T, ts.lib.ArrayLike<T>>):JQuery<T> { })
	@:overload(function<T>(selection:JQuery<T>):JQuery<T> { })
	@:overload(function<TElement>(callback:(Dollar:JQueryStatic) -> Void):JQuery<TElement> { })
	@:overload(function<T>(object:T):JQuery<T> { })
	@:overload(function<TElement>():JQuery<TElement> { })
	@:selfCall
	function call(window:ts.html.IWindow, discriminator:Bool):JQueryStatic;
	var ajaxSettings : global.jquery.AjaxSettings<Any>;
	var Animation : global.jquery.AnimationStatic;
	var Callbacks : global.jquery.CallbacksStatic;
	/**
		Hook directly into jQuery to override how particular CSS properties are retrieved or set, normalize CSS property naming, or create custom properties.
	**/
	var cssHooks : global.jquery.CSSHooks;
	/**
		An object containing all CSS properties that may be used without a unit. The .css() method uses this object to see if it may append px to unitless values.
	**/
	var cssNumber : global.jquery.PlainObject<Bool>;
	var Deferred : global.jquery.DeferredStatic;
	var easing : global.jquery.Easings;
	var Event : global.jquery.EventStatic;
	var event : global.jquery.EventExtensions;
	var expr : global.jquery.Selectors;
	final fn : JQuery<ts.html.IHTMLElement>;
	var fx : global.jquery.Effects;
	/**
		A Promise-like object (or "thenable") that resolves when the document is ready.
	**/
	var ready : global.jquery.Thenable<JQueryStatic>;
	/**
		A collection of properties that represent the presence of different browser features or bugs. Intended for jQuery's internal use; specific properties may be removed when they are no longer needed internally to improve page startup performance. For your own project's feature-detection needs, we strongly recommend the use of an external library such as Modernizr instead of dependency on properties in jQuery.support.
	**/
	var support : global.jquery.PlainObject<Any>;
	var timers : std.Array<global.jquery.TickFunction<Any>>;
	var Tween : global.jquery.TweenStatic;
	var valHooks : global.jquery.ValHooks;
	/**
		Perform an asynchronous HTTP (Ajax) request.
		
		Perform an asynchronous HTTP (Ajax) request.
	**/
	@:overload(function(?settings:global.jquery.AjaxSettings<Any>):global.jquery.JqXHR<Any> { })
	function ajax(url:String, ?settings:global.jquery.AjaxSettings<Any>):global.jquery.JqXHR<Any>;
	/**
		Handle custom Ajax options or modify existing options before each request is sent and before they are processed by $.ajax().
		
		Handle custom Ajax options or modify existing options before each request is sent and before they are processed by $.ajax().
	**/
	@:overload(function(handler:(options:global.jquery.AjaxSettings<Any>, originalOptions:global.jquery.AjaxSettings<Any>, jqXHR:global.jquery.JqXHR<Any>) -> haxe.extern.EitherType<String, Void>):Void { })
	function ajaxPrefilter(dataTypes:String, handler:(options:global.jquery.AjaxSettings<Any>, originalOptions:global.jquery.AjaxSettings<Any>, jqXHR:global.jquery.JqXHR<Any>) -> haxe.extern.EitherType<String, Void>):Void;
	/**
		Set default values for future Ajax requests. Its use is not recommended.
	**/
	function ajaxSetup(options:global.jquery.AjaxSettings<Any>):global.jquery.AjaxSettings<Any>;
	/**
		Creates an object that handles the actual transmission of Ajax data.
	**/
	function ajaxTransport(dataType:String, handler:(options:global.jquery.AjaxSettings<Any>, originalOptions:global.jquery.AjaxSettings<Any>, jqXHR:global.jquery.JqXHR<Any>) -> haxe.extern.EitherType<Void, global.jquery.Transport>):Void;
	function camelCase(value:String):String;
	function cleanData(elems:ts.lib.ArrayLike<haxe.extern.EitherType<ts.html.IDocument, haxe.extern.EitherType<ts.html.IElement, haxe.extern.EitherType<ts.html.IWindow, global.jquery.PlainObject<Any>>>>>):Void;
	/**
		Check to see if a DOM element is a descendant of another DOM element.
	**/
	function contains(container:ts.html.IElement, contained:ts.html.IElement):Bool;
	function css(elem:ts.html.IElement, name:String):Any;
	/**
		Store arbitrary data associated with the specified element. Returns the value that was set.
		
		Returns value at named data store for the element, as set by `jQuery.data(element, name, value)`, or the full data store for the element.
		
		Returns value at named data store for the element, as set by `jQuery.data(element, name, value)`, or the full data store for the element.
	**/
	@:overload(function(element:haxe.extern.EitherType<ts.html.IDocument, haxe.extern.EitherType<ts.html.IElement, haxe.extern.EitherType<ts.html.IWindow, global.jquery.PlainObject<Any>>>>, key:String, value:Null<Any>):Any { })
	@:overload(function(element:haxe.extern.EitherType<ts.html.IDocument, haxe.extern.EitherType<ts.html.IElement, haxe.extern.EitherType<ts.html.IWindow, global.jquery.PlainObject<Any>>>>, ?key:String):Any { })
	function data<T>(element:haxe.extern.EitherType<ts.html.IDocument, haxe.extern.EitherType<ts.html.IElement, haxe.extern.EitherType<ts.html.IWindow, global.jquery.PlainObject<Any>>>>, key:String, value:T):T;
	/**
		Execute the next function on the queue for the matched element.
	**/
	function dequeue(element:ts.html.IElement, ?queueName:String):Void;
	/**
		A generic iterator function, which can be used to seamlessly iterate over both objects and arrays. Arrays and array-like objects with a length property (such as a function's arguments object) are iterated by numeric index, from 0 to length-1. Other objects are iterated via their named properties.
		
		A generic iterator function, which can be used to seamlessly iterate over both objects and arrays. Arrays and array-like objects with a length property (such as a function's arguments object) are iterated by numeric index, from 0 to length-1. Other objects are iterated via their named properties.
	**/
	@:overload(function<T, K>(obj:T, callback:(propertyName:K, valueOfProperty:Any) -> Any):T { })
	function each<T>(array:ts.lib.ArrayLike<T>, callback:(indexInArray:Float, value:T) -> Any):ts.lib.ArrayLike<T>;
	/**
		Takes a string and throws an exception containing it.
	**/
	function error(message:String):Any;
	/**
		Escapes any character that has a special meaning in a CSS selector.
	**/
	function escapeSelector(selector:String):String;
	/**
		Merge the contents of two or more objects together into the first object.
		
		Merge the contents of two or more objects together into the first object.
		
		Merge the contents of two or more objects together into the first object.
		
		Merge the contents of two or more objects together into the first object.
		
		Merge the contents of two or more objects together into the first object.
		
		Merge the contents of two or more objects together into the first object.
		
		Merge the contents of two or more objects together into the first object.
		
		Merge the contents of two or more objects together into the first object.
		
		Merge the contents of two or more objects together into the first object.
		
		Merge the contents of two or more objects together into the first object.
		
		Merge the contents of two or more objects together into the first object.
		
		Merge the contents of two or more objects together into the first object.
		
		Merge the contents of two or more objects together into the first object.
		
		Merge the contents of two or more objects together into the first object.
		
		Merge the contents of two or more objects together into the first object.
		
		Merge the contents of two or more objects together into the first object.
	**/
	@:overload(function<T, U, V, W, X, Y>(deep:Bool, target:T, object1:U, object2:V, object3:W, object4:X, object5:Y):Any { })
	@:overload(function<T, U, V, W, X>(deep:Bool, target:T, object1:U, object2:V, object3:W, object4:X):Any { })
	@:overload(function<T, U, V, W>(deep:Bool, target:T, object1:U, object2:V, object3:W):Any { })
	@:overload(function<T, U, V>(deep:Bool, target:T, object1:U, object2:V):Any { })
	@:overload(function<T, U>(deep:Bool, target:T, object1:U):Any { })
	@:overload(function<T>(deep:Bool, target:T):Any { })
	@:overload(function(deep:Bool, target:Any, object1:Any, objectN:std.Array<Any>):Any { })
	@:overload(function<T, U, V, W, X, Y, Z>(target:T, object1:U, object2:V, object3:W, object4:X, object5:Y, object6:Z):Any { })
	@:overload(function<T, U, V, W, X, Y>(target:T, object1:U, object2:V, object3:W, object4:X, object5:Y):Any { })
	@:overload(function<T, U, V, W, X>(target:T, object1:U, object2:V, object3:W, object4:X):Any { })
	@:overload(function<T, U, V, W>(target:T, object1:U, object2:V, object3:W):Any { })
	@:overload(function<T, U, V>(target:T, object1:U, object2:V):Any { })
	@:overload(function<T, U>(target:T, object1:U):Any { })
	@:overload(function<T>(target:T):Any { })
	@:overload(function(target:Any, object1:Any, objectN:std.Array<Any>):Any { })
	function extend<T, U, V, W, X, Y, Z>(deep:Bool, target:T, object1:U, object2:V, object3:W, object4:X, object5:Y, object6:Z):Any;
	/**
		Load data from the server using a HTTP GET request.
		
		Load data from the server using a HTTP GET request.
		
		Load data from the server using a HTTP GET request.
		
		Load data from the server using a HTTP GET request.
	**/
	@:overload(function(url:String, success:Null<global.jquery.jqxhr.DoneCallback<Any, global.jquery.JqXHR<Any>>>, dataType:String):global.jquery.JqXHR<Any> { })
	@:overload(function(url:String, success_data:haxe.extern.EitherType<String, haxe.extern.EitherType<global.jquery.PlainObject<Any>, global.jquery.jqxhr.DoneCallback<Any, global.jquery.JqXHR<Any>>>>):global.jquery.JqXHR<Any> { })
	@:overload(function(?url_settings:haxe.extern.EitherType<String, global.jquery.UrlAjaxSettings<Any>>):global.jquery.JqXHR<Any> { })
	function get(url:String, data:haxe.extern.EitherType<String, global.jquery.PlainObject<Any>>, success:Null<global.jquery.jqxhr.DoneCallback<Any, global.jquery.JqXHR<Any>>>, ?dataType:String):global.jquery.JqXHR<Any>;
	/**
		Load JSON-encoded data from the server using a GET HTTP request.
		
		Load JSON-encoded data from the server using a GET HTTP request.
	**/
	@:overload(function(url:String, ?success_data:haxe.extern.EitherType<String, haxe.extern.EitherType<global.jquery.PlainObject<Any>, global.jquery.jqxhr.DoneCallback<Any, global.jquery.JqXHR<Any>>>>):global.jquery.JqXHR<Any> { })
	function getJSON(url:String, data:haxe.extern.EitherType<String, global.jquery.PlainObject<Any>>, success:global.jquery.jqxhr.DoneCallback<Any, global.jquery.JqXHR<Any>>):global.jquery.JqXHR<Any>;
	/**
		Load a JavaScript file from the server using a GET HTTP request, then execute it.
		
		Load a JavaScript file from the server using a GET HTTP request, then execute it.
	**/
	@:overload(function(options:global.jquery.UrlAjaxSettings<Any>):global.jquery.JqXHR<Null<String>> { })
	function getScript(url:String, ?success:global.jquery.jqxhr.DoneCallback<Null<String>, global.jquery.JqXHR<Null<String>>>):global.jquery.JqXHR<Null<String>>;
	/**
		Execute some JavaScript code globally.
	**/
	function globalEval(code:String):Void;
	/**
		Finds the elements of an array which satisfy a filter function. The original array is not affected.
	**/
	function grep<T>(array:ts.lib.ArrayLike<T>, fun_Tion:(elementOfArray:T, indexInArray:Float) -> Bool, ?invert:Bool):std.Array<T>;
	/**
		Determine whether an element has any jQuery data associated with it.
	**/
	function hasData(element:haxe.extern.EitherType<ts.html.IDocument, haxe.extern.EitherType<ts.html.IElement, haxe.extern.EitherType<ts.html.IWindow, global.jquery.PlainObject<Any>>>>):Bool;
	/**
		Holds or releases the execution of jQuery's ready event.
	**/
	function holdReady(hold:Bool):Void;
	/**
		Modify and filter HTML strings passed through jQuery manipulation methods.
	**/
	function htmlPrefilter(html:String):String;
	/**
		Search for a specified value within an array and return its index (or -1 if not found).
	**/
	function inArray<T>(value:T, array:std.Array<T>, ?fromIndex:Float):Float;
	/**
		Determine whether the argument is an array.
	**/
	function isArray(obj:Any):Bool;
	/**
		Check to see if an object is empty (contains no enumerable properties).
	**/
	function isEmptyObject(obj:Any):Bool;
	/**
		Determine if the argument passed is a JavaScript function object.
	**/
	function isFunction(obj:Any):Bool;
	/**
		Determines whether its argument represents a JavaScript number.
	**/
	function isNumeric(value:Any):Bool;
	/**
		Check to see if an object is a plain object (created using "{}" or "new Object").
	**/
	function isPlainObject(obj:Any):Bool;
	/**
		Determine whether the argument is a window.
	**/
	function isWindow(obj:Any):Bool;
	/**
		Check to see if a DOM node is within an XML document (or is an XML document).
	**/
	function isXMLDoc(node:ts.html.INode):Bool;
	/**
		Convert an array-like object into a true JavaScript array.
	**/
	function makeArray<T>(obj:ts.lib.ArrayLike<T>):std.Array<T>;
	/**
		Translate all items in an array or object to new array of items.
		
		Translate all items in an array or object to new array of items.
	**/
	@:overload(function<T, K, TReturn>(obj:T, callback:(propertyOfObject:Any, key:K) -> Null<haxe.extern.EitherType<TReturn, std.Array<TReturn>>>):std.Array<TReturn> { })
	function map<T, TReturn>(array:std.Array<T>, callback:(elementOfArray:T, indexInArray:Float) -> Null<haxe.extern.EitherType<TReturn, std.Array<TReturn>>>):std.Array<TReturn>;
	/**
		Merge the contents of two arrays together into the first array.
	**/
	function merge<T, U>(first:ts.lib.ArrayLike<T>, second:ts.lib.ArrayLike<U>):std.Array<haxe.extern.EitherType<T, U>>;
	/**
		Relinquish jQuery's control of the $ variable.
	**/
	function noConflict(?removeAll:Bool):JQueryStatic;
	function nodeName(elem:ts.html.INode, name:String):Bool;
	/**
		An empty function.
	**/
	function noop():Null<Any>;
	/**
		Return a number representing the current time.
	**/
	function now():Float;
	/**
		Create a serialized representation of an array, a plain object, or a jQuery object suitable for use in a URL query string or Ajax request. In case a jQuery object is passed, it should contain input elements with name/value properties.
	**/
	function param(obj:haxe.extern.EitherType<std.Array<Any>, haxe.extern.EitherType<global.jquery.PlainObject<Any>, JQuery<ts.html.IHTMLElement>>>, ?traditional:Bool):String;
	/**
		Parses a string into an array of DOM nodes.
		
		Parses a string into an array of DOM nodes.
	**/
	@:overload(function(data:String, ?context_keepScripts:haxe.extern.EitherType<Bool, ts.html.IDocument>):std.Array<haxe.extern.EitherType<ts.html.IElement, haxe.extern.EitherType<ts.html.IText, haxe.extern.EitherType<ts.html.IComment, ts.html.IDocumentFragment>>>> { })
	function parseHTML(data:String, context:Null<ts.html.IDocument>, keepScripts:Bool):std.Array<haxe.extern.EitherType<ts.html.IElement, haxe.extern.EitherType<ts.html.IText, haxe.extern.EitherType<ts.html.IComment, ts.html.IDocumentFragment>>>>;
	/**
		Takes a well-formed JSON string and returns the resulting JavaScript value.
	**/
	function parseJSON(json:String):Any;
	/**
		Parses a string into an XML document.
	**/
	function parseXML(data:String):ts.html.IXMLDocument;
	/**
		Load data from the server using a HTTP POST request.
		
		Load data from the server using a HTTP POST request.
		
		Load data from the server using a HTTP POST request.
		
		Load data from the server using a HTTP POST request.
	**/
	@:overload(function(url:String, success:Null<global.jquery.jqxhr.DoneCallback<Any, global.jquery.JqXHR<Any>>>, dataType:String):global.jquery.JqXHR<Any> { })
	@:overload(function(url:String, success_data:haxe.extern.EitherType<String, haxe.extern.EitherType<global.jquery.PlainObject<Any>, global.jquery.jqxhr.DoneCallback<Any, global.jquery.JqXHR<Any>>>>):global.jquery.JqXHR<Any> { })
	@:overload(function(?url_settings:haxe.extern.EitherType<String, global.jquery.UrlAjaxSettings<Any>>):global.jquery.JqXHR<Any> { })
	function post(url:String, data:haxe.extern.EitherType<String, global.jquery.PlainObject<Any>>, success:Null<global.jquery.jqxhr.DoneCallback<Any, global.jquery.JqXHR<Any>>>, ?dataType:String):global.jquery.JqXHR<Any>;
	/**
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
		
		Takes a function and returns a new one that will always have a particular context.
	**/
	@:overload(function<TReturn, A, B, C, D, E, F>(fun_Tion:(a:A, b:B, c:C, d:D, e:E, f:F) -> TReturn, context:Null<Any>, a:A, b:B, c:C, d:D, e:E, f:F):() -> TReturn { })
	@:overload(function<TReturn, A, B, C, D, E>(fun_Tion:(a:A, b:B, c:C, d:D, e:E) -> TReturn, context:Null<Any>, a:A, b:B, c:C, d:D, e:E):() -> TReturn { })
	@:overload(function<TReturn, A, B, C, D>(fun_Tion:(a:A, b:B, c:C, d:D) -> TReturn, context:Null<Any>, a:A, b:B, c:C, d:D):() -> TReturn { })
	@:overload(function<TReturn, A, B, C>(fun_Tion:(a:A, b:B, c:C) -> TReturn, context:Null<Any>, a:A, b:B, c:C):() -> TReturn { })
	@:overload(function<TReturn, A, B>(fun_Tion:(a:A, b:B) -> TReturn, context:Null<Any>, a:A, b:B):() -> TReturn { })
	@:overload(function<TReturn, A>(fun_Tion:(a:A) -> TReturn, context:Null<Any>, a:A):() -> TReturn { })
	@:overload(function<TReturn>(fun_Tion:() -> TReturn, context:Null<Any>):() -> TReturn { })
	@:overload(function<TReturn, A, B, C, D, E, F, G, T>(fun_Tion:(a:A, b:B, c:C, d:D, e:E, f:F, g:G, t:T) -> TReturn, context:Null<Any>, a:A, b:B, c:C, d:D, e:E, f:F, g:G):(t:T) -> TReturn { })
	@:overload(function<TReturn, A, B, C, D, E, F, T>(fun_Tion:(a:A, b:B, c:C, d:D, e:E, f:F, t:T) -> TReturn, context:Null<Any>, a:A, b:B, c:C, d:D, e:E, f:F):(t:T) -> TReturn { })
	@:overload(function<TReturn, A, B, C, D, E, T>(fun_Tion:(a:A, b:B, c:C, d:D, e:E, t:T) -> TReturn, context:Null<Any>, a:A, b:B, c:C, d:D, e:E):(t:T) -> TReturn { })
	@:overload(function<TReturn, A, B, C, D, T>(fun_Tion:(a:A, b:B, c:C, d:D, t:T) -> TReturn, context:Null<Any>, a:A, b:B, c:C, d:D):(t:T) -> TReturn { })
	@:overload(function<TReturn, A, B, C, T>(fun_Tion:(a:A, b:B, c:C, t:T) -> TReturn, context:Null<Any>, a:A, b:B, c:C):(t:T) -> TReturn { })
	@:overload(function<TReturn, A, B, T>(fun_Tion:(a:A, b:B, t:T) -> TReturn, context:Null<Any>, a:A, b:B):(t:T) -> TReturn { })
	@:overload(function<TReturn, A, T>(fun_Tion:(a:A, t:T) -> TReturn, context:Null<Any>, a:A):(t:T) -> TReturn { })
	@:overload(function<TReturn, T>(fun_Tion:(t:T) -> TReturn, context:Null<Any>):(t:T) -> TReturn { })
	@:overload(function<TReturn, A, B, C, D, E, F, G, T, U>(fun_Tion:(a:A, b:B, c:C, d:D, e:E, f:F, g:G, t:T, u:U) -> TReturn, context:Null<Any>, a:A, b:B, c:C, d:D, e:E, f:F, g:G):(t:T, u:U) -> TReturn { })
	@:overload(function<TReturn, A, B, C, D, E, F, T, U>(fun_Tion:(a:A, b:B, c:C, d:D, e:E, f:F, t:T, u:U) -> TReturn, context:Null<Any>, a:A, b:B, c:C, d:D, e:E, f:F):(t:T, u:U) -> TReturn { })
	@:overload(function<TReturn, A, B, C, D, E, T, U>(fun_Tion:(a:A, b:B, c:C, d:D, e:E, t:T, u:U) -> TReturn, context:Null<Any>, a:A, b:B, c:C, d:D, e:E):(t:T, u:U) -> TReturn { })
	@:overload(function<TReturn, A, B, C, D, T, U>(fun_Tion:(a:A, b:B, c:C, d:D, t:T, u:U) -> TReturn, context:Null<Any>, a:A, b:B, c:C, d:D):(t:T, u:U) -> TReturn { })
	@:overload(function<TReturn, A, B, C, T, U>(fun_Tion:(a:A, b:B, c:C, t:T, u:U) -> TReturn, context:Null<Any>, a:A, b:B, c:C):(t:T, u:U) -> TReturn { })
	@:overload(function<TReturn, A, B, T, U>(fun_Tion:(a:A, b:B, t:T, u:U) -> TReturn, context:Null<Any>, a:A, b:B):(t:T, u:U) -> TReturn { })
	@:overload(function<TReturn, A, T, U>(fun_Tion:(a:A, t:T, u:U) -> TReturn, context:Null<Any>, a:A):(t:T, u:U) -> TReturn { })
	@:overload(function<TReturn, T, U>(fun_Tion:(t:T, u:U) -> TReturn, context:Null<Any>):(t:T, u:U) -> TReturn { })
	@:overload(function<TReturn, A, B, C, D, E, F, G, T, U, V>(fun_Tion:(a:A, b:B, c:C, d:D, e:E, f:F, g:G, t:T, u:U, v:V) -> TReturn, context:Null<Any>, a:A, b:B, c:C, d:D, e:E, f:F, g:G):(t:T, u:U, v:V) -> TReturn { })
	@:overload(function<TReturn, A, B, C, D, E, F, T, U, V>(fun_Tion:(a:A, b:B, c:C, d:D, e:E, f:F, t:T, u:U, v:V) -> TReturn, context:Null<Any>, a:A, b:B, c:C, d:D, e:E, f:F):(t:T, u:U, v:V) -> TReturn { })
	@:overload(function<TReturn, A, B, C, D, E, T, U, V>(fun_Tion:(a:A, b:B, c:C, d:D, e:E, t:T, u:U, v:V) -> TReturn, context:Null<Any>, a:A, b:B, c:C, d:D, e:E):(t:T, u:U, v:V) -> TReturn { })
	@:overload(function<TReturn, A, B, C, D, T, U, V>(fun_Tion:(a:A, b:B, c:C, d:D, t:T, u:U, v:V) -> TReturn, context:Null<Any>, a:A, b:B, c:C, d:D):(t:T, u:U, v:V) -> TReturn { })
	@:overload(function<TReturn, A, B, C, T, U, V>(fun_Tion:(a:A, b:B, c:C, t:T, u:U, v:V) -> TReturn, context:Null<Any>, a:A, b:B, c:C):(t:T, u:U, v:V) -> TReturn { })
	@:overload(function<TReturn, A, B, T, U, V>(fun_Tion:(a:A, b:B, t:T, u:U, v:V) -> TReturn, context:Null<Any>, a:A, b:B):(t:T, u:U, v:V) -> TReturn { })
	@:overload(function<TReturn, A, T, U, V>(fun_Tion:(a:A, t:T, u:U, v:V) -> TReturn, context:Null<Any>, a:A):(t:T, u:U, v:V) -> TReturn { })
	@:overload(function<TReturn, T, U, V>(fun_Tion:(t:T, u:U, v:V) -> TReturn, context:Null<Any>):(t:T, u:U, v:V) -> TReturn { })
	@:overload(function<TReturn, A, B, C, D, E, F, G, T, U, V, W>(fun_Tion:(a:A, b:B, c:C, d:D, e:E, f:F, g:G, t:T, u:U, v:V, w:W) -> TReturn, context:Null<Any>, a:A, b:B, c:C, d:D, e:E, f:F, g:G):(t:T, u:U, v:V, w:W) -> TReturn { })
	@:overload(function<TReturn, A, B, C, D, E, F, T, U, V, W>(fun_Tion:(a:A, b:B, c:C, d:D, e:E, f:F, t:T, u:U, v:V, w:W) -> TReturn, context:Null<Any>, a:A, b:B, c:C, d:D, e:E, f:F):(t:T, u:U, v:V, w:W) -> TReturn { })
	@:overload(function<TReturn, A, B, C, D, E, T, U, V, W>(fun_Tion:(a:A, b:B, c:C, d:D, e:E, t:T, u:U, v:V, w:W) -> TReturn, context:Null<Any>, a:A, b:B, c:C, d:D, e:E):(t:T, u:U, v:V, w:W) -> TReturn { })
	@:overload(function<TReturn, A, B, C, D, T, U, V, W>(fun_Tion:(a:A, b:B, c:C, d:D, t:T, u:U, v:V, w:W) -> TReturn, context:Null<Any>, a:A, b:B, c:C, d:D):(t:T, u:U, v:V, w:W) -> TReturn { })
	@:overload(function<TReturn, A, B, C, T, U, V, W>(fun_Tion:(a:A, b:B, c:C, t:T, u:U, v:V, w:W) -> TReturn, context:Null<Any>, a:A, b:B, c:C):(t:T, u:U, v:V, w:W) -> TReturn { })
	@:overload(function<TReturn, A, B, T, U, V, W>(fun_Tion:(a:A, b:B, t:T, u:U, v:V, w:W) -> TReturn, context:Null<Any>, a:A, b:B):(t:T, u:U, v:V, w:W) -> TReturn { })
	@:overload(function<TReturn, A, T, U, V, W>(fun_Tion:(a:A, t:T, u:U, v:V, w:W) -> TReturn, context:Null<Any>, a:A):(t:T, u:U, v:V, w:W) -> TReturn { })
	@:overload(function<TReturn, T, U, V, W>(fun_Tion:(t:T, u:U, v:V, w:W) -> TReturn, context:Null<Any>):(t:T, u:U, v:V, w:W) -> TReturn { })
	@:overload(function<TReturn, A, B, C, D, E, F, G, T, U, V, W, X>(fun_Tion:(a:A, b:B, c:C, d:D, e:E, f:F, g:G, t:T, u:U, v:V, w:W, x:X) -> TReturn, context:Null<Any>, a:A, b:B, c:C, d:D, e:E, f:F, g:G):(t:T, u:U, v:V, w:W, x:X) -> TReturn { })
	@:overload(function<TReturn, A, B, C, D, E, F, T, U, V, W, X>(fun_Tion:(a:A, b:B, c:C, d:D, e:E, f:F, t:T, u:U, v:V, w:W, x:X) -> TReturn, context:Null<Any>, a:A, b:B, c:C, d:D, e:E, f:F):(t:T, u:U, v:V, w:W, x:X) -> TReturn { })
	@:overload(function<TReturn, A, B, C, D, E, T, U, V, W, X>(fun_Tion:(a:A, b:B, c:C, d:D, e:E, t:T, u:U, v:V, w:W, x:X) -> TReturn, context:Null<Any>, a:A, b:B, c:C, d:D, e:E):(t:T, u:U, v:V, w:W, x:X) -> TReturn { })
	@:overload(function<TReturn, A, B, C, D, T, U, V, W, X>(fun_Tion:(a:A, b:B, c:C, d:D, t:T, u:U, v:V, w:W, x:X) -> TReturn, context:Null<Any>, a:A, b:B, c:C, d:D):(t:T, u:U, v:V, w:W, x:X) -> TReturn { })
	@:overload(function<TReturn, A, B, C, T, U, V, W, X>(fun_Tion:(a:A, b:B, c:C, t:T, u:U, v:V, w:W, x:X) -> TReturn, context:Null<Any>, a:A, b:B, c:C):(t:T, u:U, v:V, w:W, x:X) -> TReturn { })
	@:overload(function<TReturn, A, B, T, U, V, W, X>(fun_Tion:(a:A, b:B, t:T, u:U, v:V, w:W, x:X) -> TReturn, context:Null<Any>, a:A, b:B):(t:T, u:U, v:V, w:W, x:X) -> TReturn { })
	@:overload(function<TReturn, A, T, U, V, W, X>(fun_Tion:(a:A, t:T, u:U, v:V, w:W, x:X) -> TReturn, context:Null<Any>, a:A):(t:T, u:U, v:V, w:W, x:X) -> TReturn { })
	@:overload(function<TReturn, T, U, V, W, X>(fun_Tion:(t:T, u:U, v:V, w:W, x:X) -> TReturn, context:Null<Any>):(t:T, u:U, v:V, w:W, x:X) -> TReturn { })
	@:overload(function<TReturn, A, B, C, D, E, F, G, T, U, V, W, X, Y>(fun_Tion:(a:A, b:B, c:C, d:D, e:E, f:F, g:G, t:T, u:U, v:V, w:W, x:X, y:Y) -> TReturn, context:Null<Any>, a:A, b:B, c:C, d:D, e:E, f:F, g:G):(t:T, u:U, v:V, w:W, x:X, y:Y) -> TReturn { })
	@:overload(function<TReturn, A, B, C, D, E, F, T, U, V, W, X, Y>(fun_Tion:(a:A, b:B, c:C, d:D, e:E, f:F, t:T, u:U, v:V, w:W, x:X, y:Y) -> TReturn, context:Null<Any>, a:A, b:B, c:C, d:D, e:E, f:F):(t:T, u:U, v:V, w:W, x:X, y:Y) -> TReturn { })
	@:overload(function<TReturn, A, B, C, D, E, T, U, V, W, X, Y>(fun_Tion:(a:A, b:B, c:C, d:D, e:E, t:T, u:U, v:V, w:W, x:X, y:Y) -> TReturn, context:Null<Any>, a:A, b:B, c:C, d:D, e:E):(t:T, u:U, v:V, w:W, x:X, y:Y) -> TReturn { })
	@:overload(function<TReturn, A, B, C, D, T, U, V, W, X, Y>(fun_Tion:(a:A, b:B, c:C, d:D, t:T, u:U, v:V, w:W, x:X, y:Y) -> TReturn, context:Null<Any>, a:A, b:B, c:C, d:D):(t:T, u:U, v:V, w:W, x:X, y:Y) -> TReturn { })
	@:overload(function<TReturn, A, B, C, T, U, V, W, X, Y>(fun_Tion:(a:A, b:B, c:C, t:T, u:U, v:V, w:W, x:X, y:Y) -> TReturn, context:Null<Any>, a:A, b:B, c:C):(t:T, u:U, v:V, w:W, x:X, y:Y) -> TReturn { })
	@:overload(function<TReturn, A, B, T, U, V, W, X, Y>(fun_Tion:(a:A, b:B, t:T, u:U, v:V, w:W, x:X, y:Y) -> TReturn, context:Null<Any>, a:A, b:B):(t:T, u:U, v:V, w:W, x:X, y:Y) -> TReturn { })
	@:overload(function<TReturn, A, T, U, V, W, X, Y>(fun_Tion:(a:A, t:T, u:U, v:V, w:W, x:X, y:Y) -> TReturn, context:Null<Any>, a:A):(t:T, u:U, v:V, w:W, x:X, y:Y) -> TReturn { })
	@:overload(function<TReturn, T, U, V, W, X, Y>(fun_Tion:(t:T, u:U, v:V, w:W, x:X, y:Y) -> TReturn, context:Null<Any>):(t:T, u:U, v:V, w:W, x:X, y:Y) -> TReturn { })
	@:overload(function<TReturn, A, B, C, D, E, F, G, T, U, V, W, X, Y, Z>(fun_Tion:(a:A, b:B, c:C, d:D, e:E, f:F, g:G, t:T, u:U, v:V, w:W, x:X, y:Y, z:Z, args:std.Array<Any>) -> TReturn, context:Null<Any>, a:A, b:B, c:C, d:D, e:E, f:F, g:G):(t:T, u:U, v:V, w:W, x:X, y:Y, z:Z, args:std.Array<Any>) -> TReturn { })
	@:overload(function<TReturn, A, B, C, D, E, F, T, U, V, W, X, Y, Z>(fun_Tion:(a:A, b:B, c:C, d:D, e:E, f:F, t:T, u:U, v:V, w:W, x:X, y:Y, z:Z, args:std.Array<Any>) -> TReturn, context:Null<Any>, a:A, b:B, c:C, d:D, e:E, f:F):(t:T, u:U, v:V, w:W, x:X, y:Y, z:Z, args:std.Array<Any>) -> TReturn { })
	@:overload(function<TReturn, A, B, C, D, E, T, U, V, W, X, Y, Z>(fun_Tion:(a:A, b:B, c:C, d:D, e:E, t:T, u:U, v:V, w:W, x:X, y:Y, z:Z, args:std.Array<Any>) -> TReturn, context:Null<Any>, a:A, b:B, c:C, d:D, e:E):(t:T, u:U, v:V, w:W, x:X, y:Y, z:Z, args:std.Array<Any>) -> TReturn { })
	@:overload(function<TReturn, A, B, C, D, T, U, V, W, X, Y, Z>(fun_Tion:(a:A, b:B, c:C, d:D, t:T, u:U, v:V, w:W, x:X, y:Y, z:Z, args:std.Array<Any>) -> TReturn, context:Null<Any>, a:A, b:B, c:C, d:D):(t:T, u:U, v:V, w:W, x:X, y:Y, z:Z, args:std.Array<Any>) -> TReturn { })
	@:overload(function<TReturn, A, B, C, T, U, V, W, X, Y, Z>(fun_Tion:(a:A, b:B, c:C, t:T, u:U, v:V, w:W, x:X, y:Y, z:Z, args:std.Array<Any>) -> TReturn, context:Null<Any>, a:A, b:B, c:C):(t:T, u:U, v:V, w:W, x:X, y:Y, z:Z, args:std.Array<Any>) -> TReturn { })
	@:overload(function<TReturn, A, B, T, U, V, W, X, Y, Z>(fun_Tion:(a:A, b:B, t:T, u:U, v:V, w:W, x:X, y:Y, z:Z, args:std.Array<Any>) -> TReturn, context:Null<Any>, a:A, b:B):(t:T, u:U, v:V, w:W, x:X, y:Y, z:Z, args:std.Array<Any>) -> TReturn { })
	@:overload(function<TReturn, A, T, U, V, W, X, Y, Z>(fun_Tion:(a:A, t:T, u:U, v:V, w:W, x:X, y:Y, z:Z, args:std.Array<Any>) -> TReturn, context:Null<Any>, a:A):(t:T, u:U, v:V, w:W, x:X, y:Y, z:Z, args:std.Array<Any>) -> TReturn { })
	@:overload(function<TReturn, T, U, V, W, X, Y, Z>(fun_Tion:(t:T, u:U, v:V, w:W, x:X, y:Y, z:Z, args:std.Array<Any>) -> TReturn, context:Null<Any>):(t:T, u:U, v:V, w:W, x:X, y:Y, z:Z, args:std.Array<Any>) -> TReturn { })
	@:overload(function<TReturn>(fun_Tion:(args:std.Array<Any>) -> TReturn, context:Null<Any>, additionalArguments:std.Array<Any>):(args:std.Array<Any>) -> TReturn { })
	@:overload(function<TContext, TReturn, A, B, C, D, E, F, G>(fun_Tion:(a:A, b:B, c:C, d:D, e:E, f:F, g:G) -> TReturn, context:TContext, a:A, b:B, c:C, d:D, e:E, f:F, g:G):() -> TReturn { })
	@:overload(function<TContext, TReturn, A, B, C, D, E, F>(fun_Tion:(a:A, b:B, c:C, d:D, e:E, f:F) -> TReturn, context:TContext, a:A, b:B, c:C, d:D, e:E, f:F):() -> TReturn { })
	@:overload(function<TContext, TReturn, A, B, C, D, E>(fun_Tion:(a:A, b:B, c:C, d:D, e:E) -> TReturn, context:TContext, a:A, b:B, c:C, d:D, e:E):() -> TReturn { })
	@:overload(function<TContext, TReturn, A, B, C, D>(fun_Tion:(a:A, b:B, c:C, d:D) -> TReturn, context:TContext, a:A, b:B, c:C, d:D):() -> TReturn { })
	@:overload(function<TContext, TReturn, A, B, C>(fun_Tion:(a:A, b:B, c:C) -> TReturn, context:TContext, a:A, b:B, c:C):() -> TReturn { })
	@:overload(function<TContext, TReturn, A, B>(fun_Tion:(a:A, b:B) -> TReturn, context:TContext, a:A, b:B):() -> TReturn { })
	@:overload(function<TContext, TReturn, A>(fun_Tion:(a:A) -> TReturn, context:TContext, a:A):() -> TReturn { })
	@:overload(function<TContext, TReturn>(fun_Tion:() -> TReturn, context:TContext):() -> TReturn { })
	@:overload(function<TContext, TReturn, A, B, C, D, E, F, G, T>(fun_Tion:(a:A, b:B, c:C, d:D, e:E, f:F, g:G, t:T) -> TReturn, context:TContext, a:A, b:B, c:C, d:D, e:E, f:F, g:G):(t:T) -> TReturn { })
	@:overload(function<TContext, TReturn, A, B, C, D, E, F, T>(fun_Tion:(a:A, b:B, c:C, d:D, e:E, f:F, t:T) -> TReturn, context:TContext, a:A, b:B, c:C, d:D, e:E, f:F):(t:T) -> TReturn { })
	@:overload(function<TContext, TReturn, A, B, C, D, E, T>(fun_Tion:(a:A, b:B, c:C, d:D, e:E, t:T) -> TReturn, context:TContext, a:A, b:B, c:C, d:D, e:E):(t:T) -> TReturn { })
	@:overload(function<TContext, TReturn, A, B, C, D, T>(fun_Tion:(a:A, b:B, c:C, d:D, t:T) -> TReturn, context:TContext, a:A, b:B, c:C, d:D):(t:T) -> TReturn { })
	@:overload(function<TContext, TReturn, A, B, C, T>(fun_Tion:(a:A, b:B, c:C, t:T) -> TReturn, context:TContext, a:A, b:B, c:C):(t:T) -> TReturn { })
	@:overload(function<TContext, TReturn, A, B, T>(fun_Tion:(a:A, b:B, t:T) -> TReturn, context:TContext, a:A, b:B):(t:T) -> TReturn { })
	@:overload(function<TContext, TReturn, A, T>(fun_Tion:(a:A, t:T) -> TReturn, context:TContext, a:A):(t:T) -> TReturn { })
	@:overload(function<TContext, TReturn, T>(fun_Tion:(t:T) -> TReturn, context:TContext):(t:T) -> TReturn { })
	@:overload(function<TContext, TReturn, A, B, C, D, E, F, G, T, U>(fun_Tion:(a:A, b:B, c:C, d:D, e:E, f:F, g:G, t:T, u:U) -> TReturn, context:TContext, a:A, b:B, c:C, d:D, e:E, f:F, g:G):(t:T, u:U) -> TReturn { })
	@:overload(function<TContext, TReturn, A, B, C, D, E, F, T, U>(fun_Tion:(a:A, b:B, c:C, d:D, e:E, f:F, t:T, u:U) -> TReturn, context:TContext, a:A, b:B, c:C, d:D, e:E, f:F):(t:T, u:U) -> TReturn { })
	@:overload(function<TContext, TReturn, A, B, C, D, E, T, U>(fun_Tion:(a:A, b:B, c:C, d:D, e:E, t:T, u:U) -> TReturn, context:TContext, a:A, b:B, c:C, d:D, e:E):(t:T, u:U) -> TReturn { })
	@:overload(function<TContext, TReturn, A, B, C, D, T, U>(fun_Tion:(a:A, b:B, c:C, d:D, t:T, u:U) -> TReturn, context:TContext, a:A, b:B, c:C, d:D):(t:T, u:U) -> TReturn { })
	@:overload(function<TContext, TReturn, A, B, C, T, U>(fun_Tion:(a:A, b:B, c:C, t:T, u:U) -> TReturn, context:TContext, a:A, b:B, c:C):(t:T, u:U) -> TReturn { })
	@:overload(function<TContext, TReturn, A, B, T, U>(fun_Tion:(a:A, b:B, t:T, u:U) -> TReturn, context:TContext, a:A, b:B):(t:T, u:U) -> TReturn { })
	@:overload(function<TContext, TReturn, A, T, U>(fun_Tion:(a:A, t:T, u:U) -> TReturn, context:TContext, a:A):(t:T, u:U) -> TReturn { })
	@:overload(function<TContext, TReturn, T, U>(fun_Tion:(t:T, u:U) -> TReturn, context:TContext):(t:T, u:U) -> TReturn { })
	@:overload(function<TContext, TReturn, A, B, C, D, E, F, G, T, U, V>(fun_Tion:(a:A, b:B, c:C, d:D, e:E, f:F, g:G, t:T, u:U, v:V) -> TReturn, context:TContext, a:A, b:B, c:C, d:D, e:E, f:F, g:G):(t:T, u:U, v:V) -> TReturn { })
	@:overload(function<TContext, TReturn, A, B, C, D, E, F, T, U, V>(fun_Tion:(a:A, b:B, c:C, d:D, e:E, f:F, t:T, u:U, v:V) -> TReturn, context:TContext, a:A, b:B, c:C, d:D, e:E, f:F):(t:T, u:U, v:V) -> TReturn { })
	@:overload(function<TContext, TReturn, A, B, C, D, E, T, U, V>(fun_Tion:(a:A, b:B, c:C, d:D, e:E, t:T, u:U, v:V) -> TReturn, context:TContext, a:A, b:B, c:C, d:D, e:E):(t:T, u:U, v:V) -> TReturn { })
	@:overload(function<TContext, TReturn, A, B, C, D, T, U, V>(fun_Tion:(a:A, b:B, c:C, d:D, t:T, u:U, v:V) -> TReturn, context:TContext, a:A, b:B, c:C, d:D):(t:T, u:U, v:V) -> TReturn { })
	@:overload(function<TContext, TReturn, A, B, C, T, U, V>(fun_Tion:(a:A, b:B, c:C, t:T, u:U, v:V) -> TReturn, context:TContext, a:A, b:B, c:C):(t:T, u:U, v:V) -> TReturn { })
	@:overload(function<TContext, TReturn, A, B, T, U, V>(fun_Tion:(a:A, b:B, t:T, u:U, v:V) -> TReturn, context:TContext, a:A, b:B):(t:T, u:U, v:V) -> TReturn { })
	@:overload(function<TContext, TReturn, A, T, U, V>(fun_Tion:(a:A, t:T, u:U, v:V) -> TReturn, context:TContext, a:A):(t:T, u:U, v:V) -> TReturn { })
	@:overload(function<TContext, TReturn, T, U, V>(fun_Tion:(t:T, u:U, v:V) -> TReturn, context:TContext):(t:T, u:U, v:V) -> TReturn { })
	@:overload(function<TContext, TReturn, A, B, C, D, E, F, G, T, U, V, W>(fun_Tion:(a:A, b:B, c:C, d:D, e:E, f:F, g:G, t:T, u:U, v:V, w:W) -> TReturn, context:TContext, a:A, b:B, c:C, d:D, e:E, f:F, g:G):(t:T, u:U, v:V, w:W) -> TReturn { })
	@:overload(function<TContext, TReturn, A, B, C, D, E, F, T, U, V, W>(fun_Tion:(a:A, b:B, c:C, d:D, e:E, f:F, t:T, u:U, v:V, w:W) -> TReturn, context:TContext, a:A, b:B, c:C, d:D, e:E, f:F):(t:T, u:U, v:V, w:W) -> TReturn { })
	@:overload(function<TContext, TReturn, A, B, C, D, E, T, U, V, W>(fun_Tion:(a:A, b:B, c:C, d:D, e:E, t:T, u:U, v:V, w:W) -> TReturn, context:TContext, a:A, b:B, c:C, d:D, e:E):(t:T, u:U, v:V, w:W) -> TReturn { })
	@:overload(function<TContext, TReturn, A, B, C, D, T, U, V, W>(fun_Tion:(a:A, b:B, c:C, d:D, t:T, u:U, v:V, w:W) -> TReturn, context:TContext, a:A, b:B, c:C, d:D):(t:T, u:U, v:V, w:W) -> TReturn { })
	@:overload(function<TContext, TReturn, A, B, C, T, U, V, W>(fun_Tion:(a:A, b:B, c:C, t:T, u:U, v:V, w:W) -> TReturn, context:TContext, a:A, b:B, c:C):(t:T, u:U, v:V, w:W) -> TReturn { })
	@:overload(function<TContext, TReturn, A, B, T, U, V, W>(fun_Tion:(a:A, b:B, t:T, u:U, v:V, w:W) -> TReturn, context:TContext, a:A, b:B):(t:T, u:U, v:V, w:W) -> TReturn { })
	@:overload(function<TContext, TReturn, A, T, U, V, W>(fun_Tion:(a:A, t:T, u:U, v:V, w:W) -> TReturn, context:TContext, a:A):(t:T, u:U, v:V, w:W) -> TReturn { })
	@:overload(function<TContext, TReturn, T, U, V, W>(fun_Tion:(t:T, u:U, v:V, w:W) -> TReturn, context:TContext):(t:T, u:U, v:V, w:W) -> TReturn { })
	@:overload(function<TContext, TReturn, A, B, C, D, E, F, G, T, U, V, W, X>(fun_Tion:(a:A, b:B, c:C, d:D, e:E, f:F, g:G, t:T, u:U, v:V, w:W, x:X) -> TReturn, context:TContext, a:A, b:B, c:C, d:D, e:E, f:F, g:G):(t:T, u:U, v:V, w:W, x:X) -> TReturn { })
	@:overload(function<TContext, TReturn, A, B, C, D, E, F, T, U, V, W, X>(fun_Tion:(a:A, b:B, c:C, d:D, e:E, f:F, t:T, u:U, v:V, w:W, x:X) -> TReturn, context:TContext, a:A, b:B, c:C, d:D, e:E, f:F):(t:T, u:U, v:V, w:W, x:X) -> TReturn { })
	@:overload(function<TContext, TReturn, A, B, C, D, E, T, U, V, W, X>(fun_Tion:(a:A, b:B, c:C, d:D, e:E, t:T, u:U, v:V, w:W, x:X) -> TReturn, context:TContext, a:A, b:B, c:C, d:D, e:E):(t:T, u:U, v:V, w:W, x:X) -> TReturn { })
	@:overload(function<TContext, TReturn, A, B, C, D, T, U, V, W, X>(fun_Tion:(a:A, b:B, c:C, d:D, t:T, u:U, v:V, w:W, x:X) -> TReturn, context:TContext, a:A, b:B, c:C, d:D):(t:T, u:U, v:V, w:W, x:X) -> TReturn { })
	@:overload(function<TContext, TReturn, A, B, C, T, U, V, W, X>(fun_Tion:(a:A, b:B, c:C, t:T, u:U, v:V, w:W, x:X) -> TReturn, context:TContext, a:A, b:B, c:C):(t:T, u:U, v:V, w:W, x:X) -> TReturn { })
	@:overload(function<TContext, TReturn, A, B, T, U, V, W, X>(fun_Tion:(a:A, b:B, t:T, u:U, v:V, w:W, x:X) -> TReturn, context:TContext, a:A, b:B):(t:T, u:U, v:V, w:W, x:X) -> TReturn { })
	@:overload(function<TContext, TReturn, A, T, U, V, W, X>(fun_Tion:(a:A, t:T, u:U, v:V, w:W, x:X) -> TReturn, context:TContext, a:A):(t:T, u:U, v:V, w:W, x:X) -> TReturn { })
	@:overload(function<TContext, TReturn, T, U, V, W, X>(fun_Tion:(t:T, u:U, v:V, w:W, x:X) -> TReturn, context:TContext):(t:T, u:U, v:V, w:W, x:X) -> TReturn { })
	@:overload(function<TContext, TReturn, A, B, C, D, E, F, G, T, U, V, W, X, Y>(fun_Tion:(a:A, b:B, c:C, d:D, e:E, f:F, g:G, t:T, u:U, v:V, w:W, x:X, y:Y) -> TReturn, context:TContext, a:A, b:B, c:C, d:D, e:E, f:F, g:G):(t:T, u:U, v:V, w:W, x:X, y:Y) -> TReturn { })
	@:overload(function<TContext, TReturn, A, B, C, D, E, F, T, U, V, W, X, Y>(fun_Tion:(a:A, b:B, c:C, d:D, e:E, f:F, t:T, u:U, v:V, w:W, x:X, y:Y) -> TReturn, context:TContext, a:A, b:B, c:C, d:D, e:E, f:F):(t:T, u:U, v:V, w:W, x:X, y:Y) -> TReturn { })
	@:overload(function<TContext, TReturn, A, B, C, D, E, T, U, V, W, X, Y>(fun_Tion:(a:A, b:B, c:C, d:D, e:E, t:T, u:U, v:V, w:W, x:X, y:Y) -> TReturn, context:TContext, a:A, b:B, c:C, d:D, e:E):(t:T, u:U, v:V, w:W, x:X, y:Y) -> TReturn { })
	@:overload(function<TContext, TReturn, A, B, C, D, T, U, V, W, X, Y>(fun_Tion:(a:A, b:B, c:C, d:D, t:T, u:U, v:V, w:W, x:X, y:Y) -> TReturn, context:TContext, a:A, b:B, c:C, d:D):(t:T, u:U, v:V, w:W, x:X, y:Y) -> TReturn { })
	@:overload(function<TContext, TReturn, A, B, C, T, U, V, W, X, Y>(fun_Tion:(a:A, b:B, c:C, t:T, u:U, v:V, w:W, x:X, y:Y) -> TReturn, context:TContext, a:A, b:B, c:C):(t:T, u:U, v:V, w:W, x:X, y:Y) -> TReturn { })
	@:overload(function<TContext, TReturn, A, B, T, U, V, W, X, Y>(fun_Tion:(a:A, b:B, t:T, u:U, v:V, w:W, x:X, y:Y) -> TReturn, context:TContext, a:A, b:B):(t:T, u:U, v:V, w:W, x:X, y:Y) -> TReturn { })
	@:overload(function<TContext, TReturn, A, T, U, V, W, X, Y>(fun_Tion:(a:A, t:T, u:U, v:V, w:W, x:X, y:Y) -> TReturn, context:TContext, a:A):(t:T, u:U, v:V, w:W, x:X, y:Y) -> TReturn { })
	@:overload(function<TContext, TReturn, T, U, V, W, X, Y>(fun_Tion:(t:T, u:U, v:V, w:W, x:X, y:Y) -> TReturn, context:TContext):(t:T, u:U, v:V, w:W, x:X, y:Y) -> TReturn { })
	@:overload(function<TContext, TReturn, A, B, C, D, E, F, G, T, U, V, W, X, Y, Z>(fun_Tion:(a:A, b:B, c:C, d:D, e:E, f:F, g:G, t:T, u:U, v:V, w:W, x:X, y:Y, z:Z, args:std.Array<Any>) -> TReturn, context:TContext, a:A, b:B, c:C, d:D, e:E, f:F, g:G):(t:T, u:U, v:V, w:W, x:X, y:Y, z:Z, args:std.Array<Any>) -> TReturn { })
	@:overload(function<TContext, TReturn, A, B, C, D, E, F, T, U, V, W, X, Y, Z>(fun_Tion:(a:A, b:B, c:C, d:D, e:E, f:F, t:T, u:U, v:V, w:W, x:X, y:Y, z:Z, args:std.Array<Any>) -> TReturn, context:TContext, a:A, b:B, c:C, d:D, e:E, f:F):(t:T, u:U, v:V, w:W, x:X, y:Y, z:Z, args:std.Array<Any>) -> TReturn { })
	@:overload(function<TContext, TReturn, A, B, C, D, E, T, U, V, W, X, Y, Z>(fun_Tion:(a:A, b:B, c:C, d:D, e:E, t:T, u:U, v:V, w:W, x:X, y:Y, z:Z, args:std.Array<Any>) -> TReturn, context:TContext, a:A, b:B, c:C, d:D, e:E):(t:T, u:U, v:V, w:W, x:X, y:Y, z:Z, args:std.Array<Any>) -> TReturn { })
	@:overload(function<TContext, TReturn, A, B, C, D, T, U, V, W, X, Y, Z>(fun_Tion:(a:A, b:B, c:C, d:D, t:T, u:U, v:V, w:W, x:X, y:Y, z:Z, args:std.Array<Any>) -> TReturn, context:TContext, a:A, b:B, c:C, d:D):(t:T, u:U, v:V, w:W, x:X, y:Y, z:Z, args:std.Array<Any>) -> TReturn { })
	@:overload(function<TContext, TReturn, A, B, C, T, U, V, W, X, Y, Z>(fun_Tion:(a:A, b:B, c:C, t:T, u:U, v:V, w:W, x:X, y:Y, z:Z, args:std.Array<Any>) -> TReturn, context:TContext, a:A, b:B, c:C):(t:T, u:U, v:V, w:W, x:X, y:Y, z:Z, args:std.Array<Any>) -> TReturn { })
	@:overload(function<TContext, TReturn, A, B, T, U, V, W, X, Y, Z>(fun_Tion:(a:A, b:B, t:T, u:U, v:V, w:W, x:X, y:Y, z:Z, args:std.Array<Any>) -> TReturn, context:TContext, a:A, b:B):(t:T, u:U, v:V, w:W, x:X, y:Y, z:Z, args:std.Array<Any>) -> TReturn { })
	@:overload(function<TContext, TReturn, A, T, U, V, W, X, Y, Z>(fun_Tion:(a:A, t:T, u:U, v:V, w:W, x:X, y:Y, z:Z, args:std.Array<Any>) -> TReturn, context:TContext, a:A):(t:T, u:U, v:V, w:W, x:X, y:Y, z:Z, args:std.Array<Any>) -> TReturn { })
	@:overload(function<TContext, TReturn, T, U, V, W, X, Y, Z>(fun_Tion:(t:T, u:U, v:V, w:W, x:X, y:Y, z:Z, args:std.Array<Any>) -> TReturn, context:TContext):(t:T, u:U, v:V, w:W, x:X, y:Y, z:Z, args:std.Array<Any>) -> TReturn { })
	@:overload(function<TContext, TReturn>(fun_Tion:(args:std.Array<Any>) -> TReturn, context:TContext, additionalArguments:std.Array<Any>):(args:std.Array<Any>) -> TReturn { })
	@:overload(function<TContext>(context:TContext, name:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, js.lib.Symbol>>, additionalArguments:std.Array<Any>):(args:std.Array<Any>) -> Any { })
	function proxy<TReturn, A, B, C, D, E, F, G>(fun_Tion:(a:A, b:B, c:C, d:D, e:E, f:F, g:G) -> TReturn, context:Null<Any>, a:A, b:B, c:C, d:D, e:E, f:F, g:G):() -> TReturn;
	/**
		Manipulate the queue of functions to be executed on the matched element.
	**/
	function queue<T>(element:T, ?queueName:String, ?newQueue:haxe.extern.EitherType<(next:() -> Void) -> Void, std.Array<(next:() -> Void) -> Void>>):{
		@:native("0")
		var Zero : String;
	} & std.Array<(next:() -> Void) -> Void>;
	/**
		Handles errors thrown synchronously in functions wrapped in jQuery().
	**/
	function readyException(error:ts.lib.IError):Any;
	/**
		Remove a previously-stored piece of data.
	**/
	function removeData(element:haxe.extern.EitherType<ts.html.IDocument, haxe.extern.EitherType<ts.html.IElement, haxe.extern.EitherType<ts.html.IWindow, global.jquery.PlainObject<Any>>>>, ?name:String):Void;
	/**
		Creates an object containing a set of properties ready to be used in the definition of custom animations.
		
		Creates an object containing a set of properties ready to be used in the definition of custom animations.
		
		Creates an object containing a set of properties ready to be used in the definition of custom animations.
	**/
	@:overload(function<TElement>(duration:haxe.extern.EitherType<Float, String>, easing_complete:haxe.extern.EitherType<String, () -> Void>):global.jquery.EffectsOptions<TElement> { })
	@:overload(function<TElement>(?duration_complete_settings:haxe.extern.EitherType<Float, haxe.extern.EitherType<String, haxe.extern.EitherType<{ /** A string or number determining how long the animation will run. **/ var duration : haxe.extern.EitherType<Float, String>; }, haxe.extern.EitherType<{ /** A string indicating which easing function to use for the transition. **/ var easing : String; }, haxe.extern.EitherType<{ }, haxe.extern.EitherType<() -> Void, { /** A function to call once the animation is complete. **/ function complete():Void; }>>>>>>):global.jquery.EffectsOptions<TElement> { })
	function speed<TElement>(duration:haxe.extern.EitherType<Float, String>, easing:String, complete:() -> Void):global.jquery.EffectsOptions<TElement>;
	/**
		Remove the whitespace from the beginning and end of a string.
	**/
	function trim(str:String):String;
	/**
		Determine the internal JavaScript [[Class]] of an object.
	**/
	function type(obj:Any):String;
	/**
		Sorts an array of DOM elements, in place, with the duplicates removed. Note that this only works on arrays of DOM elements, not strings or numbers.
	**/
	function unique<T>(array:std.Array<T>):std.Array<T>;
	/**
		Sorts an array of DOM elements, in place, with the duplicates removed. Note that this only works on arrays of DOM elements, not strings or numbers.
	**/
	function uniqueSort<T>(array:std.Array<T>):std.Array<T>;
	/**
		Provides a way to execute callback functions based on zero or more Thenable objects, usually Deferred objects that represent asynchronous events.
		
		Provides a way to execute callback functions based on zero or more Thenable objects, usually Deferred objects that represent asynchronous events.
		
		Provides a way to execute callback functions based on zero or more Thenable objects, usually Deferred objects that represent asynchronous events.
		
		Provides a way to execute callback functions based on zero or more Thenable objects, usually Deferred objects that represent asynchronous events.
		
		Provides a way to execute callback functions based on zero or more Thenable objects, usually Deferred objects that represent asynchronous events.
		
		Provides a way to execute callback functions based on zero or more Thenable objects, usually Deferred objects that represent asynchronous events.
	**/
	@:overload(function<TR1, UR1, TJ1, UJ1>(deferredT:haxe.extern.EitherType<TR1, haxe.extern.EitherType<global.jquery.Promise<TR1, TJ1, Any>, global.jquery.Thenable<TR1>>>, deferredU:haxe.extern.EitherType<UR1, haxe.extern.EitherType<global.jquery.Promise<UR1, UJ1, Any>, global.jquery.Thenable<UR1>>>):global.jquery.Promise2<TR1, TJ1, Any, UR1, UJ1, Any> { })
	@:overload(function<TR1, TJ1, TR2, TJ2, TR3, TJ3>(deferredT:haxe.extern.EitherType<global.jquery.Promise3<TR1, TJ1, Any, TR2, TJ2, Any, TR3, TJ3, Any>, global.jquery.Promise2<TR1, TJ1, Any, TR2, TJ2, Any>>):global.jquery.Promise3<TR1, TJ1, Any, TR2, TJ2, Any, TR3, TJ3, Any> { })
	@:overload(function<TR1, TJ1>(deferred:haxe.extern.EitherType<TR1, haxe.extern.EitherType<global.jquery.Promise<TR1, TJ1, Any>, global.jquery.Thenable<TR1>>>):global.jquery.Promise<TR1, TJ1, Any> { })
	@:overload(function<TR1, TJ1>(deferreds:std.Array<haxe.extern.EitherType<TR1, haxe.extern.EitherType<global.jquery.Promise<TR1, TJ1, Any>, global.jquery.Thenable<TR1>>>>):global.jquery.Promise<TR1, TJ1, Any> { })
	@:overload(function(deferreds:std.Array<Any>):global.jquery.Promise<Any, Any, Any> { })
	function when<TR1, UR1, VR1, TJ1, UJ1, VJ1>(deferredT:haxe.extern.EitherType<TR1, haxe.extern.EitherType<global.jquery.Promise<TR1, TJ1, Any>, global.jquery.Thenable<TR1>>>, deferredU:haxe.extern.EitherType<UR1, haxe.extern.EitherType<global.jquery.Promise<UR1, UJ1, Any>, global.jquery.Thenable<UR1>>>, deferredV:haxe.extern.EitherType<VR1, haxe.extern.EitherType<global.jquery.Promise<VR1, VJ1, Any>, global.jquery.Thenable<VR1>>>):global.jquery.Promise3<TR1, TJ1, Any, UR1, UJ1, Any, VR1, VJ1, Any>;
};