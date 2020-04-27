package js.lib;
/**
	A <form> element in the DOM; it allows access to and in some cases modification of aspects of the form, as well as access to its component elements.
**/
@:native("HTMLFormElement") @tsInterface extern class HTMLFormElement {
	function new();
	/**
		Sets or retrieves a list of character encodings for input data that must be accepted by the server processing the form.
	**/
	var acceptCharset : String;
	/**
		Sets or retrieves the URL to which the form content is sent for processing.
	**/
	var action : String;
	/**
		Specifies whether autocomplete is applied to an editable text field.
	**/
	var autocomplete : String;
	/**
		Retrieves a collection, in source order, of all controls in a given form.
	**/
	final elements : js.html.HTMLFormControlsCollection;
	/**
		Sets or retrieves the MIME encoding for the form.
	**/
	var encoding : String;
	/**
		Sets or retrieves the encoding type for the form.
	**/
	var enctype : String;
	/**
		Sets or retrieves the number of objects in a collection.
	**/
	final length : Float;
	/**
		Sets or retrieves how to send the form data to the server.
	**/
	var method : String;
	/**
		Sets or retrieves the name of the object.
	**/
	var name : String;
	/**
		Designates a form that is not validated when submitted.
	**/
	var noValidate : Bool;
	/**
		Sets or retrieves the window or frame at which to target content.
	**/
	var target : String;
	/**
		Returns whether a form will validate when it is submitted, without having to submit it.
	**/
	function checkValidity():Bool;
	function reportValidity():Bool;
	/**
		Fires when the user resets a form.
	**/
	function reset():Void;
	/**
		Fires when a FORM is about to be submitted.
	**/
	function submit():Void;
	/**
		Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
		
		The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
		
		When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
		
		When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in §2.8 Observing event listeners.
		
		When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
		
		The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
		
		
		
		Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
		
		The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
		
		When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
		
		When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in §2.8 Observing event listeners.
		
		When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
		
		The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
		
		
		
		Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
		
		The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
		
		When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
		
		When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in §2.8 Observing event listeners.
		
		When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
		
		The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
		
		
		
		Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
		
		The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
		
		When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
		
		When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in §2.8 Observing event listeners.
		
		When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
		
		The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
		
		
		
		Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
		
		The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
		
		When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
		
		When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in §2.8 Observing event listeners.
		
		When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
		
		The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
		
		
		
		Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
		
		The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
		
		When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
		
		When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in §2.8 Observing event listeners.
		
		When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
		
		The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
		
		
		
		Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
		
		The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
		
		When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
		
		When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in §2.8 Observing event listeners.
		
		When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
		
		The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
		
		
		
		Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
		
		The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
		
		When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
		
		When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in §2.8 Observing event listeners.
		
		When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
		
		The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
	**/
	@:overload(function(type:String, listener:haxe.extern.EitherType<js.html.EventListener, js.html.EventListenerObject>, ?options:haxe.extern.EitherType<Bool, js.html.AddEventListenerOptions>):Void { })
	function addEventListener<K:(String)>(type:K, listener:(ev:Any) -> Any, ?options:haxe.extern.EitherType<Bool, js.html.AddEventListenerOptions>):Void;
	/**
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
	**/
	@:overload(function(type:String, listener:haxe.extern.EitherType<js.html.EventListener, js.html.EventListenerObject>, ?options:haxe.extern.EitherType<Bool, js.html.EventListenerOptions>):Void { })
	function removeEventListener<K:(String)>(type:K, listener:(ev:Any) -> Any, ?options:haxe.extern.EitherType<Bool, js.html.EventListenerOptions>):Void;
	var accessKey : String;
	final accessKeyLabel : String;
	var autocapitalize : String;
	var dir : String;
	var draggable : Bool;
	var hidden : Bool;
	var innerText : String;
	var lang : String;
	final offsetHeight : Float;
	final offsetLeft : Float;
	final offsetParent : Null<js.html.Element>;
	final offsetTop : Float;
	final offsetWidth : Float;
	var spellcheck : Bool;
	var title : String;
	var translate : Bool;
	function click():Void;
	final assignedSlot : Null<js.html.HTMLSlotElement>;
	final attributes : NamedNodeMap;
	/**
		Allows for manipulation of element's class content attribute as a set of whitespace-separated tokens through a DOMTokenList object.
	**/
	final classList : DOMTokenList;
	/**
		Returns the value of element's class content attribute. Can be set to change it.
	**/
	var className : String;
	final clientHeight : Float;
	final clientLeft : Float;
	final clientTop : Float;
	final clientWidth : Float;
	/**
		Returns the value of element's id content attribute. Can be set to change it.
	**/
	var id : String;
	/**
		Returns the local name.
	**/
	final localName : String;
	/**
		Returns the namespace.
	**/
	final namespaceURI : Null<String>;
	var onfullscreenchange : Null<(ev:js.html.Event) -> Any>;
	var onfullscreenerror : Null<(ev:js.html.Event) -> Any>;
	var outerHTML : String;
	/**
		Returns the namespace prefix.
	**/
	final prefix : Null<String>;
	final scrollHeight : Float;
	var scrollLeft : Float;
	var scrollTop : Float;
	final scrollWidth : Float;
	/**
		Returns element's shadow root, if any, and if shadow root's mode is "open", and null otherwise.
	**/
	final shadowRoot : Null<js.html.ShadowRoot>;
	/**
		Returns the value of element's slot content attribute. Can be set to change it.
	**/
	var slot : String;
	/**
		Returns the HTML-uppercased qualified name.
	**/
	final tagName : String;
	/**
		Creates a shadow root for element and returns it.
	**/
	function attachShadow(init:js.html.ShadowRootInit):js.html.ShadowRoot;
	/**
		Returns the first (starting at element) inclusive ancestor that matches selectors, and null otherwise.
	**/
	@:overload(function<K:(String)>(selector:K):Null<Any> { })
	@:overload(function<E:(js.html.Element)>(selector:String):Null<E> { })
	function closest<K:(String)>(selector:K):Null<Any>;
	/**
		Returns element's first attribute whose qualified name is qualifiedName, and null if there is no such attribute otherwise.
	**/
	function getAttribute(qualifiedName:String):Null<String>;
	/**
		Returns element's attribute whose namespace is namespace and local name is localName, and null if there is no such attribute otherwise.
	**/
	function getAttributeNS(namespace:Null<String>, localName:String):Null<String>;
	/**
		Returns the qualified names of all element's attributes. Can contain duplicates.
	**/
	function getAttributeNames():std.Array<String>;
	function getAttributeNode(name:String):Null<js.html.Attr>;
	function getAttributeNodeNS(namespaceURI:String, localName:String):Null<js.html.Attr>;
	function getBoundingClientRect():js.html.DOMRect;
	function getClientRects():DOMRectList;
	/**
		Returns a HTMLCollection of the elements in the object on which the method was invoked (a document or an element) that have all the classes given by classNames. The classNames argument is interpreted as a space-separated list of classes.
	**/
	function getElementsByClassName(classNames:String):HTMLCollectionOf<js.html.Element>;
	@:overload(function<K:(String)>(qualifiedName:K):HTMLCollectionOf<Any> { })
	@:overload(function(qualifiedName:String):HTMLCollectionOf<js.html.Element> { })
	function getElementsByTagName<K:(String)>(qualifiedName:K):HTMLCollectionOf<Any>;
	@:overload(function(namespaceURI:String, localName:String):HTMLCollectionOf<js.html.SVGElement> { })
	@:overload(function(namespaceURI:String, localName:String):HTMLCollectionOf<js.html.Element> { })
	function getElementsByTagNameNS(namespaceURI:String, localName:String):HTMLCollectionOf<js.html.HTMLElement>;
	/**
		Returns true if element has an attribute whose qualified name is qualifiedName, and false otherwise.
	**/
	function hasAttribute(qualifiedName:String):Bool;
	/**
		Returns true if element has an attribute whose namespace is namespace and local name is localName.
	**/
	function hasAttributeNS(namespace:Null<String>, localName:String):Bool;
	/**
		Returns true if element has attributes, and false otherwise.
	**/
	function hasAttributes():Bool;
	function hasPointerCapture(pointerId:Float):Bool;
	function insertAdjacentElement(position:String, insertedElement:js.html.Element):Null<js.html.Element>;
	function insertAdjacentHTML(where:String, html:String):Void;
	function insertAdjacentText(where:String, text:String):Void;
	/**
		Returns true if matching selectors against element's root yields element, and false otherwise.
	**/
	function matches(selectors:String):Bool;
	function msGetRegionContent():Any;
	function releasePointerCapture(pointerId:Float):Void;
	/**
		Removes element's first attribute whose qualified name is qualifiedName.
	**/
	function removeAttribute(qualifiedName:String):Void;
	/**
		Removes element's attribute whose namespace is namespace and local name is localName.
	**/
	function removeAttributeNS(namespace:Null<String>, localName:String):Void;
	function removeAttributeNode(attr:js.html.Attr):js.html.Attr;
	/**
		Displays element fullscreen and resolves promise when done.
		
		When supplied, options's navigationUI member indicates whether showing navigation UI while in fullscreen is preferred or not. If set to "show", navigation simplicity is preferred over screen space, and if set to "hide", more screen space is preferred. User agents are always free to honor user preference over the application's. The default value "auto" indicates no application preference.
	**/
	function requestFullscreen(?options:js.html.FullscreenOptions):Promise<Void>;
	function requestPointerLock():Void;
	@:overload(function(x:Float, y:Float):Void { })
	function scroll(?options:js.html.ScrollToOptions):Void;
	@:overload(function(x:Float, y:Float):Void { })
	function scrollBy(?options:js.html.ScrollToOptions):Void;
	function scrollIntoView(?arg:haxe.extern.EitherType<Bool, js.html.ScrollIntoViewOptions>):Void;
	@:overload(function(x:Float, y:Float):Void { })
	function scrollTo(?options:js.html.ScrollToOptions):Void;
	/**
		Sets the value of element's first attribute whose qualified name is qualifiedName to value.
	**/
	function setAttribute(qualifiedName:String, value:String):Void;
	/**
		Sets the value of element's attribute whose namespace is namespace and local name is localName to value.
	**/
	function setAttributeNS(namespace:Null<String>, qualifiedName:String, value:String):Void;
	function setAttributeNode(attr:js.html.Attr):Null<js.html.Attr>;
	function setAttributeNodeNS(attr:js.html.Attr):Null<js.html.Attr>;
	function setPointerCapture(pointerId:Float):Void;
	/**
		If force is not given, "toggles" qualifiedName, removing it if it is present and adding it if it is not present. If force is true, adds qualifiedName. If force is false, removes qualifiedName.
		
		Returns true if qualifiedName is now present, and false otherwise.
	**/
	function toggleAttribute(qualifiedName:String, ?force:Bool):Bool;
	function webkitMatchesSelector(selectors:String):Bool;
	/**
		Returns node's node document's document base URL.
	**/
	final baseURI : String;
	/**
		Returns the children.
	**/
	final childNodes : NodeListOf<js.html.ChildNode>;
	/**
		Returns the first child.
	**/
	final firstChild : Null<js.html.ChildNode>;
	/**
		Returns true if node is connected and false otherwise.
	**/
	final isConnected : Bool;
	/**
		Returns the last child.
	**/
	final lastChild : Null<js.html.ChildNode>;
	/**
		Returns the next sibling.
	**/
	final nextSibling : Null<js.html.ChildNode>;
	/**
		Returns a string appropriate for the type of node.
	**/
	final nodeName : String;
	/**
		Returns the type of node.
	**/
	final nodeType : Float;
	var nodeValue : Null<String>;
	/**
		Returns the node document. Returns null for documents.
	**/
	final ownerDocument : Null<js.html.Document>;
	/**
		Returns the parent element.
	**/
	final parentElement : Null<js.html.HTMLElement>;
	/**
		Returns the parent.
	**/
	final parentNode : Null<js.html.Node & js.html.ParentNode>;
	/**
		Returns the previous sibling.
	**/
	final previousSibling : Null<js.html.Node>;
	var textContent : Null<String>;
	function appendChild<T:(js.html.Node)>(newChild:T):T;
	/**
		Returns a copy of node. If deep is true, the copy also includes the node's descendants.
	**/
	function cloneNode(?deep:Bool):js.html.Node;
	/**
		Returns a bitmask indicating the position of other relative to node.
	**/
	function compareDocumentPosition(other:js.html.Node):Float;
	/**
		Returns true if other is an inclusive descendant of node, and false otherwise.
	**/
	function contains(other:Null<js.html.Node>):Bool;
	/**
		Returns node's root.
	**/
	function getRootNode(?options:js.html.GetRootNodeOptions):js.html.Node;
	/**
		Returns whether node has children.
	**/
	function hasChildNodes():Bool;
	function insertBefore<T:(js.html.Node)>(newChild:T, refChild:Null<js.html.Node>):T;
	function isDefaultNamespace(namespace:Null<String>):Bool;
	/**
		Returns whether node and otherNode have the same properties.
	**/
	function isEqualNode(otherNode:Null<js.html.Node>):Bool;
	function isSameNode(otherNode:Null<js.html.Node>):Bool;
	function lookupNamespaceURI(prefix:Null<String>):Null<String>;
	function lookupPrefix(namespace:Null<String>):Null<String>;
	/**
		Removes empty exclusive Text nodes and concatenates the data of remaining contiguous exclusive Text nodes into the first of their nodes.
	**/
	function normalize():Void;
	function removeChild<T:(js.html.Node)>(oldChild:T):T;
	function replaceChild<T:(js.html.Node)>(newChild:js.html.Node, oldChild:T):T;
	final ATTRIBUTE_NODE : Float;
	/**
		node is a CDATASection node.
	**/
	final CDATA_SECTION_NODE : Float;
	/**
		node is a Comment node.
	**/
	final COMMENT_NODE : Float;
	/**
		node is a DocumentFragment node.
	**/
	final DOCUMENT_FRAGMENT_NODE : Float;
	/**
		node is a document.
	**/
	final DOCUMENT_NODE : Float;
	/**
		Set when other is a descendant of node.
	**/
	final DOCUMENT_POSITION_CONTAINED_BY : Float;
	/**
		Set when other is an ancestor of node.
	**/
	final DOCUMENT_POSITION_CONTAINS : Float;
	/**
		Set when node and other are not in the same tree.
	**/
	final DOCUMENT_POSITION_DISCONNECTED : Float;
	/**
		Set when other is following node.
	**/
	final DOCUMENT_POSITION_FOLLOWING : Float;
	final DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC : Float;
	/**
		Set when other is preceding node.
	**/
	final DOCUMENT_POSITION_PRECEDING : Float;
	/**
		node is a doctype.
	**/
	final DOCUMENT_TYPE_NODE : Float;
	/**
		node is an element.
	**/
	final ELEMENT_NODE : Float;
	final ENTITY_NODE : Float;
	final ENTITY_REFERENCE_NODE : Float;
	final NOTATION_NODE : Float;
	/**
		node is a ProcessingInstruction node.
	**/
	final PROCESSING_INSTRUCTION_NODE : Float;
	/**
		node is a Text node.
	**/
	final TEXT_NODE : Float;
	/**
		Dispatches a synthetic event event to target and returns true if either event's cancelable attribute value is false or its preventDefault() method was not invoked, and false otherwise.
	**/
	function dispatchEvent(event:js.html.Event):Bool;
	function animate(keyframes:Null<haxe.extern.EitherType<std.Array<js.html.Keyframe>, js.html.PropertyIndexedKeyframes>>, ?options:haxe.extern.EitherType<Float, js.html.KeyframeAnimationOptions>):js.html.Animation;
	function getAnimations():std.Array<js.html.Animation>;
	/**
		Inserts nodes just after node, while replacing strings in nodes with equivalent Text nodes.
		
		Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
	**/
	function after(nodes:std.Array<haxe.extern.EitherType<String, js.html.Node>>):Void;
	/**
		Inserts nodes just before node, while replacing strings in nodes with equivalent Text nodes.
		
		Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
	**/
	function before(nodes:std.Array<haxe.extern.EitherType<String, js.html.Node>>):Void;
	/**
		Removes node.
	**/
	function remove():Void;
	/**
		Replaces node with nodes, while replacing strings in nodes with equivalent Text nodes.
		
		Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
	**/
	function replaceWith(nodes:std.Array<haxe.extern.EitherType<String, js.html.Node>>):Void;
	var innerHTML : String;
	/**
		Returns the first following sibling that is an element, and null otherwise.
	**/
	final nextElementSibling : Null<js.html.Element>;
	/**
		Returns the first preceding sibling that is an element, and null otherwise.
	**/
	final previousElementSibling : Null<js.html.Element>;
	final childElementCount : Float;
	/**
		Returns the child elements.
	**/
	final children : js.html.HTMLCollection;
	/**
		Returns the first child that is an element, and null otherwise.
	**/
	final firstElementChild : Null<js.html.Element>;
	/**
		Returns the last child that is an element, and null otherwise.
	**/
	final lastElementChild : Null<js.html.Element>;
	/**
		Inserts nodes after the last child of node, while replacing strings in nodes with equivalent Text nodes.
		
		Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
	**/
	function append(nodes:std.Array<haxe.extern.EitherType<String, js.html.Node>>):Void;
	/**
		Inserts nodes before the first child of node, while replacing strings in nodes with equivalent Text nodes.
		
		Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
	**/
	function prepend(nodes:std.Array<haxe.extern.EitherType<String, js.html.Node>>):Void;
	/**
		Returns the first element that is a descendant of node that matches selectors.
	**/
	@:overload(function<K:(String)>(selectors:K):Null<Any> { })
	@:overload(function<E:(js.html.Element)>(selectors:String):Null<E> { })
	function querySelector<K:(String)>(selectors:K):Null<Any>;
	/**
		Returns all element descendants of node that match selectors.
	**/
	@:overload(function<K:(String)>(selectors:K):NodeListOf<Any> { })
	@:overload(function<E:(js.html.Element)>(selectors:String):NodeListOf<E> { })
	function querySelectorAll<K:(String)>(selectors:K):NodeListOf<Any>;
	var oncopy : Null<(ev:js.html.ClipboardEvent) -> Any>;
	var oncut : Null<(ev:js.html.ClipboardEvent) -> Any>;
	var onpaste : Null<(ev:js.html.ClipboardEvent) -> Any>;
	final style : CSSStyleDeclaration;
	var contentEditable : String;
	var inputMode : String;
	final isContentEditable : Bool;
	/**
		Fires when the user aborts the download.
	**/
	var onabort : Null<(ev:js.html.UIEvent) -> Any>;
	var onanimationcancel : Null<(ev:js.html.AnimationEvent) -> Any>;
	var onanimationend : Null<(ev:js.html.AnimationEvent) -> Any>;
	var onanimationiteration : Null<(ev:js.html.AnimationEvent) -> Any>;
	var onanimationstart : Null<(ev:js.html.AnimationEvent) -> Any>;
	var onauxclick : Null<(ev:js.html.MouseEvent) -> Any>;
	/**
		Fires when the object loses the input focus.
	**/
	var onblur : Null<(ev:js.html.FocusEvent) -> Any>;
	var oncancel : Null<(ev:js.html.Event) -> Any>;
	/**
		Occurs when playback is possible, but would require further buffering.
	**/
	var oncanplay : Null<(ev:js.html.Event) -> Any>;
	var oncanplaythrough : Null<(ev:js.html.Event) -> Any>;
	/**
		Fires when the contents of the object or selection have changed.
	**/
	var onchange : Null<(ev:js.html.Event) -> Any>;
	/**
		Fires when the user clicks the left mouse button on the object
	**/
	var onclick : Null<(ev:js.html.MouseEvent) -> Any>;
	var onclose : Null<(ev:js.html.Event) -> Any>;
	/**
		Fires when the user clicks the right mouse button in the client area, opening the context menu.
	**/
	var oncontextmenu : Null<(ev:js.html.MouseEvent) -> Any>;
	var oncuechange : Null<(ev:js.html.Event) -> Any>;
	/**
		Fires when the user double-clicks the object.
	**/
	var ondblclick : Null<(ev:js.html.MouseEvent) -> Any>;
	/**
		Fires on the source object continuously during a drag operation.
	**/
	var ondrag : Null<(ev:js.html.DragEvent) -> Any>;
	/**
		Fires on the source object when the user releases the mouse at the close of a drag operation.
	**/
	var ondragend : Null<(ev:js.html.DragEvent) -> Any>;
	/**
		Fires on the target element when the user drags the object to a valid drop target.
	**/
	var ondragenter : Null<(ev:js.html.DragEvent) -> Any>;
	var ondragexit : Null<(ev:js.html.Event) -> Any>;
	/**
		Fires on the target object when the user moves the mouse out of a valid drop target during a drag operation.
	**/
	var ondragleave : Null<(ev:js.html.DragEvent) -> Any>;
	/**
		Fires on the target element continuously while the user drags the object over a valid drop target.
	**/
	var ondragover : Null<(ev:js.html.DragEvent) -> Any>;
	/**
		Fires on the source object when the user starts to drag a text selection or selected object.
	**/
	var ondragstart : Null<(ev:js.html.DragEvent) -> Any>;
	var ondrop : Null<(ev:js.html.DragEvent) -> Any>;
	/**
		Occurs when the duration attribute is updated.
	**/
	var ondurationchange : Null<(ev:js.html.Event) -> Any>;
	/**
		Occurs when the media element is reset to its initial state.
	**/
	var onemptied : Null<(ev:js.html.Event) -> Any>;
	/**
		Occurs when the end of playback is reached.
	**/
	var onended : Null<(ev:js.html.Event) -> Any>;
	/**
		Fires when an error occurs during object loading.
	**/
	var onerror : Null<js.html.OnErrorEventHandlerNonNull>;
	/**
		Fires when the object receives focus.
	**/
	var onfocus : Null<(ev:js.html.FocusEvent) -> Any>;
	var ongotpointercapture : Null<(ev:js.html.PointerEvent) -> Any>;
	var oninput : Null<(ev:js.html.Event) -> Any>;
	var oninvalid : Null<(ev:js.html.Event) -> Any>;
	/**
		Fires when the user presses a key.
	**/
	var onkeydown : Null<(ev:js.html.KeyboardEvent) -> Any>;
	/**
		Fires when the user presses an alphanumeric key.
	**/
	var onkeypress : Null<(ev:js.html.KeyboardEvent) -> Any>;
	/**
		Fires when the user releases a key.
	**/
	var onkeyup : Null<(ev:js.html.KeyboardEvent) -> Any>;
	/**
		Fires immediately after the browser loads the object.
	**/
	var onload : Null<(ev:js.html.Event) -> Any>;
	/**
		Occurs when media data is loaded at the current playback position.
	**/
	var onloadeddata : Null<(ev:js.html.Event) -> Any>;
	/**
		Occurs when the duration and dimensions of the media have been determined.
	**/
	var onloadedmetadata : Null<(ev:js.html.Event) -> Any>;
	var onloadend : Null<(ev:js.html.ProgressEvent<js.html.EventTarget>) -> Any>;
	/**
		Occurs when Internet Explorer begins looking for media data.
	**/
	var onloadstart : Null<(ev:js.html.Event) -> Any>;
	var onlostpointercapture : Null<(ev:js.html.PointerEvent) -> Any>;
	/**
		Fires when the user clicks the object with either mouse button.
	**/
	var onmousedown : Null<(ev:js.html.MouseEvent) -> Any>;
	var onmouseenter : Null<(ev:js.html.MouseEvent) -> Any>;
	var onmouseleave : Null<(ev:js.html.MouseEvent) -> Any>;
	/**
		Fires when the user moves the mouse over the object.
	**/
	var onmousemove : Null<(ev:js.html.MouseEvent) -> Any>;
	/**
		Fires when the user moves the mouse pointer outside the boundaries of the object.
	**/
	var onmouseout : Null<(ev:js.html.MouseEvent) -> Any>;
	/**
		Fires when the user moves the mouse pointer into the object.
	**/
	var onmouseover : Null<(ev:js.html.MouseEvent) -> Any>;
	/**
		Fires when the user releases a mouse button while the mouse is over the object.
	**/
	var onmouseup : Null<(ev:js.html.MouseEvent) -> Any>;
	/**
		Occurs when playback is paused.
	**/
	var onpause : Null<(ev:js.html.Event) -> Any>;
	/**
		Occurs when the play method is requested.
	**/
	var onplay : Null<(ev:js.html.Event) -> Any>;
	/**
		Occurs when the audio or video has started playing.
	**/
	var onplaying : Null<(ev:js.html.Event) -> Any>;
	var onpointercancel : Null<(ev:js.html.PointerEvent) -> Any>;
	var onpointerdown : Null<(ev:js.html.PointerEvent) -> Any>;
	var onpointerenter : Null<(ev:js.html.PointerEvent) -> Any>;
	var onpointerleave : Null<(ev:js.html.PointerEvent) -> Any>;
	var onpointermove : Null<(ev:js.html.PointerEvent) -> Any>;
	var onpointerout : Null<(ev:js.html.PointerEvent) -> Any>;
	var onpointerover : Null<(ev:js.html.PointerEvent) -> Any>;
	var onpointerup : Null<(ev:js.html.PointerEvent) -> Any>;
	/**
		Occurs to indicate progress while downloading media data.
	**/
	var onprogress : Null<(ev:js.html.ProgressEvent<js.html.EventTarget>) -> Any>;
	/**
		Occurs when the playback rate is increased or decreased.
	**/
	var onratechange : Null<(ev:js.html.Event) -> Any>;
	/**
		Fires when the user resets a form.
	**/
	var onreset : Null<(ev:js.html.Event) -> Any>;
	var onresize : Null<(ev:js.html.UIEvent) -> Any>;
	/**
		Fires when the user repositions the scroll box in the scroll bar on the object.
	**/
	var onscroll : Null<(ev:js.html.Event) -> Any>;
	var onsecuritypolicyviolation : Null<(ev:js.html.SecurityPolicyViolationEvent) -> Any>;
	/**
		Occurs when the seek operation ends.
	**/
	var onseeked : Null<(ev:js.html.Event) -> Any>;
	/**
		Occurs when the current playback position is moved.
	**/
	var onseeking : Null<(ev:js.html.Event) -> Any>;
	/**
		Fires when the current selection changes.
	**/
	var onselect : Null<(ev:js.html.Event) -> Any>;
	var onselectionchange : Null<(ev:js.html.Event) -> Any>;
	var onselectstart : Null<(ev:js.html.Event) -> Any>;
	/**
		Occurs when the download has stopped.
	**/
	var onstalled : Null<(ev:js.html.Event) -> Any>;
	var onsubmit : Null<(ev:js.html.Event) -> Any>;
	/**
		Occurs if the load operation has been intentionally halted.
	**/
	var onsuspend : Null<(ev:js.html.Event) -> Any>;
	/**
		Occurs to indicate the current playback position.
	**/
	var ontimeupdate : Null<(ev:js.html.Event) -> Any>;
	var ontoggle : Null<(ev:js.html.Event) -> Any>;
	var ontouchcancel : Null<(ev:js.html.TouchEvent) -> Any>;
	var ontouchend : Null<(ev:js.html.TouchEvent) -> Any>;
	var ontouchmove : Null<(ev:js.html.TouchEvent) -> Any>;
	var ontouchstart : Null<(ev:js.html.TouchEvent) -> Any>;
	var ontransitioncancel : Null<(ev:js.html.TransitionEvent) -> Any>;
	var ontransitionend : Null<(ev:js.html.TransitionEvent) -> Any>;
	var ontransitionrun : Null<(ev:js.html.TransitionEvent) -> Any>;
	var ontransitionstart : Null<(ev:js.html.TransitionEvent) -> Any>;
	/**
		Occurs when the volume is changed, or playback is muted or unmuted.
	**/
	var onvolumechange : Null<(ev:js.html.Event) -> Any>;
	/**
		Occurs when playback stops because the next frame of a video resource is not available.
	**/
	var onwaiting : Null<(ev:js.html.Event) -> Any>;
	var onwheel : Null<(ev:js.html.WheelEvent) -> Any>;
	final dataset : js.html.DOMStringMap;
	@:optional
	var nonce : String;
	var tabIndex : Float;
	function blur():Void;
	function focus(?options:js.html.FocusOptions):Void;
	static var prototype : HTMLFormElement;
}