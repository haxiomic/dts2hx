package js.html;

typedef ChildNode = {
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
		The read-only **`ownerDocument`** property of the Node interface returns the top-level document object of the node.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Node/ownerDocument)
	**/
	final ownerDocument : Null<js.html.Document>;
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
		The **`textContent`** property of the Node interface represents the text content of the node and its descendants.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Node/textContent)
	**/
	var textContent : Null<String>;
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
		The **`addEventListener()`** method of the EventTarget interface sets up a function that will be called whenever the specified event is delivered to the target.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/EventTarget/addEventListener)
	**/
	function addEventListener(type:String, callback:Null<EventListenerOrEventListenerObject>, ?options:ts.AnyOf2<Bool, js.html.AddEventListenerOptions>):Void;
	/**
		The **`dispatchEvent()`** method of the EventTarget sends an Event to the object, (synchronously) invoking the affected event listeners in the appropriate order.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/EventTarget/dispatchEvent)
	**/
	function dispatchEvent(event:js.html.Event):Bool;
	/**
		The **`removeEventListener()`** method of the EventTarget interface removes an event listener previously registered with EventTarget.addEventListener() from the target.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/EventTarget/removeEventListener)
	**/
	function removeEventListener(type:String, callback:Null<EventListenerOrEventListenerObject>, ?options:ts.AnyOf2<Bool, js.html.EventListenerOptions>):Void;
};