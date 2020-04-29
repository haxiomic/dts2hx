package js.html;
/**
	HTML <script> elements expose the HTMLScriptElement interface, which provides special properties and methods for manipulating the behavior and execution of <script> elements (beyond the inherited HTMLElement interface).
**/
@:native("HTMLScriptElement") extern class HTMLScriptElement {
	function new();
	var async : Bool;
	var charset : String;
	var crossOrigin : Null<String>;
	/**
		Sets or retrieves the status of the script.
	**/
	var defer : Bool;
	var event : String;
	var htmlFor : String;
	var integrity : String;
	var noModule : Bool;
	var referrerPolicy : String;
	/**
		Retrieves the URL to an external file that contains the source code or data.
	**/
	var src : String;
	/**
		Retrieves or sets the text of the object as a string.
	**/
	var text : String;
	/**
		Sets or retrieves the MIME type for the associated scripting engine.
	**/
	var type : String;
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
	@:overload(function(type:String, listener:haxe.extern.EitherType<EventListener, EventListenerObject>, ?options:haxe.extern.EitherType<Bool, AddEventListenerOptions>):Void { })
	function addEventListener<K:(String)>(type:K, listener:(ev:Any) -> Any, ?options:haxe.extern.EitherType<Bool, AddEventListenerOptions>):Void;
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
	@:overload(function(type:String, listener:haxe.extern.EitherType<EventListener, EventListenerObject>, ?options:haxe.extern.EitherType<Bool, EventListenerOptions>):Void { })
	function removeEventListener<K:(String)>(type:K, listener:(ev:Any) -> Any, ?options:haxe.extern.EitherType<Bool, EventListenerOptions>):Void;
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
	final offsetParent : Null<IElement>;
	final offsetTop : Float;
	final offsetWidth : Float;
	var spellcheck : Bool;
	var title : String;
	var translate : Bool;
	function click():Void;
	final assignedSlot : Null<IHTMLSlotElement>;
	final attributes : js.lib.INamedNodeMap;
	/**
		Allows for manipulation of element's class content attribute as a set of whitespace-separated tokens through a DOMTokenList object.
	**/
	final classList : js.lib.IDOMTokenList;
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
	var onfullscreenchange : Null<(ev:IEvent) -> Any>;
	var onfullscreenerror : Null<(ev:IEvent) -> Any>;
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
	final shadowRoot : Null<IShadowRoot>;
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
	function attachShadow(init:ShadowRootInit):IShadowRoot;
	/**
		Returns the first (starting at element) inclusive ancestor that matches selectors, and null otherwise.
	**/
	@:overload(function<K:(String)>(selector:K):Null<Any> { })
	@:overload(function<E:(IElement)>(selector:String):Null<E> { })
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
	function getAttributeNode(name:String):Null<IAttr>;
	function getAttributeNodeNS(namespaceURI:String, localName:String):Null<IAttr>;
	function getBoundingClientRect():IDOMRect;
	function getClientRects():js.lib.IDOMRectList;
	/**
		Returns a HTMLCollection of the elements in the object on which the method was invoked (a document or an element) that have all the classes given by classNames. The classNames argument is interpreted as a space-separated list of classes.
	**/
	function getElementsByClassName(classNames:String):js.lib.HTMLCollectionOf<IElement>;
	@:overload(function<K:(String)>(qualifiedName:K):js.lib.HTMLCollectionOf<Any> { })
	@:overload(function(qualifiedName:String):js.lib.HTMLCollectionOf<IElement> { })
	function getElementsByTagName<K:(String)>(qualifiedName:K):js.lib.HTMLCollectionOf<Any>;
	@:overload(function(namespaceURI:String, localName:String):js.lib.HTMLCollectionOf<ISVGElement> { })
	@:overload(function(namespaceURI:String, localName:String):js.lib.HTMLCollectionOf<IElement> { })
	function getElementsByTagNameNS(namespaceURI:String, localName:String):js.lib.HTMLCollectionOf<IHTMLElement>;
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
	function insertAdjacentElement(position:String, insertedElement:IElement):Null<IElement>;
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
	function removeAttributeNode(attr:IAttr):IAttr;
	/**
		Displays element fullscreen and resolves promise when done.
		
		When supplied, options's navigationUI member indicates whether showing navigation UI while in fullscreen is preferred or not. If set to "show", navigation simplicity is preferred over screen space, and if set to "hide", more screen space is preferred. User agents are always free to honor user preference over the application's. The default value "auto" indicates no application preference.
	**/
	function requestFullscreen(?options:FullscreenOptions):js.lib.IPromise<Void>;
	function requestPointerLock():Void;
	@:overload(function(x:Float, y:Float):Void { })
	function scroll(?options:ScrollToOptions):Void;
	@:overload(function(x:Float, y:Float):Void { })
	function scrollBy(?options:ScrollToOptions):Void;
	function scrollIntoView(?arg:haxe.extern.EitherType<Bool, ScrollIntoViewOptions>):Void;
	@:overload(function(x:Float, y:Float):Void { })
	function scrollTo(?options:ScrollToOptions):Void;
	/**
		Sets the value of element's first attribute whose qualified name is qualifiedName to value.
	**/
	function setAttribute(qualifiedName:String, value:String):Void;
	/**
		Sets the value of element's attribute whose namespace is namespace and local name is localName to value.
	**/
	function setAttributeNS(namespace:Null<String>, qualifiedName:String, value:String):Void;
	function setAttributeNode(attr:IAttr):Null<IAttr>;
	function setAttributeNodeNS(attr:IAttr):Null<IAttr>;
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
	final childNodes : js.lib.NodeListOf<ChildNode>;
	/**
		Returns the first child.
	**/
	final firstChild : Null<ChildNode>;
	/**
		Returns true if node is connected and false otherwise.
	**/
	final isConnected : Bool;
	/**
		Returns the last child.
	**/
	final lastChild : Null<ChildNode>;
	/**
		Returns the next sibling.
	**/
	final nextSibling : Null<ChildNode>;
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
	final ownerDocument : Null<IDocument>;
	/**
		Returns the parent element.
	**/
	final parentElement : Null<IHTMLElement>;
	/**
		Returns the parent.
	**/
	final parentNode : Null<INode & ParentNode>;
	/**
		Returns the previous sibling.
	**/
	final previousSibling : Null<INode>;
	var textContent : Null<String>;
	function appendChild<T:(INode)>(newChild:T):T;
	/**
		Returns a copy of node. If deep is true, the copy also includes the node's descendants.
	**/
	function cloneNode(?deep:Bool):INode;
	/**
		Returns a bitmask indicating the position of other relative to node.
	**/
	function compareDocumentPosition(other:INode):Float;
	/**
		Returns true if other is an inclusive descendant of node, and false otherwise.
	**/
	function contains(other:Null<INode>):Bool;
	/**
		Returns node's root.
	**/
	function getRootNode(?options:GetRootNodeOptions):INode;
	/**
		Returns whether node has children.
	**/
	function hasChildNodes():Bool;
	function insertBefore<T:(INode)>(newChild:T, refChild:Null<INode>):T;
	function isDefaultNamespace(namespace:Null<String>):Bool;
	/**
		Returns whether node and otherNode have the same properties.
	**/
	function isEqualNode(otherNode:Null<INode>):Bool;
	function isSameNode(otherNode:Null<INode>):Bool;
	function lookupNamespaceURI(prefix:Null<String>):Null<String>;
	function lookupPrefix(namespace:Null<String>):Null<String>;
	/**
		Removes empty exclusive Text nodes and concatenates the data of remaining contiguous exclusive Text nodes into the first of their nodes.
	**/
	function normalize():Void;
	function removeChild<T:(INode)>(oldChild:T):T;
	function replaceChild<T:(INode)>(newChild:INode, oldChild:T):T;
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
	function dispatchEvent(event:IEvent):Bool;
	function animate(keyframes:Null<haxe.extern.EitherType<std.Array<Keyframe>, PropertyIndexedKeyframes>>, ?options:haxe.extern.EitherType<Float, KeyframeAnimationOptions>):IAnimation;
	function getAnimations():std.Array<IAnimation>;
	/**
		Inserts nodes just after node, while replacing strings in nodes with equivalent Text nodes.
		
		Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
	**/
	function after(nodes:std.Array<haxe.extern.EitherType<String, INode>>):Void;
	/**
		Inserts nodes just before node, while replacing strings in nodes with equivalent Text nodes.
		
		Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
	**/
	function before(nodes:std.Array<haxe.extern.EitherType<String, INode>>):Void;
	/**
		Removes node.
	**/
	function remove():Void;
	/**
		Replaces node with nodes, while replacing strings in nodes with equivalent Text nodes.
		
		Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
	**/
	function replaceWith(nodes:std.Array<haxe.extern.EitherType<String, INode>>):Void;
	var innerHTML : String;
	/**
		Returns the first following sibling that is an element, and null otherwise.
	**/
	final nextElementSibling : Null<IElement>;
	/**
		Returns the first preceding sibling that is an element, and null otherwise.
	**/
	final previousElementSibling : Null<IElement>;
	final childElementCount : Float;
	/**
		Returns the child elements.
	**/
	final children : IHTMLCollection;
	/**
		Returns the first child that is an element, and null otherwise.
	**/
	final firstElementChild : Null<IElement>;
	/**
		Returns the last child that is an element, and null otherwise.
	**/
	final lastElementChild : Null<IElement>;
	/**
		Inserts nodes after the last child of node, while replacing strings in nodes with equivalent Text nodes.
		
		Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
	**/
	function append(nodes:std.Array<haxe.extern.EitherType<String, INode>>):Void;
	/**
		Inserts nodes before the first child of node, while replacing strings in nodes with equivalent Text nodes.
		
		Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
	**/
	function prepend(nodes:std.Array<haxe.extern.EitherType<String, INode>>):Void;
	/**
		Returns the first element that is a descendant of node that matches selectors.
	**/
	@:overload(function<K:(String)>(selectors:K):Null<Any> { })
	@:overload(function<E:(IElement)>(selectors:String):Null<E> { })
	function querySelector<K:(String)>(selectors:K):Null<Any>;
	/**
		Returns all element descendants of node that match selectors.
	**/
	@:overload(function<K:(String)>(selectors:K):js.lib.NodeListOf<Any> { })
	@:overload(function<E:(IElement)>(selectors:String):js.lib.NodeListOf<E> { })
	function querySelectorAll<K:(String)>(selectors:K):js.lib.NodeListOf<Any>;
	var oncopy : Null<(ev:IClipboardEvent) -> Any>;
	var oncut : Null<(ev:IClipboardEvent) -> Any>;
	var onpaste : Null<(ev:IClipboardEvent) -> Any>;
	final style : js.lib.ICSSStyleDeclaration;
	var contentEditable : String;
	var inputMode : String;
	final isContentEditable : Bool;
	/**
		Fires when the user aborts the download.
	**/
	var onabort : Null<(ev:IUIEvent) -> Any>;
	var onanimationcancel : Null<(ev:IAnimationEvent) -> Any>;
	var onanimationend : Null<(ev:IAnimationEvent) -> Any>;
	var onanimationiteration : Null<(ev:IAnimationEvent) -> Any>;
	var onanimationstart : Null<(ev:IAnimationEvent) -> Any>;
	var onauxclick : Null<(ev:IMouseEvent) -> Any>;
	/**
		Fires when the object loses the input focus.
	**/
	var onblur : Null<(ev:IFocusEvent) -> Any>;
	var oncancel : Null<(ev:IEvent) -> Any>;
	/**
		Occurs when playback is possible, but would require further buffering.
	**/
	var oncanplay : Null<(ev:IEvent) -> Any>;
	var oncanplaythrough : Null<(ev:IEvent) -> Any>;
	/**
		Fires when the contents of the object or selection have changed.
	**/
	var onchange : Null<(ev:IEvent) -> Any>;
	/**
		Fires when the user clicks the left mouse button on the object
	**/
	var onclick : Null<(ev:IMouseEvent) -> Any>;
	var onclose : Null<(ev:IEvent) -> Any>;
	/**
		Fires when the user clicks the right mouse button in the client area, opening the context menu.
	**/
	var oncontextmenu : Null<(ev:IMouseEvent) -> Any>;
	var oncuechange : Null<(ev:IEvent) -> Any>;
	/**
		Fires when the user double-clicks the object.
	**/
	var ondblclick : Null<(ev:IMouseEvent) -> Any>;
	/**
		Fires on the source object continuously during a drag operation.
	**/
	var ondrag : Null<(ev:IDragEvent) -> Any>;
	/**
		Fires on the source object when the user releases the mouse at the close of a drag operation.
	**/
	var ondragend : Null<(ev:IDragEvent) -> Any>;
	/**
		Fires on the target element when the user drags the object to a valid drop target.
	**/
	var ondragenter : Null<(ev:IDragEvent) -> Any>;
	var ondragexit : Null<(ev:IEvent) -> Any>;
	/**
		Fires on the target object when the user moves the mouse out of a valid drop target during a drag operation.
	**/
	var ondragleave : Null<(ev:IDragEvent) -> Any>;
	/**
		Fires on the target element continuously while the user drags the object over a valid drop target.
	**/
	var ondragover : Null<(ev:IDragEvent) -> Any>;
	/**
		Fires on the source object when the user starts to drag a text selection or selected object.
	**/
	var ondragstart : Null<(ev:IDragEvent) -> Any>;
	var ondrop : Null<(ev:IDragEvent) -> Any>;
	/**
		Occurs when the duration attribute is updated.
	**/
	var ondurationchange : Null<(ev:IEvent) -> Any>;
	/**
		Occurs when the media element is reset to its initial state.
	**/
	var onemptied : Null<(ev:IEvent) -> Any>;
	/**
		Occurs when the end of playback is reached.
	**/
	var onended : Null<(ev:IEvent) -> Any>;
	/**
		Fires when an error occurs during object loading.
	**/
	var onerror : Null<OnErrorEventHandlerNonNull>;
	/**
		Fires when the object receives focus.
	**/
	var onfocus : Null<(ev:IFocusEvent) -> Any>;
	var ongotpointercapture : Null<(ev:IPointerEvent) -> Any>;
	var oninput : Null<(ev:IEvent) -> Any>;
	var oninvalid : Null<(ev:IEvent) -> Any>;
	/**
		Fires when the user presses a key.
	**/
	var onkeydown : Null<(ev:IKeyboardEvent) -> Any>;
	/**
		Fires when the user presses an alphanumeric key.
	**/
	var onkeypress : Null<(ev:IKeyboardEvent) -> Any>;
	/**
		Fires when the user releases a key.
	**/
	var onkeyup : Null<(ev:IKeyboardEvent) -> Any>;
	/**
		Fires immediately after the browser loads the object.
	**/
	var onload : Null<(ev:IEvent) -> Any>;
	/**
		Occurs when media data is loaded at the current playback position.
	**/
	var onloadeddata : Null<(ev:IEvent) -> Any>;
	/**
		Occurs when the duration and dimensions of the media have been determined.
	**/
	var onloadedmetadata : Null<(ev:IEvent) -> Any>;
	var onloadend : Null<(ev:IProgressEvent<IEventTarget>) -> Any>;
	/**
		Occurs when Internet Explorer begins looking for media data.
	**/
	var onloadstart : Null<(ev:IEvent) -> Any>;
	var onlostpointercapture : Null<(ev:IPointerEvent) -> Any>;
	/**
		Fires when the user clicks the object with either mouse button.
	**/
	var onmousedown : Null<(ev:IMouseEvent) -> Any>;
	var onmouseenter : Null<(ev:IMouseEvent) -> Any>;
	var onmouseleave : Null<(ev:IMouseEvent) -> Any>;
	/**
		Fires when the user moves the mouse over the object.
	**/
	var onmousemove : Null<(ev:IMouseEvent) -> Any>;
	/**
		Fires when the user moves the mouse pointer outside the boundaries of the object.
	**/
	var onmouseout : Null<(ev:IMouseEvent) -> Any>;
	/**
		Fires when the user moves the mouse pointer into the object.
	**/
	var onmouseover : Null<(ev:IMouseEvent) -> Any>;
	/**
		Fires when the user releases a mouse button while the mouse is over the object.
	**/
	var onmouseup : Null<(ev:IMouseEvent) -> Any>;
	/**
		Occurs when playback is paused.
	**/
	var onpause : Null<(ev:IEvent) -> Any>;
	/**
		Occurs when the play method is requested.
	**/
	var onplay : Null<(ev:IEvent) -> Any>;
	/**
		Occurs when the audio or video has started playing.
	**/
	var onplaying : Null<(ev:IEvent) -> Any>;
	var onpointercancel : Null<(ev:IPointerEvent) -> Any>;
	var onpointerdown : Null<(ev:IPointerEvent) -> Any>;
	var onpointerenter : Null<(ev:IPointerEvent) -> Any>;
	var onpointerleave : Null<(ev:IPointerEvent) -> Any>;
	var onpointermove : Null<(ev:IPointerEvent) -> Any>;
	var onpointerout : Null<(ev:IPointerEvent) -> Any>;
	var onpointerover : Null<(ev:IPointerEvent) -> Any>;
	var onpointerup : Null<(ev:IPointerEvent) -> Any>;
	/**
		Occurs to indicate progress while downloading media data.
	**/
	var onprogress : Null<(ev:IProgressEvent<IEventTarget>) -> Any>;
	/**
		Occurs when the playback rate is increased or decreased.
	**/
	var onratechange : Null<(ev:IEvent) -> Any>;
	/**
		Fires when the user resets a form.
	**/
	var onreset : Null<(ev:IEvent) -> Any>;
	var onresize : Null<(ev:IUIEvent) -> Any>;
	/**
		Fires when the user repositions the scroll box in the scroll bar on the object.
	**/
	var onscroll : Null<(ev:IEvent) -> Any>;
	var onsecuritypolicyviolation : Null<(ev:ISecurityPolicyViolationEvent) -> Any>;
	/**
		Occurs when the seek operation ends.
	**/
	var onseeked : Null<(ev:IEvent) -> Any>;
	/**
		Occurs when the current playback position is moved.
	**/
	var onseeking : Null<(ev:IEvent) -> Any>;
	/**
		Fires when the current selection changes.
	**/
	var onselect : Null<(ev:IEvent) -> Any>;
	var onselectionchange : Null<(ev:IEvent) -> Any>;
	var onselectstart : Null<(ev:IEvent) -> Any>;
	/**
		Occurs when the download has stopped.
	**/
	var onstalled : Null<(ev:IEvent) -> Any>;
	var onsubmit : Null<(ev:IEvent) -> Any>;
	/**
		Occurs if the load operation has been intentionally halted.
	**/
	var onsuspend : Null<(ev:IEvent) -> Any>;
	/**
		Occurs to indicate the current playback position.
	**/
	var ontimeupdate : Null<(ev:IEvent) -> Any>;
	var ontoggle : Null<(ev:IEvent) -> Any>;
	var ontouchcancel : Null<(ev:ITouchEvent) -> Any>;
	var ontouchend : Null<(ev:ITouchEvent) -> Any>;
	var ontouchmove : Null<(ev:ITouchEvent) -> Any>;
	var ontouchstart : Null<(ev:ITouchEvent) -> Any>;
	var ontransitioncancel : Null<(ev:ITransitionEvent) -> Any>;
	var ontransitionend : Null<(ev:ITransitionEvent) -> Any>;
	var ontransitionrun : Null<(ev:ITransitionEvent) -> Any>;
	var ontransitionstart : Null<(ev:ITransitionEvent) -> Any>;
	/**
		Occurs when the volume is changed, or playback is muted or unmuted.
	**/
	var onvolumechange : Null<(ev:IEvent) -> Any>;
	/**
		Occurs when playback stops because the next frame of a video resource is not available.
	**/
	var onwaiting : Null<(ev:IEvent) -> Any>;
	var onwheel : Null<(ev:IWheelEvent) -> Any>;
	final dataset : IDOMStringMap;
	@:optional
	var nonce : String;
	var tabIndex : Float;
	function blur():Void;
	function focus(?options:FocusOptions):Void;
	static var prototype : IHTMLScriptElement;
}