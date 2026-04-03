package js.html;

/**
	The **`MathMLElement`** interface represents any MathML element.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/MathMLElement)
**/
@:native("MathMLElement") extern class MathMLElement {
	function new();
	/**
		
		The **`addEventListener()`** method of the EventTarget interface sets up a function that will be called whenever the specified event is delivered to the target.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/EventTarget/addEventListener)
		
		The **`addEventListener()`** method of the EventTarget interface sets up a function that will be called whenever the specified event is delivered to the target.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/EventTarget/addEventListener)
	**/
	@:overload(function(type:String, listener:EventListenerOrEventListenerObject, ?options:ts.AnyOf2<Bool, js.html.AddEventListenerOptions>):Void { })
	function addEventListener<K:(String)>(type:K, listener:(ev:Dynamic) -> Dynamic, ?options:ts.AnyOf2<Bool, js.html.AddEventListenerOptions>):Void;
	/**
		
		The **`removeEventListener()`** method of the EventTarget interface removes an event listener previously registered with EventTarget.addEventListener() from the target.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/EventTarget/removeEventListener)
		
		The **`removeEventListener()`** method of the EventTarget interface removes an event listener previously registered with EventTarget.addEventListener() from the target.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/EventTarget/removeEventListener)
	**/
	@:overload(function(type:String, listener:EventListenerOrEventListenerObject, ?options:ts.AnyOf2<Bool, js.html.EventListenerOptions>):Void { })
	function removeEventListener<K:(String)>(type:K, listener:(ev:Dynamic) -> Dynamic, ?options:ts.AnyOf2<Bool, js.html.EventListenerOptions>):Void;
	/**
		The **`Element.attributes`** property returns a live collection of all attribute nodes registered to the specified node.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/attributes)
	**/
	final attributes : js.html.NamedNodeMap;
	/**
		The **`Element.classList`** is a read-only property that returns a live DOMTokenList collection of the `class` attributes of the element.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/classList)
	**/
	var classList : js.html.DOMTokenList;
	/**
		The **`className`** property of the of the specified element.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/className)
	**/
	var className : String;
	/**
		The **`clientHeight`** read-only property of the Element interface is zero for elements with no CSS or inline layout boxes; otherwise, it's the inner height of an element in pixels.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/clientHeight)
	**/
	final clientHeight : Float;
	/**
		The **`clientLeft`** read-only property of the Element interface returns the width of the left border of an element in pixels.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/clientLeft)
	**/
	final clientLeft : Float;
	/**
		The **`clientTop`** read-only property of the Element interface returns the width of the top border of an element in pixels.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/clientTop)
	**/
	final clientTop : Float;
	/**
		The **`clientWidth`** read-only property of the Element interface is zero for inline elements and elements with no CSS; otherwise, it's the inner width of an element in pixels.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/clientWidth)
	**/
	final clientWidth : Float;
	/**
		The **`currentCSSZoom`** read-only property of the Element interface provides the 'effective' CSS `zoom` of an element, taking into account the zoom applied to the element and all its parent elements.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/currentCSSZoom)
	**/
	final currentCSSZoom : Float;
	/**
		The **`id`** property of the Element interface represents the element's identifier, reflecting the **`id`** global attribute.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/id)
	**/
	var id : String;
	/**
		The **`innerHTML`** property of the Element interface gets or sets the HTML or XML markup contained within the element.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/innerHTML)
	**/
	var innerHTML : String;
	/**
		The **`Element.localName`** read-only property returns the local part of the qualified name of an element.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/localName)
	**/
	final localName : String;
	/**
		The **`Element.namespaceURI`** read-only property returns the namespace URI of the element, or `null` if the element is not in a namespace.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/namespaceURI)
	**/
	final namespaceURI : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/fullscreenchange_event)
	**/
	@:optional
	dynamic function onfullscreenchange(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/fullscreenerror_event)
	**/
	@:optional
	dynamic function onfullscreenerror(ev:js.html.Event):Dynamic;
	/**
		The **`outerHTML`** attribute of the Element DOM interface gets the serialized HTML fragment describing the element including its descendants.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/outerHTML)
	**/
	var outerHTML : String;
	/**
		The read-only **`ownerDocument`** property of the Node interface returns the top-level document object of the node.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Node/ownerDocument)
	**/
	final ownerDocument : js.html.Document;
	/**
		The **`part`** property of the Element interface represents the part identifier(s) of the element (i.e., set using the `part` attribute), returned as a DOMTokenList.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/part)
	**/
	var part : js.html.DOMTokenList;
	/**
		The **`Element.prefix`** read-only property returns the namespace prefix of the specified element, or `null` if no prefix is specified.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/prefix)
	**/
	final prefix : Null<String>;
	/**
		The **`scrollHeight`** read-only property of the Element interface is a measurement of the height of an element's content, including content not visible on the screen due to overflow.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/scrollHeight)
	**/
	final scrollHeight : Float;
	/**
		The **`scrollLeft`** property of the Element interface gets or sets the number of pixels by which an element's content is scrolled from its left edge.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/scrollLeft)
	**/
	var scrollLeft : Float;
	/**
		The **`scrollTop`** property of the Element interface gets or sets the number of pixels by which an element's content is scrolled from its top edge.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/scrollTop)
	**/
	var scrollTop : Float;
	/**
		The **`scrollWidth`** read-only property of the Element interface is a measurement of the width of an element's content, including content not visible on the screen due to overflow.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/scrollWidth)
	**/
	final scrollWidth : Float;
	/**
		The `Element.shadowRoot` read-only property represents the shadow root hosted by the element.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/shadowRoot)
	**/
	final shadowRoot : Null<js.html.ShadowRoot>;
	/**
		The **`slot`** property of the Element interface returns the name of the shadow DOM slot the element is inserted in.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/slot)
	**/
	var slot : String;
	/**
		The **`tagName`** read-only property of the Element interface returns the tag name of the element on which it's called.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/tagName)
	**/
	final tagName : String;
	/**
		The **`Element.attachShadow()`** method attaches a shadow DOM tree to the specified element and returns a reference to its ShadowRoot.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/attachShadow)
	**/
	function attachShadow(init:js.html.ShadowRootInit):js.html.ShadowRoot;
	/**
		The **`checkVisibility()`** method of the Element interface checks whether the element is visible.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/checkVisibility)
	**/
	function checkVisibility(?options:CheckVisibilityOptions):Bool;
	/**
		The **`closest()`** method of the Element interface traverses the element and its parents (heading toward the document root) until it finds a node that matches the specified CSS selector.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/closest)
	**/
	@:overload(function<K:(String)>(selector:K):Null<Dynamic> { })
	@:overload(function<K:(String)>(selector:K):Null<Dynamic> { })
	@:overload(function<E:(js.html.DOMElement)>(selectors:String):Null<E> { })
	function closest<K:(String)>(selector:K):Null<Dynamic>;
	/**
		The **`computedStyleMap()`** method of the Element interface returns a StylePropertyMapReadOnly interface which provides a read-only representation of a CSS declaration block that is an alternative to CSSStyleDeclaration.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/computedStyleMap)
	**/
	function computedStyleMap():StylePropertyMapReadOnly;
	/**
		The **`getAttribute()`** method of the element.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/getAttribute)
	**/
	function getAttribute(qualifiedName:String):Null<String>;
	/**
		The **`getAttributeNS()`** method of the Element interface returns the string value of the attribute with the specified namespace and name.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/getAttributeNS)
	**/
	function getAttributeNS(namespace:Null<String>, localName:String):Null<String>;
	/**
		The **`getAttributeNames()`** method of the array.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/getAttributeNames)
	**/
	function getAttributeNames():Array<String>;
	/**
		Returns the specified attribute of the specified element, as an Attr node.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/getAttributeNode)
	**/
	function getAttributeNode(qualifiedName:String):Null<js.html.Attr>;
	/**
		The **`getAttributeNodeNS()`** method of the Element interface returns the namespaced Attr node of an element.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/getAttributeNodeNS)
	**/
	function getAttributeNodeNS(namespace:Null<String>, localName:String):Null<js.html.Attr>;
	/**
		The **`Element.getBoundingClientRect()`** method returns a position relative to the viewport.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/getBoundingClientRect)
	**/
	function getBoundingClientRect():js.html.DOMRect;
	/**
		The **`getClientRects()`** method of the Element interface returns a collection of DOMRect objects that indicate the bounding rectangles for each CSS border box in a client.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/getClientRects)
	**/
	function getClientRects():js.html.DOMRectList;
	/**
		The Element method **`getElementsByClassName()`** returns a live specified class name or names.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/getElementsByClassName)
	**/
	function getElementsByClassName(classNames:String):HTMLCollectionOf<js.html.DOMElement>;
	/**
		The **`Element.getElementsByTagName()`** method returns a live All descendants of the specified element are searched, but not the element itself.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/getElementsByTagName)
	**/
	@:overload(function<K:(String)>(qualifiedName:K):HTMLCollectionOf<Dynamic> { })
	@:overload(function<K:(String)>(qualifiedName:K):HTMLCollectionOf<Dynamic> { })
	@:overload(function<K:(String)>(qualifiedName:K):HTMLCollectionOf<Dynamic> { })
	@:overload(function(qualifiedName:String):HTMLCollectionOf<js.html.DOMElement> { })
	function getElementsByTagName<K:(String)>(qualifiedName:K):HTMLCollectionOf<Dynamic>;
	/**
		The **`Element.getElementsByTagNameNS()`** method returns a live HTMLCollection of elements with the given tag name belonging to the given namespace.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/getElementsByTagNameNS)
	**/
	@:overload(function(namespaceURI:String, localName:String):HTMLCollectionOf<js.html.svg.Element> { })
	@:overload(function(namespaceURI:String, localName:String):HTMLCollectionOf<MathMLElement> { })
	@:overload(function(namespace:Null<String>, localName:String):HTMLCollectionOf<js.html.DOMElement> { })
	function getElementsByTagNameNS(namespaceURI:String, localName:String):HTMLCollectionOf<js.html.Element>;
	/**
		The **`getHTML()`** method of the Element interface is used to serialize an element's DOM to an HTML string.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/getHTML)
	**/
	function getHTML(?options:GetHTMLOptions):String;
	/**
		The **`Element.hasAttribute()`** method returns a **Boolean** value indicating whether the specified element has the specified attribute or not.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/hasAttribute)
	**/
	function hasAttribute(qualifiedName:String):Bool;
	/**
		The **`hasAttributeNS()`** method of the Element interface returns a boolean value indicating whether the current element has the specified attribute with the specified namespace.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/hasAttributeNS)
	**/
	function hasAttributeNS(namespace:Null<String>, localName:String):Bool;
	/**
		The **`hasAttributes()`** method of the Element interface returns a boolean value indicating whether the current element has any attributes or not.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/hasAttributes)
	**/
	function hasAttributes():Bool;
	/**
		The **`hasPointerCapture()`** method of the pointer capture for the pointer identified by the given pointer ID.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/hasPointerCapture)
	**/
	function hasPointerCapture(pointerId:Float):Bool;
	/**
		The **`insertAdjacentElement()`** method of the relative to the element it is invoked upon.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/insertAdjacentElement)
	**/
	function insertAdjacentElement(where:InsertPosition, element:js.html.DOMElement):Null<js.html.DOMElement>;
	/**
		The **`insertAdjacentHTML()`** method of the the resulting nodes into the DOM tree at a specified position.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/insertAdjacentHTML)
	**/
	function insertAdjacentHTML(position:InsertPosition, string:String):Void;
	/**
		The **`insertAdjacentText()`** method of the Element interface, given a relative position and a string, inserts a new text node at the given position relative to the element it is called from.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/insertAdjacentText)
	**/
	function insertAdjacentText(where:InsertPosition, data:String):Void;
	/**
		The **`matches()`** method of the Element interface tests whether the element would be selected by the specified CSS selector.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/matches)
	**/
	function matches(selectors:String):Bool;
	/**
		The **`releasePointerCapture()`** method of the previously set for a specific (PointerEvent) _pointer_.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/releasePointerCapture)
	**/
	function releasePointerCapture(pointerId:Float):Void;
	/**
		The Element method **`removeAttribute()`** removes the attribute with the specified name from the element.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/removeAttribute)
	**/
	function removeAttribute(qualifiedName:String):Void;
	/**
		The **`removeAttributeNS()`** method of the If you are working with HTML and you don't need to specify the requested attribute as being part of a specific namespace, use the Element.removeAttribute() method instead.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/removeAttributeNS)
	**/
	function removeAttributeNS(namespace:Null<String>, localName:String):Void;
	/**
		The **`removeAttributeNode()`** method of the Element interface removes the specified Attr node from the element.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/removeAttributeNode)
	**/
	function removeAttributeNode(attr:js.html.Attr):js.html.Attr;
	/**
		The **`Element.requestFullscreen()`** method issues an asynchronous request to make the element be displayed in fullscreen mode.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/requestFullscreen)
	**/
	function requestFullscreen(?options:js.html.FullscreenOptions):js.lib.Promise<ts.Undefined>;
	/**
		The **`requestPointerLock()`** method of the Element interface lets you asynchronously ask for the pointer to be locked on the given element.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/requestPointerLock)
	**/
	function requestPointerLock(?options:PointerLockOptions):js.lib.Promise<ts.Undefined>;
	/**
		The **`scroll()`** method of the Element interface scrolls the element to a particular set of coordinates inside a given element.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/scroll)
	**/
	@:overload(function(x:Float, y:Float):Void { })
	function scroll(?options:js.html.ScrollToOptions):Void;
	/**
		The **`scrollBy()`** method of the Element interface scrolls an element by the given amount.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/scrollBy)
	**/
	@:overload(function(x:Float, y:Float):Void { })
	function scrollBy(?options:js.html.ScrollToOptions):Void;
	/**
		The Element interface's **`scrollIntoView()`** method scrolls the element's ancestor containers such that the element on which `scrollIntoView()` is called is visible to the user.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/scrollIntoView)
	**/
	function scrollIntoView(?arg:ts.AnyOf2<Bool, js.html.ScrollIntoViewOptions>):Void;
	/**
		The **`scrollTo()`** method of the Element interface scrolls to a particular set of coordinates inside a given element.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/scrollTo)
	**/
	@:overload(function(x:Float, y:Float):Void { })
	function scrollTo(?options:js.html.ScrollToOptions):Void;
	/**
		The **`setAttribute()`** method of the Element interface sets the value of an attribute on the specified element.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/setAttribute)
	**/
	function setAttribute(qualifiedName:String, value:String):Void;
	/**
		`setAttributeNS` adds a new attribute or changes the value of an attribute with the given namespace and name.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/setAttributeNS)
	**/
	function setAttributeNS(namespace:Null<String>, qualifiedName:String, value:String):Void;
	/**
		The **`setAttributeNode()`** method of the Element interface adds a new Attr node to the specified element.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/setAttributeNode)
	**/
	function setAttributeNode(attr:js.html.Attr):Null<js.html.Attr>;
	/**
		The **`setAttributeNodeNS()`** method of the Element interface adds a new namespaced Attr node to an element.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/setAttributeNodeNS)
	**/
	function setAttributeNodeNS(attr:js.html.Attr):Null<js.html.Attr>;
	/**
		The **`setHTMLUnsafe()`** method of the Element interface is used to parse a string of HTML into a DocumentFragment, optionally filtering out unwanted elements and attributes, and those that don't belong in the context, and then using it to replace the element's subtree in the DOM.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/setHTMLUnsafe)
	**/
	function setHTMLUnsafe(html:String):Void;
	/**
		The **`setPointerCapture()`** method of the _capture target_ of future pointer events.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/setPointerCapture)
	**/
	function setPointerCapture(pointerId:Float):Void;
	/**
		The **`toggleAttribute()`** method of the present and adding it if it is not present) on the given element.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/toggleAttribute)
	**/
	function toggleAttribute(qualifiedName:String, ?force:Bool):Bool;
	function webkitMatchesSelector(selectors:String):Bool;
	/**
		[MDN Reference](https://developer.mozilla.org/en-US/docs/Web/API/Node/textContent)
	**/
	var textContent : String;
	/**
		The read-only **`baseURI`** property of the Node interface returns the absolute base URL of the document containing the node.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Node/baseURI)
	**/
	final baseURI : String;
	/**
		The read-only **`childNodes`** property of the Node interface returns a live the first child node is assigned index `0`.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Node/childNodes)
	**/
	final childNodes : NodeListOf<ChildNode>;
	/**
		The read-only **`firstChild`** property of the Node interface returns the node's first child in the tree, or `null` if the node has no children.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Node/firstChild)
	**/
	final firstChild : Null<ChildNode>;
	/**
		The read-only **`isConnected`** property of the Node interface returns a boolean indicating whether the node is connected (directly or indirectly) to a Document object.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Node/isConnected)
	**/
	final isConnected : Bool;
	/**
		The read-only **`lastChild`** property of the Node interface returns the last child of the node, or `null` if there are no child nodes.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Node/lastChild)
	**/
	final lastChild : Null<ChildNode>;
	/**
		The read-only **`nextSibling`** property of the Node interface returns the node immediately following the specified one in their parent's Node.childNodes, or returns `null` if the specified node is the last child in the parent element.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Node/nextSibling)
	**/
	final nextSibling : Null<ChildNode>;
	/**
		The read-only **`nodeName`** property of Node returns the name of the current node as a string.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Node/nodeName)
	**/
	final nodeName : String;
	/**
		The read-only **`nodeType`** property of a Node interface is an integer that identifies what the node is.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Node/nodeType)
	**/
	final nodeType : Float;
	/**
		The **`nodeValue`** property of the Node interface returns or sets the value of the current node.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Node/nodeValue)
	**/
	var nodeValue : Null<String>;
	/**
		The read-only **`parentElement`** property of Node interface returns the DOM node's parent Element, or `null` if the node either has no parent, or its parent isn't a DOM Element.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Node/parentElement)
	**/
	final parentElement : Null<js.html.Element>;
	/**
		The read-only **`parentNode`** property of the Node interface returns the parent of the specified node in the DOM tree.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Node/parentNode)
	**/
	final parentNode : Null<ParentNode>;
	/**
		The read-only **`previousSibling`** property of the Node interface returns the node immediately preceding the specified one in its parent's or `null` if the specified node is the first in that list.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Node/previousSibling)
	**/
	final previousSibling : Null<ChildNode>;
	/**
		The **`appendChild()`** method of the Node interface adds a node to the end of the list of children of a specified parent node.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Node/appendChild)
	**/
	function appendChild<T:(js.html.Node)>(node:T):T;
	/**
		The **`cloneNode()`** method of the Node interface returns a duplicate of the node on which this method was called.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Node/cloneNode)
	**/
	function cloneNode(?subtree:Bool):js.html.Node;
	/**
		The **`compareDocumentPosition()`** method of the Node interface reports the position of its argument node relative to the node on which it is called.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Node/compareDocumentPosition)
	**/
	function compareDocumentPosition(other:js.html.Node):Float;
	/**
		The **`contains()`** method of the Node interface returns a boolean value indicating whether a node is a descendant of a given node, that is the node itself, one of its direct children (Node.childNodes), one of the children's direct children, and so on.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Node/contains)
	**/
	function contains(other:Null<js.html.Node>):Bool;
	/**
		The **`getRootNode()`** method of the Node interface returns the context object's root, which optionally includes the shadow root if it is available.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Node/getRootNode)
	**/
	function getRootNode(?options:js.html.GetRootNodeOptions):js.html.Node;
	/**
		The **`hasChildNodes()`** method of the Node interface returns a boolean value indicating whether the given Node has child nodes or not.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Node/hasChildNodes)
	**/
	function hasChildNodes():Bool;
	/**
		The **`insertBefore()`** method of the Node interface inserts a node before a _reference node_ as a child of a specified _parent node_.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Node/insertBefore)
	**/
	function insertBefore<T:(js.html.Node)>(node:T, child:Null<js.html.Node>):T;
	/**
		The **`isDefaultNamespace()`** method of the Node interface accepts a namespace URI as an argument.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Node/isDefaultNamespace)
	**/
	function isDefaultNamespace(namespace:Null<String>):Bool;
	/**
		The **`isEqualNode()`** method of the Node interface tests whether two nodes are equal.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Node/isEqualNode)
	**/
	function isEqualNode(otherNode:Null<js.html.Node>):Bool;
	/**
		The **`isSameNode()`** method of the Node interface is a legacy alias the for the `===` strict equality operator.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Node/isSameNode)
	**/
	function isSameNode(otherNode:Null<js.html.Node>):Bool;
	/**
		The **`lookupNamespaceURI()`** method of the Node interface takes a prefix as parameter and returns the namespace URI associated with it on the given node if found (and `null` if not).
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Node/lookupNamespaceURI)
	**/
	function lookupNamespaceURI(prefix:Null<String>):Null<String>;
	/**
		The **`lookupPrefix()`** method of the Node interface returns a string containing the prefix for a given namespace URI, if present, and `null` if not.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Node/lookupPrefix)
	**/
	function lookupPrefix(namespace:Null<String>):Null<String>;
	/**
		The **`normalize()`** method of the Node interface puts the specified node and all of its sub-tree into a _normalized_ form.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Node/normalize)
	**/
	function normalize():Void;
	/**
		The **`removeChild()`** method of the Node interface removes a child node from the DOM and returns the removed node.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Node/removeChild)
	**/
	function removeChild<T:(js.html.Node)>(child:T):T;
	/**
		The **`replaceChild()`** method of the Node interface replaces a child node within the given (parent) node.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Node/replaceChild)
	**/
	function replaceChild<T:(js.html.Node)>(node:js.html.Node, child:T):T;
	/**
		node is an element.
	**/
	final ELEMENT_NODE : Int;
	final ATTRIBUTE_NODE : Int;
	/**
		node is a Text node.
	**/
	final TEXT_NODE : Int;
	/**
		node is a CDATASection node.
	**/
	final CDATA_SECTION_NODE : Int;
	final ENTITY_REFERENCE_NODE : Int;
	final ENTITY_NODE : Int;
	/**
		node is a ProcessingInstruction node.
	**/
	final PROCESSING_INSTRUCTION_NODE : Int;
	/**
		node is a Comment node.
	**/
	final COMMENT_NODE : Int;
	/**
		node is a document.
	**/
	final DOCUMENT_NODE : Int;
	/**
		node is a doctype.
	**/
	final DOCUMENT_TYPE_NODE : Int;
	/**
		node is a DocumentFragment node.
	**/
	final DOCUMENT_FRAGMENT_NODE : Int;
	final NOTATION_NODE : Int;
	/**
		Set when node and other are not in the same tree.
	**/
	final DOCUMENT_POSITION_DISCONNECTED : Int;
	/**
		Set when other is preceding node.
	**/
	final DOCUMENT_POSITION_PRECEDING : Int;
	/**
		Set when other is following node.
	**/
	final DOCUMENT_POSITION_FOLLOWING : Int;
	/**
		Set when other is an ancestor of node.
	**/
	final DOCUMENT_POSITION_CONTAINS : Int;
	/**
		Set when other is a descendant of node.
	**/
	final DOCUMENT_POSITION_CONTAINED_BY : Int;
	final DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC : Int;
	/**
		The **`dispatchEvent()`** method of the EventTarget sends an Event to the object, (synchronously) invoking the affected event listeners in the appropriate order.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/EventTarget/dispatchEvent)
	**/
	function dispatchEvent(event:js.html.Event):Bool;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaActiveDescendantElement)
	**/
	var ariaActiveDescendantElement : Null<js.html.DOMElement>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaAtomic)
	**/
	var ariaAtomic : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaAutoComplete)
	**/
	var ariaAutoComplete : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaBrailleLabel)
	**/
	var ariaBrailleLabel : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaBrailleRoleDescription)
	**/
	var ariaBrailleRoleDescription : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaBusy)
	**/
	var ariaBusy : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaChecked)
	**/
	var ariaChecked : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaColCount)
	**/
	var ariaColCount : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaColIndex)
	**/
	var ariaColIndex : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaColIndexText)
	**/
	var ariaColIndexText : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaColSpan)
	**/
	var ariaColSpan : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaControlsElements)
	**/
	var ariaControlsElements : Null<haxe.ds.ReadOnlyArray<js.html.DOMElement>>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaCurrent)
	**/
	var ariaCurrent : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaDescribedByElements)
	**/
	var ariaDescribedByElements : Null<haxe.ds.ReadOnlyArray<js.html.DOMElement>>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaDescription)
	**/
	var ariaDescription : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaDetailsElements)
	**/
	var ariaDetailsElements : Null<haxe.ds.ReadOnlyArray<js.html.DOMElement>>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaDisabled)
	**/
	var ariaDisabled : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaErrorMessageElements)
	**/
	var ariaErrorMessageElements : Null<haxe.ds.ReadOnlyArray<js.html.DOMElement>>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaExpanded)
	**/
	var ariaExpanded : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaFlowToElements)
	**/
	var ariaFlowToElements : Null<haxe.ds.ReadOnlyArray<js.html.DOMElement>>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaHasPopup)
	**/
	var ariaHasPopup : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaHidden)
	**/
	var ariaHidden : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaInvalid)
	**/
	var ariaInvalid : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaKeyShortcuts)
	**/
	var ariaKeyShortcuts : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaLabel)
	**/
	var ariaLabel : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaLabelledByElements)
	**/
	var ariaLabelledByElements : Null<haxe.ds.ReadOnlyArray<js.html.DOMElement>>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaLevel)
	**/
	var ariaLevel : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaLive)
	**/
	var ariaLive : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaModal)
	**/
	var ariaModal : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaMultiLine)
	**/
	var ariaMultiLine : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaMultiSelectable)
	**/
	var ariaMultiSelectable : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaOrientation)
	**/
	var ariaOrientation : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaOwnsElements)
	**/
	var ariaOwnsElements : Null<haxe.ds.ReadOnlyArray<js.html.DOMElement>>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaPlaceholder)
	**/
	var ariaPlaceholder : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaPosInSet)
	**/
	var ariaPosInSet : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaPressed)
	**/
	var ariaPressed : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaReadOnly)
	**/
	var ariaReadOnly : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaRelevant)
	**/
	var ariaRelevant : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaRequired)
	**/
	var ariaRequired : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaRoleDescription)
	**/
	var ariaRoleDescription : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaRowCount)
	**/
	var ariaRowCount : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaRowIndex)
	**/
	var ariaRowIndex : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaRowIndexText)
	**/
	var ariaRowIndexText : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaRowSpan)
	**/
	var ariaRowSpan : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaSelected)
	**/
	var ariaSelected : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaSetSize)
	**/
	var ariaSetSize : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaSort)
	**/
	var ariaSort : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaValueMax)
	**/
	var ariaValueMax : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaValueMin)
	**/
	var ariaValueMin : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaValueNow)
	**/
	var ariaValueNow : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaValueText)
	**/
	var ariaValueText : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/role)
	**/
	var role : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/animate)
	**/
	function animate(keyframes:Null<ts.AnyOf2<PropertyIndexedKeyframes, Array<Keyframe>>>, ?options:ts.AnyOf2<Float, js.html.KeyframeAnimationOptions>):js.html.Animation;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/getAnimations)
	**/
	function getAnimations(?options:GetAnimationsOptions):Array<js.html.Animation>;
	/**
		Inserts nodes just after node, while replacing strings in nodes with equivalent Text nodes.
		
		Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CharacterData/after)
	**/
	function after(nodes:haxe.extern.Rest<ts.AnyOf2<String, js.html.Node>>):Void;
	/**
		Inserts nodes just before node, while replacing strings in nodes with equivalent Text nodes.
		
		Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CharacterData/before)
	**/
	function before(nodes:haxe.extern.Rest<ts.AnyOf2<String, js.html.Node>>):Void;
	/**
		Removes node.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CharacterData/remove)
	**/
	function remove():Void;
	/**
		Replaces node with nodes, while replacing strings in nodes with equivalent Text nodes.
		
		Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CharacterData/replaceWith)
	**/
	function replaceWith(nodes:haxe.extern.Rest<ts.AnyOf2<String, js.html.Node>>):Void;
	/**
		Returns the first following sibling that is an element, and null otherwise.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CharacterData/nextElementSibling)
	**/
	final nextElementSibling : Null<js.html.DOMElement>;
	/**
		Returns the first preceding sibling that is an element, and null otherwise.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CharacterData/previousElementSibling)
	**/
	final previousElementSibling : Null<js.html.DOMElement>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Document/childElementCount)
	**/
	final childElementCount : Float;
	/**
		Returns the child elements.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Document/children)
	**/
	final children : js.html.HTMLCollection;
	/**
		Returns the first child that is an element, and null otherwise.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Document/firstElementChild)
	**/
	final firstElementChild : Null<js.html.DOMElement>;
	/**
		Returns the last child that is an element, and null otherwise.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Document/lastElementChild)
	**/
	final lastElementChild : Null<js.html.DOMElement>;
	/**
		Inserts nodes after the last child of node, while replacing strings in nodes with equivalent Text nodes.
		
		Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Document/append)
	**/
	function append(nodes:haxe.extern.Rest<ts.AnyOf2<String, js.html.Node>>):Void;
	/**
		Inserts nodes before the first child of node, while replacing strings in nodes with equivalent Text nodes.
		
		Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Document/prepend)
	**/
	function prepend(nodes:haxe.extern.Rest<ts.AnyOf2<String, js.html.Node>>):Void;
	/**
		Returns the first element that is a descendant of node that matches selectors.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Document/querySelector)
	**/
	@:overload(function<K:(String)>(selectors:K):Null<Dynamic> { })
	@:overload(function<K:(String)>(selectors:K):Null<Dynamic> { })
	@:overload(function<K:(String)>(selectors:K):Null<Dynamic> { })
	@:overload(function<E:(js.html.DOMElement)>(selectors:String):Null<E> { })
	function querySelector<K:(String)>(selectors:K):Null<Dynamic>;
	/**
		Returns all element descendants of node that match selectors.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Document/querySelectorAll)
	**/
	@:overload(function<K:(String)>(selectors:K):NodeListOf<Dynamic> { })
	@:overload(function<K:(String)>(selectors:K):NodeListOf<Dynamic> { })
	@:overload(function<K:(String)>(selectors:K):NodeListOf<Dynamic> { })
	@:overload(function<E:(js.html.DOMElement)>(selectors:String):NodeListOf<E> { })
	function querySelectorAll<K:(String)>(selectors:K):NodeListOf<Dynamic>;
	/**
		Replace all children of node with nodes, while replacing strings in nodes with equivalent Text nodes.
		
		Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Document/replaceChildren)
	**/
	function replaceChildren(nodes:haxe.extern.Rest<ts.AnyOf2<String, js.html.Node>>):Void;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/assignedSlot)
	**/
	final assignedSlot : Null<js.html.SlotElement>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLElement/attributeStyleMap)
	**/
	final attributeStyleMap : StylePropertyMap;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLElement/style)
	**/
	var style : js.html.CSSStyleDeclaration;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/abort_event)
	**/
	@:optional
	dynamic function onabort(ev:js.html.UIEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/animationcancel_event)
	**/
	@:optional
	dynamic function onanimationcancel(ev:js.html.AnimationEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/animationend_event)
	**/
	@:optional
	dynamic function onanimationend(ev:js.html.AnimationEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/animationiteration_event)
	**/
	@:optional
	dynamic function onanimationiteration(ev:js.html.AnimationEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/animationstart_event)
	**/
	@:optional
	dynamic function onanimationstart(ev:js.html.AnimationEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/auxclick_event)
	**/
	@:optional
	dynamic function onauxclick(ev:js.html.PointerEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/beforeinput_event)
	**/
	@:optional
	dynamic function onbeforeinput(ev:js.html.InputEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/beforematch_event)
	**/
	@:optional
	dynamic function onbeforematch(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLElement/beforetoggle_event)
	**/
	@:optional
	dynamic function onbeforetoggle(ev:ToggleEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/blur_event)
	**/
	@:optional
	dynamic function onblur(ev:js.html.FocusEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLDialogElement/cancel_event)
	**/
	@:optional
	dynamic function oncancel(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/canplay_event)
	**/
	@:optional
	dynamic function oncanplay(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/canplaythrough_event)
	**/
	@:optional
	dynamic function oncanplaythrough(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLElement/change_event)
	**/
	@:optional
	dynamic function onchange(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/click_event)
	**/
	@:optional
	dynamic function onclick(ev:js.html.PointerEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLDialogElement/close_event)
	**/
	@:optional
	dynamic function onclose(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLCanvasElement/contextlost_event)
	**/
	@:optional
	dynamic function oncontextlost(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/contextmenu_event)
	**/
	@:optional
	dynamic function oncontextmenu(ev:js.html.PointerEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLCanvasElement/contextrestored_event)
	**/
	@:optional
	dynamic function oncontextrestored(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/copy_event)
	**/
	@:optional
	dynamic function oncopy(ev:js.html.ClipboardEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLTrackElement/cuechange_event)
	**/
	@:optional
	dynamic function oncuechange(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/cut_event)
	**/
	@:optional
	dynamic function oncut(ev:js.html.ClipboardEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/dblclick_event)
	**/
	@:optional
	dynamic function ondblclick(ev:js.html.MouseEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLElement/drag_event)
	**/
	@:optional
	dynamic function ondrag(ev:js.html.DragEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLElement/dragend_event)
	**/
	@:optional
	dynamic function ondragend(ev:js.html.DragEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLElement/dragenter_event)
	**/
	@:optional
	dynamic function ondragenter(ev:js.html.DragEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLElement/dragleave_event)
	**/
	@:optional
	dynamic function ondragleave(ev:js.html.DragEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLElement/dragover_event)
	**/
	@:optional
	dynamic function ondragover(ev:js.html.DragEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLElement/dragstart_event)
	**/
	@:optional
	dynamic function ondragstart(ev:js.html.DragEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLElement/drop_event)
	**/
	@:optional
	dynamic function ondrop(ev:js.html.DragEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/durationchange_event)
	**/
	@:optional
	dynamic function ondurationchange(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/emptied_event)
	**/
	@:optional
	dynamic function onemptied(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/ended_event)
	**/
	@:optional
	dynamic function onended(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLElement/error_event)
	**/
	@:optional
	dynamic function onerror(event:ts.AnyOf2<String, js.html.Event>, ?source:String, ?lineno:Float, ?colno:Float, ?error:js.lib.Error):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/focus_event)
	**/
	@:optional
	dynamic function onfocus(ev:js.html.FocusEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/formdata_event)
	**/
	@:optional
	dynamic function onformdata(ev:FormDataEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/gotpointercapture_event)
	**/
	@:optional
	dynamic function ongotpointercapture(ev:js.html.PointerEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/input_event)
	**/
	@:optional
	dynamic function oninput(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/invalid_event)
	**/
	@:optional
	dynamic function oninvalid(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/keydown_event)
	**/
	@:optional
	dynamic function onkeydown(ev:js.html.KeyboardEvent):Dynamic;
	@:optional
	dynamic function onkeypress(ev:js.html.KeyboardEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/keyup_event)
	**/
	@:optional
	dynamic function onkeyup(ev:js.html.KeyboardEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLElement/load_event)
	**/
	@:optional
	dynamic function onload(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/loadeddata_event)
	**/
	@:optional
	dynamic function onloadeddata(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/loadedmetadata_event)
	**/
	@:optional
	dynamic function onloadedmetadata(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/loadstart_event)
	**/
	@:optional
	dynamic function onloadstart(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/lostpointercapture_event)
	**/
	@:optional
	dynamic function onlostpointercapture(ev:js.html.PointerEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/mousedown_event)
	**/
	@:optional
	dynamic function onmousedown(ev:js.html.MouseEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/mouseenter_event)
	**/
	@:optional
	dynamic function onmouseenter(ev:js.html.MouseEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/mouseleave_event)
	**/
	@:optional
	dynamic function onmouseleave(ev:js.html.MouseEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/mousemove_event)
	**/
	@:optional
	dynamic function onmousemove(ev:js.html.MouseEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/mouseout_event)
	**/
	@:optional
	dynamic function onmouseout(ev:js.html.MouseEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/mouseover_event)
	**/
	@:optional
	dynamic function onmouseover(ev:js.html.MouseEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/mouseup_event)
	**/
	@:optional
	dynamic function onmouseup(ev:js.html.MouseEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/paste_event)
	**/
	@:optional
	dynamic function onpaste(ev:js.html.ClipboardEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/pause_event)
	**/
	@:optional
	dynamic function onpause(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/play_event)
	**/
	@:optional
	dynamic function onplay(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/playing_event)
	**/
	@:optional
	dynamic function onplaying(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/pointercancel_event)
	**/
	@:optional
	dynamic function onpointercancel(ev:js.html.PointerEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/pointerdown_event)
	**/
	@:optional
	dynamic function onpointerdown(ev:js.html.PointerEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/pointerenter_event)
	**/
	@:optional
	dynamic function onpointerenter(ev:js.html.PointerEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/pointerleave_event)
	**/
	@:optional
	dynamic function onpointerleave(ev:js.html.PointerEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/pointermove_event)
	**/
	@:optional
	dynamic function onpointermove(ev:js.html.PointerEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/pointerout_event)
	**/
	@:optional
	dynamic function onpointerout(ev:js.html.PointerEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/pointerover_event)
	**/
	@:optional
	dynamic function onpointerover(ev:js.html.PointerEvent):Dynamic;
	/**
		Available only in secure contexts.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/pointerrawupdate_event)
	**/
	@:optional
	dynamic function onpointerrawupdate(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/pointerup_event)
	**/
	@:optional
	dynamic function onpointerup(ev:js.html.PointerEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/progress_event)
	**/
	@:optional
	dynamic function onprogress(ev:ProgressEvent_<js.html.EventTarget>):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/ratechange_event)
	**/
	@:optional
	dynamic function onratechange(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/reset_event)
	**/
	@:optional
	dynamic function onreset(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLVideoElement/resize_event)
	**/
	@:optional
	dynamic function onresize(ev:js.html.UIEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Document/scroll_event)
	**/
	@:optional
	dynamic function onscroll(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Document/scrollend_event)
	**/
	@:optional
	dynamic function onscrollend(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Document/securitypolicyviolation_event)
	**/
	@:optional
	dynamic function onsecuritypolicyviolation(ev:js.html.SecurityPolicyViolationEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/seeked_event)
	**/
	@:optional
	dynamic function onseeked(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/seeking_event)
	**/
	@:optional
	dynamic function onseeking(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/select_event)
	**/
	@:optional
	dynamic function onselect(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Document/selectionchange_event)
	**/
	@:optional
	dynamic function onselectionchange(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Node/selectstart_event)
	**/
	@:optional
	dynamic function onselectstart(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLSlotElement/slotchange_event)
	**/
	@:optional
	dynamic function onslotchange(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/stalled_event)
	**/
	@:optional
	dynamic function onstalled(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/submit_event)
	**/
	@:optional
	dynamic function onsubmit(ev:SubmitEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/suspend_event)
	**/
	@:optional
	dynamic function onsuspend(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/timeupdate_event)
	**/
	@:optional
	dynamic function ontimeupdate(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLElement/toggle_event)
	**/
	@:optional
	dynamic function ontoggle(ev:ToggleEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/touchcancel_event)
	**/
	@:optional
	dynamic function ontouchcancel(ev:js.html.TouchEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/touchend_event)
	**/
	@:optional
	dynamic function ontouchend(ev:js.html.TouchEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/touchmove_event)
	**/
	@:optional
	dynamic function ontouchmove(ev:js.html.TouchEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/touchstart_event)
	**/
	@:optional
	dynamic function ontouchstart(ev:js.html.TouchEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/transitioncancel_event)
	**/
	@:optional
	dynamic function ontransitioncancel(ev:js.html.TransitionEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/transitionend_event)
	**/
	@:optional
	dynamic function ontransitionend(ev:js.html.TransitionEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/transitionrun_event)
	**/
	@:optional
	dynamic function ontransitionrun(ev:js.html.TransitionEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/transitionstart_event)
	**/
	@:optional
	dynamic function ontransitionstart(ev:js.html.TransitionEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/volumechange_event)
	**/
	@:optional
	dynamic function onvolumechange(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/waiting_event)
	**/
	@:optional
	dynamic function onwaiting(ev:js.html.Event):Dynamic;
	@:optional
	dynamic function onwebkitanimationend(ev:js.html.Event):Dynamic;
	@:optional
	dynamic function onwebkitanimationiteration(ev:js.html.Event):Dynamic;
	@:optional
	dynamic function onwebkitanimationstart(ev:js.html.Event):Dynamic;
	@:optional
	dynamic function onwebkittransitionend(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/wheel_event)
	**/
	@:optional
	dynamic function onwheel(ev:js.html.WheelEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLElement/autofocus)
	**/
	var autofocus : Bool;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLElement/dataset)
	**/
	final dataset : js.html.DOMStringMap;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLElement/nonce)
	**/
	@:optional
	var nonce : String;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLElement/tabIndex)
	**/
	var tabIndex : Float;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLElement/blur)
	**/
	function blur():Void;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLElement/focus)
	**/
	function focus(?options:FocusOptions):Void;
	static var prototype : MathMLElement;
}