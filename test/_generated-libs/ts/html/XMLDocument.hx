package ts.html;
/**
	An XML document. It inherits from the generic Document and does not add any specific methods or properties to it: nevertheless, several algorithms behave differently with the two types of documents.
**/
@:native("XMLDocument") extern class XMLDocument {
	function new();
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
	**/
	@:overload(function(type:String, listener:EventListenerOrEventListenerObject, ?options:ts.AnyOf2<Bool, AddEventListenerOptions>):Void { })
	function addEventListener<K>(type:K, listener:(ev:Dynamic) -> Dynamic, ?options:ts.AnyOf2<Bool, AddEventListenerOptions>):Void;
	/**
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
	**/
	@:overload(function(type:String, listener:EventListenerOrEventListenerObject, ?options:ts.AnyOf2<Bool, EventListenerOptions>):Void { })
	function removeEventListener<K>(type:K, listener:(ev:Dynamic) -> Dynamic, ?options:ts.AnyOf2<Bool, EventListenerOptions>):Void;
	/**
		Sets or gets the URL for the current document.
	**/
	final URL : String;
	/**
		Gets the object that has the focus when the parent document has focus.
	**/
	final activeElement : Null<Element>;
	var alinkColor : String;
	final all : HTMLAllCollection;
	final anchors : HTMLCollectionOf<HTMLAnchorElement>;
	final applets : HTMLCollectionOf<HTMLAppletElement>;
	var bgColor : String;
	/**
		Specifies the beginning and end of the document body.
	**/
	var body : HTMLElement;
	/**
		Returns document's encoding.
	**/
	final characterSet : String;
	/**
		Gets or sets the character set used to encode the object.
	**/
	final charset : String;
	/**
		Gets a value that indicates whether standards-compliant mode is switched on for the object.
	**/
	final compatMode : String;
	/**
		Returns document's content type.
	**/
	final contentType : String;
	/**
		Returns the HTTP cookies that apply to the Document. If there are no cookies or cookies can't be applied to this resource, the empty string will be returned.
		
		Can be set, to add a new cookie to the element's set of HTTP cookies.
		
		If the contents are sandboxed into a unique origin (e.g. in an iframe with the sandbox attribute), a "SecurityError" DOMException will be thrown on getting and setting.
	**/
	var cookie : String;
	/**
		Returns the script element, or the SVG script element, that is currently executing, as long as the element represents a classic script. In the case of reentrant script execution, returns the one that most recently started executing amongst those that have not yet finished executing.
		
		Returns null if the Document is not currently executing a script or SVG script element (e.g., because the running script is an event handler, or a timeout), or if the currently executing script or SVG script element represents a module script.
	**/
	final currentScript : Null<ts.AnyOf2<HTMLScriptElement, SVGScriptElement>>;
	final defaultView : Null<Window>;
	/**
		Sets or gets a value that indicates whether the document can be edited.
	**/
	var designMode : String;
	/**
		Sets or retrieves a value that indicates the reading order of the object.
	**/
	var dir : String;
	/**
		Gets an object representing the document type declaration associated with the current document.
	**/
	final doctype : Null<DocumentType>;
	/**
		Gets a reference to the root node of the document.
	**/
	final documentElement : HTMLElement;
	/**
		Returns document's URL.
	**/
	final documentURI : String;
	/**
		Sets or gets the security domain of the document.
	**/
	var domain : String;
	/**
		Retrieves a collection of all embed objects in the document.
	**/
	final embeds : HTMLCollectionOf<HTMLEmbedElement>;
	var fgColor : String;
	/**
		Retrieves a collection, in source order, of all form objects in the document.
	**/
	final forms : HTMLCollectionOf<HTMLFormElement>;
	final fullscreen : Bool;
	/**
		Returns true if document has the ability to display elements fullscreen and fullscreen is supported, or false otherwise.
	**/
	final fullscreenEnabled : Bool;
	/**
		Returns the head element.
	**/
	final head : HTMLHeadElement;
	final hidden : Bool;
	/**
		Retrieves a collection, in source order, of img objects in the document.
	**/
	final images : HTMLCollectionOf<HTMLImageElement>;
	/**
		Gets the implementation object of the current document.
	**/
	final implementation : DOMImplementation;
	/**
		Returns the character encoding used to create the webpage that is loaded into the document object.
	**/
	final inputEncoding : String;
	/**
		Gets the date that the page was last modified, if the page supplies one.
	**/
	final lastModified : String;
	var linkColor : String;
	/**
		Retrieves a collection of all a objects that specify the href property and all area objects in the document.
	**/
	final links : HTMLCollectionOf<ts.AnyOf2<HTMLAnchorElement, HTMLAreaElement>>;
	/**
		Contains information about the current URL.
	**/
	var location : Location;
	var onfullscreenchange : Null<(ev:Event) -> Dynamic>;
	var onfullscreenerror : Null<(ev:Event) -> Dynamic>;
	var onpointerlockchange : Null<(ev:Event) -> Dynamic>;
	var onpointerlockerror : Null<(ev:Event) -> Dynamic>;
	/**
		Fires when the state of the object has changed.
	**/
	var onreadystatechange : Null<(ev:ProgressEvent<Document>) -> Dynamic>;
	var onvisibilitychange : Null<(ev:Event) -> Dynamic>;
	/**
		Returns document's origin.
	**/
	final origin : String;
	/**
		Return an HTMLCollection of the embed elements in the Document.
	**/
	final plugins : HTMLCollectionOf<HTMLEmbedElement>;
	/**
		Retrieves a value that indicates the current state of the object.
	**/
	final readyState : DocumentReadyState;
	/**
		Gets the URL of the location that referred the user to the current page.
	**/
	final referrer : String;
	/**
		Retrieves a collection of all script objects in the document.
	**/
	final scripts : HTMLCollectionOf<HTMLScriptElement>;
	final scrollingElement : Null<Element>;
	final timeline : DocumentTimeline;
	/**
		Contains the title of the document.
	**/
	var title : String;
	final visibilityState : VisibilityState;
	var vlinkColor : String;
	/**
		Moves node from another document and returns it.
		
		If node is a document, throws a "NotSupportedError" DOMException or, if node is a shadow root, throws a "HierarchyRequestError" DOMException.
	**/
	function adoptNode<T>(source:T):T;
	function captureEvents():Void;
	function caretPositionFromPoint(x:Float, y:Float):Null<CaretPosition>;
	function caretRangeFromPoint(x:Float, y:Float):Range;
	function clear():Void;
	/**
		Closes an output stream and forces the sent data to display.
	**/
	function close():Void;
	/**
		Creates an attribute object with a specified name.
	**/
	function createAttribute(localName:String):Attr;
	function createAttributeNS(namespace:Null<String>, qualifiedName:String):Attr;
	/**
		Returns a CDATASection node whose data is data.
	**/
	function createCDATASection(data:String):CDATASection;
	/**
		Creates a comment object with the specified data.
	**/
	function createComment(data:String):Comment;
	/**
		Creates a new document.
	**/
	function createDocumentFragment():DocumentFragment;
	/**
		Creates an instance of the element for the specified tag.
	**/
	@:overload(function<K>(tagName:K, ?options:ElementCreationOptions):Dynamic { })
	@:overload(function(tagName:String, ?options:ElementCreationOptions):HTMLElement { })
	function createElement<K>(tagName:K, ?options:ElementCreationOptions):Dynamic;
	/**
		Returns an element with namespace namespace. Its namespace prefix will be everything before ":" (U+003E) in qualifiedName or null. Its local name will be everything after ":" (U+003E) in qualifiedName or qualifiedName.
		
		If localName does not match the Name production an "InvalidCharacterError" DOMException will be thrown.
		
		If one of the following conditions is true a "NamespaceError" DOMException will be thrown:
		
		localName does not match the QName production.
		Namespace prefix is not null and namespace is the empty string.
		Namespace prefix is "xml" and namespace is not the XML namespace.
		qualifiedName or namespace prefix is "xmlns" and namespace is not the XMLNS namespace.
		namespace is the XMLNS namespace and neither qualifiedName nor namespace prefix is "xmlns".
		
		When supplied, options's is can be used to create a customized built-in element.
	**/
	@:overload(function<K>(namespaceURI:String, qualifiedName:K):Dynamic { })
	@:overload(function(namespaceURI:String, qualifiedName:String):SVGElement { })
	@:overload(function(namespaceURI:Null<String>, qualifiedName:String, ?options:ElementCreationOptions):Element { })
	@:overload(function(namespace:Null<String>, qualifiedName:String, ?options:ts.AnyOf2<String, ElementCreationOptions>):Element { })
	function createElementNS(namespaceURI:String, qualifiedName:String):HTMLElement;
	@:overload(function(eventInterface:String):AnimationPlaybackEvent { })
	@:overload(function(eventInterface:String):AudioProcessingEvent { })
	@:overload(function(eventInterface:String):BeforeUnloadEvent { })
	@:overload(function(eventInterface:String):ClipboardEvent { })
	@:overload(function(eventInterface:String):CloseEvent { })
	@:overload(function(eventInterface:String):CompositionEvent { })
	@:overload(function(eventInterface:String):CustomEvent<Dynamic> { })
	@:overload(function(eventInterface:String):DeviceLightEvent { })
	@:overload(function(eventInterface:String):DeviceMotionEvent { })
	@:overload(function(eventInterface:String):DeviceOrientationEvent { })
	@:overload(function(eventInterface:String):DragEvent { })
	@:overload(function(eventInterface:String):ErrorEvent { })
	@:overload(function(eventInterface:String):Event { })
	@:overload(function(eventInterface:String):Event { })
	@:overload(function(eventInterface:String):FocusEvent { })
	@:overload(function(eventInterface:String):FocusNavigationEvent { })
	@:overload(function(eventInterface:String):GamepadEvent { })
	@:overload(function(eventInterface:String):HashChangeEvent { })
	@:overload(function(eventInterface:String):IDBVersionChangeEvent { })
	@:overload(function(eventInterface:String):InputEvent { })
	@:overload(function(eventInterface:String):KeyboardEvent { })
	@:overload(function(eventInterface:String):ListeningStateChangedEvent { })
	@:overload(function(eventInterface:String):MSGestureEvent { })
	@:overload(function(eventInterface:String):MSMediaKeyMessageEvent { })
	@:overload(function(eventInterface:String):MSMediaKeyNeededEvent { })
	@:overload(function(eventInterface:String):MSPointerEvent { })
	@:overload(function(eventInterface:String):MediaEncryptedEvent { })
	@:overload(function(eventInterface:String):MediaKeyMessageEvent { })
	@:overload(function(eventInterface:String):MediaQueryListEvent { })
	@:overload(function(eventInterface:String):MediaStreamErrorEvent { })
	@:overload(function(eventInterface:String):MediaStreamEvent { })
	@:overload(function(eventInterface:String):MediaStreamTrackEvent { })
	@:overload(function(eventInterface:String):MessageEvent { })
	@:overload(function(eventInterface:String):MouseEvent { })
	@:overload(function(eventInterface:String):MouseEvent { })
	@:overload(function(eventInterface:String):MutationEvent { })
	@:overload(function(eventInterface:String):MutationEvent { })
	@:overload(function(eventInterface:String):OfflineAudioCompletionEvent { })
	@:overload(function(eventInterface:String):OverflowEvent { })
	@:overload(function(eventInterface:String):PageTransitionEvent { })
	@:overload(function(eventInterface:String):PaymentRequestUpdateEvent { })
	@:overload(function(eventInterface:String):PermissionRequestedEvent { })
	@:overload(function(eventInterface:String):PointerEvent { })
	@:overload(function(eventInterface:String):PopStateEvent { })
	@:overload(function(eventInterface:String):ProgressEvent<EventTarget> { })
	@:overload(function(eventInterface:String):PromiseRejectionEvent { })
	@:overload(function(eventInterface:String):RTCDTMFToneChangeEvent { })
	@:overload(function(eventInterface:String):RTCDataChannelEvent { })
	@:overload(function(eventInterface:String):RTCDtlsTransportStateChangedEvent { })
	@:overload(function(eventInterface:String):RTCErrorEvent { })
	@:overload(function(eventInterface:String):RTCIceCandidatePairChangedEvent { })
	@:overload(function(eventInterface:String):RTCIceGathererEvent { })
	@:overload(function(eventInterface:String):RTCIceTransportStateChangedEvent { })
	@:overload(function(eventInterface:String):RTCPeerConnectionIceErrorEvent { })
	@:overload(function(eventInterface:String):RTCPeerConnectionIceEvent { })
	@:overload(function(eventInterface:String):RTCSsrcConflictEvent { })
	@:overload(function(eventInterface:String):RTCStatsEvent { })
	@:overload(function(eventInterface:String):RTCTrackEvent { })
	@:overload(function(eventInterface:String):SVGZoomEvent { })
	@:overload(function(eventInterface:String):SVGZoomEvent { })
	@:overload(function(eventInterface:String):SecurityPolicyViolationEvent { })
	@:overload(function(eventInterface:String):ServiceWorkerMessageEvent { })
	@:overload(function(eventInterface:String):SpeechRecognitionError { })
	@:overload(function(eventInterface:String):SpeechRecognitionEvent { })
	@:overload(function(eventInterface:String):SpeechSynthesisErrorEvent { })
	@:overload(function(eventInterface:String):SpeechSynthesisEvent { })
	@:overload(function(eventInterface:String):StorageEvent { })
	@:overload(function(eventInterface:String):TextEvent { })
	@:overload(function(eventInterface:String):TouchEvent { })
	@:overload(function(eventInterface:String):TrackEvent { })
	@:overload(function(eventInterface:String):TransitionEvent { })
	@:overload(function(eventInterface:String):UIEvent { })
	@:overload(function(eventInterface:String):UIEvent { })
	@:overload(function(eventInterface:String):VRDisplayEvent { })
	@:overload(function(eventInterface:String):VRDisplayEvent { })
	@:overload(function(eventInterface:String):WebGLContextEvent { })
	@:overload(function(eventInterface:String):WheelEvent { })
	@:overload(function(eventInterface:String):Event { })
	function createEvent(eventInterface:String):AnimationEvent;
	/**
		Creates a NodeIterator object that you can use to traverse filtered lists of nodes or elements in a document.
	**/
	function createNodeIterator(root:Node, ?whatToShow:Float, ?filter:NodeFilter):NodeIterator;
	/**
		Returns a ProcessingInstruction node whose target is target and data is data. If target does not match the Name production an "InvalidCharacterError" DOMException will be thrown. If data contains "?>" an "InvalidCharacterError" DOMException will be thrown.
	**/
	function createProcessingInstruction(target:String, data:String):ProcessingInstruction;
	/**
		Returns an empty range object that has both of its boundary points positioned at the beginning of the document.
	**/
	function createRange():Range;
	/**
		Creates a text string from the specified value.
	**/
	function createTextNode(data:String):Text;
	/**
		Creates a TreeWalker object that you can use to traverse filtered lists of nodes or elements in a document.
	**/
	@:overload(function(root:Node, whatToShow:Float, filter:Null<NodeFilter>, ?entityReferenceExpansion:Bool):TreeWalker { })
	function createTreeWalker(root:Node, ?whatToShow:Float, ?filter:NodeFilter):TreeWalker;
	/**
		Returns the element for the specified x coordinate and the specified y coordinate.
	**/
	function elementFromPoint(x:Float, y:Float):Null<Element>;
	function elementsFromPoint(x:Float, y:Float):Array<Element>;
	/**
		Executes a command on the current document, current selection, or the given range.
	**/
	function execCommand(commandId:String, ?showUI:Bool, ?value:String):Bool;
	/**
		Stops document's fullscreen element from being displayed fullscreen and resolves promise when done.
	**/
	function exitFullscreen():ts.lib.Promise<Void>;
	function exitPointerLock():Void;
	function getAnimations():Array<Animation>;
	/**
		Returns a reference to the first object with the specified value of the ID or NAME attribute.
	**/
	function getElementById(elementId:String):Null<HTMLElement>;
	/**
		Returns a HTMLCollection of the elements in the object on which the method was invoked (a document or an element) that have all the classes given by classNames. The classNames argument is interpreted as a space-separated list of classes.
	**/
	function getElementsByClassName(classNames:String):HTMLCollectionOf<Element>;
	/**
		Gets a collection of objects based on the value of the NAME or ID attribute.
	**/
	function getElementsByName(elementName:String):NodeListOf<HTMLElement>;
	/**
		Retrieves a collection of objects based on the specified element name.
	**/
	@:overload(function<K>(qualifiedName:K):HTMLCollectionOf<Dynamic> { })
	@:overload(function(qualifiedName:String):HTMLCollectionOf<Element> { })
	function getElementsByTagName<K>(qualifiedName:K):HTMLCollectionOf<Dynamic>;
	/**
		If namespace and localName are "*" returns a HTMLCollection of all descendant elements.
		
		If only namespace is "*" returns a HTMLCollection of all descendant elements whose local name is localName.
		
		If only localName is "*" returns a HTMLCollection of all descendant elements whose namespace is namespace.
		
		Otherwise, returns a HTMLCollection of all descendant elements whose namespace is namespace and local name is localName.
	**/
	@:overload(function(namespaceURI:String, localName:String):HTMLCollectionOf<SVGElement> { })
	@:overload(function(namespaceURI:String, localName:String):HTMLCollectionOf<Element> { })
	function getElementsByTagNameNS(namespaceURI:String, localName:String):HTMLCollectionOf<HTMLElement>;
	/**
		Returns an object representing the current selection of the document that is loaded into the object displaying a webpage.
	**/
	function getSelection():Null<Selection>;
	/**
		Gets a value indicating whether the object currently has focus.
	**/
	function hasFocus():Bool;
	/**
		Returns a copy of node. If deep is true, the copy also includes the node's descendants.
		
		If node is a document or a shadow root, throws a "NotSupportedError" DOMException.
	**/
	function importNode<T>(importedNode:T, deep:Bool):T;
	/**
		Opens a new window and loads a document specified by a given URL. Also, opens a new window that uses the url parameter and the name parameter to collect the output of the write method and the writeln method.
	**/
	function open(?url:String, ?name:String, ?features:String, ?replace:Bool):Document;
	/**
		Returns a Boolean value that indicates whether a specified command can be successfully executed using execCommand, given the current state of the document.
	**/
	function queryCommandEnabled(commandId:String):Bool;
	/**
		Returns a Boolean value that indicates whether the specified command is in the indeterminate state.
	**/
	function queryCommandIndeterm(commandId:String):Bool;
	/**
		Returns a Boolean value that indicates the current state of the command.
	**/
	function queryCommandState(commandId:String):Bool;
	/**
		Returns a Boolean value that indicates whether the current command is supported on the current range.
	**/
	function queryCommandSupported(commandId:String):Bool;
	/**
		Returns the current value of the document, range, or current selection for the given command.
	**/
	function queryCommandValue(commandId:String):String;
	function releaseEvents():Void;
	/**
		Writes one or more HTML expressions to a document in the specified window.
	**/
	function write(text:haxe.extern.Rest<String>):Void;
	/**
		Writes one or more HTML expressions, followed by a carriage return, to a document in the specified window.
	**/
	function writeln(text:haxe.extern.Rest<String>):Void;
	/**
		Returns node's node document's document base URL.
	**/
	final baseURI : String;
	/**
		Returns the children.
	**/
	final childNodes : NodeListOf<ChildNode>;
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
	final namespaceURI : Null<String>;
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
	final ownerDocument : Null<Document>;
	/**
		Returns the parent element.
	**/
	final parentElement : Null<HTMLElement>;
	/**
		Returns the parent.
	**/
	final parentNode : Null<INode & ParentNode>;
	/**
		Returns the previous sibling.
	**/
	final previousSibling : Null<Node>;
	var textContent : Null<String>;
	function appendChild<T>(newChild:T):T;
	/**
		Returns a copy of node. If deep is true, the copy also includes the node's descendants.
	**/
	function cloneNode(?deep:Bool):Node;
	/**
		Returns a bitmask indicating the position of other relative to node.
	**/
	function compareDocumentPosition(other:Node):Float;
	/**
		Returns true if other is an inclusive descendant of node, and false otherwise.
	**/
	function contains(other:Null<Node>):Bool;
	/**
		Returns node's root.
	**/
	function getRootNode(?options:GetRootNodeOptions):Node;
	/**
		Returns whether node has children.
	**/
	function hasChildNodes():Bool;
	function insertBefore<T>(newChild:T, refChild:Null<Node>):T;
	function isDefaultNamespace(namespace:Null<String>):Bool;
	/**
		Returns whether node and otherNode have the same properties.
	**/
	function isEqualNode(otherNode:Null<Node>):Bool;
	function isSameNode(otherNode:Null<Node>):Bool;
	function lookupNamespaceURI(prefix:Null<String>):Null<String>;
	function lookupPrefix(namespace:Null<String>):Null<String>;
	/**
		Removes empty exclusive Text nodes and concatenates the data of remaining contiguous exclusive Text nodes into the first of their nodes.
	**/
	function normalize():Void;
	function removeChild<T>(oldChild:T):T;
	function replaceChild<T>(newChild:Node, oldChild:T):T;
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
	function dispatchEvent(event:Event):Bool;
	var oncopy : Null<(ev:ClipboardEvent) -> Dynamic>;
	var oncut : Null<(ev:ClipboardEvent) -> Dynamic>;
	var onpaste : Null<(ev:ClipboardEvent) -> Dynamic>;
	/**
		Returns document's fullscreen element.
	**/
	final fullscreenElement : Null<Element>;
	final pointerLockElement : Null<Element>;
	/**
		Retrieves a collection of styleSheet objects representing the style sheets that correspond to each instance of a link or style object in the document.
	**/
	final styleSheets : StyleSheetList;
	/**
		Fires when the user aborts the download.
	**/
	var onabort : Null<(ev:UIEvent) -> Dynamic>;
	var onanimationcancel : Null<(ev:AnimationEvent) -> Dynamic>;
	var onanimationend : Null<(ev:AnimationEvent) -> Dynamic>;
	var onanimationiteration : Null<(ev:AnimationEvent) -> Dynamic>;
	var onanimationstart : Null<(ev:AnimationEvent) -> Dynamic>;
	var onauxclick : Null<(ev:MouseEvent) -> Dynamic>;
	/**
		Fires when the object loses the input focus.
	**/
	var onblur : Null<(ev:FocusEvent) -> Dynamic>;
	var oncancel : Null<(ev:Event) -> Dynamic>;
	/**
		Occurs when playback is possible, but would require further buffering.
	**/
	var oncanplay : Null<(ev:Event) -> Dynamic>;
	var oncanplaythrough : Null<(ev:Event) -> Dynamic>;
	/**
		Fires when the contents of the object or selection have changed.
	**/
	var onchange : Null<(ev:Event) -> Dynamic>;
	/**
		Fires when the user clicks the left mouse button on the object
	**/
	var onclick : Null<(ev:MouseEvent) -> Dynamic>;
	var onclose : Null<(ev:Event) -> Dynamic>;
	/**
		Fires when the user clicks the right mouse button in the client area, opening the context menu.
	**/
	var oncontextmenu : Null<(ev:MouseEvent) -> Dynamic>;
	var oncuechange : Null<(ev:Event) -> Dynamic>;
	/**
		Fires when the user double-clicks the object.
	**/
	var ondblclick : Null<(ev:MouseEvent) -> Dynamic>;
	/**
		Fires on the source object continuously during a drag operation.
	**/
	var ondrag : Null<(ev:DragEvent) -> Dynamic>;
	/**
		Fires on the source object when the user releases the mouse at the close of a drag operation.
	**/
	var ondragend : Null<(ev:DragEvent) -> Dynamic>;
	/**
		Fires on the target element when the user drags the object to a valid drop target.
	**/
	var ondragenter : Null<(ev:DragEvent) -> Dynamic>;
	var ondragexit : Null<(ev:Event) -> Dynamic>;
	/**
		Fires on the target object when the user moves the mouse out of a valid drop target during a drag operation.
	**/
	var ondragleave : Null<(ev:DragEvent) -> Dynamic>;
	/**
		Fires on the target element continuously while the user drags the object over a valid drop target.
	**/
	var ondragover : Null<(ev:DragEvent) -> Dynamic>;
	/**
		Fires on the source object when the user starts to drag a text selection or selected object.
	**/
	var ondragstart : Null<(ev:DragEvent) -> Dynamic>;
	var ondrop : Null<(ev:DragEvent) -> Dynamic>;
	/**
		Occurs when the duration attribute is updated.
	**/
	var ondurationchange : Null<(ev:Event) -> Dynamic>;
	/**
		Occurs when the media element is reset to its initial state.
	**/
	var onemptied : Null<(ev:Event) -> Dynamic>;
	/**
		Occurs when the end of playback is reached.
	**/
	var onended : Null<(ev:Event) -> Dynamic>;
	/**
		Fires when an error occurs during object loading.
	**/
	var onerror : OnErrorEventHandler;
	/**
		Fires when the object receives focus.
	**/
	var onfocus : Null<(ev:FocusEvent) -> Dynamic>;
	var ongotpointercapture : Null<(ev:PointerEvent) -> Dynamic>;
	var oninput : Null<(ev:Event) -> Dynamic>;
	var oninvalid : Null<(ev:Event) -> Dynamic>;
	/**
		Fires when the user presses a key.
	**/
	var onkeydown : Null<(ev:KeyboardEvent) -> Dynamic>;
	/**
		Fires when the user presses an alphanumeric key.
	**/
	var onkeypress : Null<(ev:KeyboardEvent) -> Dynamic>;
	/**
		Fires when the user releases a key.
	**/
	var onkeyup : Null<(ev:KeyboardEvent) -> Dynamic>;
	/**
		Fires immediately after the browser loads the object.
	**/
	var onload : Null<(ev:Event) -> Dynamic>;
	/**
		Occurs when media data is loaded at the current playback position.
	**/
	var onloadeddata : Null<(ev:Event) -> Dynamic>;
	/**
		Occurs when the duration and dimensions of the media have been determined.
	**/
	var onloadedmetadata : Null<(ev:Event) -> Dynamic>;
	var onloadend : Null<(ev:ProgressEvent<EventTarget>) -> Dynamic>;
	/**
		Occurs when Internet Explorer begins looking for media data.
	**/
	var onloadstart : Null<(ev:Event) -> Dynamic>;
	var onlostpointercapture : Null<(ev:PointerEvent) -> Dynamic>;
	/**
		Fires when the user clicks the object with either mouse button.
	**/
	var onmousedown : Null<(ev:MouseEvent) -> Dynamic>;
	var onmouseenter : Null<(ev:MouseEvent) -> Dynamic>;
	var onmouseleave : Null<(ev:MouseEvent) -> Dynamic>;
	/**
		Fires when the user moves the mouse over the object.
	**/
	var onmousemove : Null<(ev:MouseEvent) -> Dynamic>;
	/**
		Fires when the user moves the mouse pointer outside the boundaries of the object.
	**/
	var onmouseout : Null<(ev:MouseEvent) -> Dynamic>;
	/**
		Fires when the user moves the mouse pointer into the object.
	**/
	var onmouseover : Null<(ev:MouseEvent) -> Dynamic>;
	/**
		Fires when the user releases a mouse button while the mouse is over the object.
	**/
	var onmouseup : Null<(ev:MouseEvent) -> Dynamic>;
	/**
		Occurs when playback is paused.
	**/
	var onpause : Null<(ev:Event) -> Dynamic>;
	/**
		Occurs when the play method is requested.
	**/
	var onplay : Null<(ev:Event) -> Dynamic>;
	/**
		Occurs when the audio or video has started playing.
	**/
	var onplaying : Null<(ev:Event) -> Dynamic>;
	var onpointercancel : Null<(ev:PointerEvent) -> Dynamic>;
	var onpointerdown : Null<(ev:PointerEvent) -> Dynamic>;
	var onpointerenter : Null<(ev:PointerEvent) -> Dynamic>;
	var onpointerleave : Null<(ev:PointerEvent) -> Dynamic>;
	var onpointermove : Null<(ev:PointerEvent) -> Dynamic>;
	var onpointerout : Null<(ev:PointerEvent) -> Dynamic>;
	var onpointerover : Null<(ev:PointerEvent) -> Dynamic>;
	var onpointerup : Null<(ev:PointerEvent) -> Dynamic>;
	/**
		Occurs to indicate progress while downloading media data.
	**/
	var onprogress : Null<(ev:ProgressEvent<EventTarget>) -> Dynamic>;
	/**
		Occurs when the playback rate is increased or decreased.
	**/
	var onratechange : Null<(ev:Event) -> Dynamic>;
	/**
		Fires when the user resets a form.
	**/
	var onreset : Null<(ev:Event) -> Dynamic>;
	var onresize : Null<(ev:UIEvent) -> Dynamic>;
	/**
		Fires when the user repositions the scroll box in the scroll bar on the object.
	**/
	var onscroll : Null<(ev:Event) -> Dynamic>;
	var onsecuritypolicyviolation : Null<(ev:SecurityPolicyViolationEvent) -> Dynamic>;
	/**
		Occurs when the seek operation ends.
	**/
	var onseeked : Null<(ev:Event) -> Dynamic>;
	/**
		Occurs when the current playback position is moved.
	**/
	var onseeking : Null<(ev:Event) -> Dynamic>;
	/**
		Fires when the current selection changes.
	**/
	var onselect : Null<(ev:Event) -> Dynamic>;
	var onselectionchange : Null<(ev:Event) -> Dynamic>;
	var onselectstart : Null<(ev:Event) -> Dynamic>;
	/**
		Occurs when the download has stopped.
	**/
	var onstalled : Null<(ev:Event) -> Dynamic>;
	var onsubmit : Null<(ev:Event) -> Dynamic>;
	/**
		Occurs if the load operation has been intentionally halted.
	**/
	var onsuspend : Null<(ev:Event) -> Dynamic>;
	/**
		Occurs to indicate the current playback position.
	**/
	var ontimeupdate : Null<(ev:Event) -> Dynamic>;
	var ontoggle : Null<(ev:Event) -> Dynamic>;
	var ontouchcancel : Null<(ev:TouchEvent) -> Dynamic>;
	var ontouchend : Null<(ev:TouchEvent) -> Dynamic>;
	var ontouchmove : Null<(ev:TouchEvent) -> Dynamic>;
	var ontouchstart : Null<(ev:TouchEvent) -> Dynamic>;
	var ontransitioncancel : Null<(ev:TransitionEvent) -> Dynamic>;
	var ontransitionend : Null<(ev:TransitionEvent) -> Dynamic>;
	var ontransitionrun : Null<(ev:TransitionEvent) -> Dynamic>;
	var ontransitionstart : Null<(ev:TransitionEvent) -> Dynamic>;
	/**
		Occurs when the volume is changed, or playback is muted or unmuted.
	**/
	var onvolumechange : Null<(ev:Event) -> Dynamic>;
	/**
		Occurs when playback stops because the next frame of a video resource is not available.
	**/
	var onwaiting : Null<(ev:Event) -> Dynamic>;
	var onwheel : Null<(ev:WheelEvent) -> Dynamic>;
	final childElementCount : Float;
	/**
		Returns the child elements.
	**/
	final children : HTMLCollection;
	/**
		Returns the first child that is an element, and null otherwise.
	**/
	final firstElementChild : Null<Element>;
	/**
		Returns the last child that is an element, and null otherwise.
	**/
	final lastElementChild : Null<Element>;
	/**
		Inserts nodes after the last child of node, while replacing strings in nodes with equivalent Text nodes.
		
		Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
	**/
	function append(nodes:haxe.extern.Rest<ts.AnyOf2<String, Node>>):Void;
	/**
		Inserts nodes before the first child of node, while replacing strings in nodes with equivalent Text nodes.
		
		Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
	**/
	function prepend(nodes:haxe.extern.Rest<ts.AnyOf2<String, Node>>):Void;
	/**
		Returns the first element that is a descendant of node that matches selectors.
	**/
	@:overload(function<K>(selectors:K):Null<Dynamic> { })
	@:overload(function<E>(selectors:String):Null<E> { })
	function querySelector<K>(selectors:K):Null<Dynamic>;
	/**
		Returns all element descendants of node that match selectors.
	**/
	@:overload(function<K>(selectors:K):NodeListOf<Dynamic> { })
	@:overload(function<E>(selectors:String):NodeListOf<E> { })
	function querySelectorAll<K>(selectors:K):NodeListOf<Dynamic>;
	function createExpression(expression:String, ?resolver:ts.AnyOf2<(prefix:Null<String>) -> Null<String>, { function lookupNamespaceURI(prefix:Null<String>):Null<String>; }>):XPathExpression;
	function createNSResolver(nodeResolver:Node):XPathNSResolver;
	function evaluate(expression:String, contextNode:Node, ?resolver:ts.AnyOf2<(prefix:Null<String>) -> Null<String>, { function lookupNamespaceURI(prefix:Null<String>):Null<String>; }>, ?type:Float, ?result:XPathResult):XPathResult;
	static var prototype : XMLDocument;
}