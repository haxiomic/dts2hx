package ts.html;
/**
	Any web page loaded in the browser and serves as an entry point into the web page's content, which is the DOM tree.
**/
@:native("Document") extern class Document {
	function new();
	/**
		Sets or gets the URL for the current document.
	**/
	final URL : String;
	/**
		Gets the object that has the focus when the parent document has focus.
	**/
	final activeElement : Null<IElement>;
	var alinkColor : String;
	final all : ts.lib.IHTMLAllCollection;
	final anchors : ts.lib.HTMLCollectionOf<IHTMLAnchorElement>;
	final applets : ts.lib.HTMLCollectionOf<IHTMLAppletElement>;
	var bgColor : String;
	/**
		Specifies the beginning and end of the document body.
	**/
	var body : IHTMLElement;
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
	final currentScript : Null<ts.AnyOf2<IHTMLScriptElement, ISVGScriptElement>>;
	final defaultView : Null<IWindow>;
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
	final doctype : Null<IDocumentType>;
	/**
		Gets a reference to the root node of the document.
	**/
	final documentElement : IHTMLElement;
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
	final embeds : ts.lib.HTMLCollectionOf<IHTMLEmbedElement>;
	var fgColor : String;
	/**
		Retrieves a collection, in source order, of all form objects in the document.
	**/
	final forms : ts.lib.HTMLCollectionOf<ts.lib.IHTMLFormElement>;
	final fullscreen : Bool;
	/**
		Returns true if document has the ability to display elements fullscreen and fullscreen is supported, or false otherwise.
	**/
	final fullscreenEnabled : Bool;
	/**
		Returns the head element.
	**/
	final head : IHTMLHeadElement;
	final hidden : Bool;
	/**
		Retrieves a collection, in source order, of img objects in the document.
	**/
	final images : ts.lib.HTMLCollectionOf<IHTMLImageElement>;
	/**
		Gets the implementation object of the current document.
	**/
	final implementation : IDOMImplementation;
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
	final links : ts.lib.HTMLCollectionOf<ts.AnyOf2<IHTMLAnchorElement, IHTMLAreaElement>>;
	/**
		Contains information about the current URL.
	**/
	var location : ILocation;
	var onfullscreenchange : Null<(ev:IEvent) -> Any>;
	var onfullscreenerror : Null<(ev:IEvent) -> Any>;
	var onpointerlockchange : Null<(ev:IEvent) -> Any>;
	var onpointerlockerror : Null<(ev:IEvent) -> Any>;
	/**
		Fires when the state of the object has changed.
	**/
	var onreadystatechange : Null<(ev:IProgressEvent<IDocument>) -> Any>;
	var onvisibilitychange : Null<(ev:IEvent) -> Any>;
	/**
		Returns document's origin.
	**/
	final origin : String;
	/**
		Return an HTMLCollection of the embed elements in the Document.
	**/
	final plugins : ts.lib.HTMLCollectionOf<IHTMLEmbedElement>;
	/**
		Retrieves a value that indicates the current state of the object.
	**/
	final readyState : String;
	/**
		Gets the URL of the location that referred the user to the current page.
	**/
	final referrer : String;
	/**
		Retrieves a collection of all script objects in the document.
	**/
	final scripts : ts.lib.HTMLCollectionOf<IHTMLScriptElement>;
	final scrollingElement : Null<IElement>;
	final timeline : IDocumentTimeline;
	/**
		Contains the title of the document.
	**/
	var title : String;
	final visibilityState : String;
	var vlinkColor : String;
	/**
		Moves node from another document and returns it.
		
		If node is a document, throws a "NotSupportedError" DOMException or, if node is a shadow root, throws a "HierarchyRequestError" DOMException.
	**/
	function adoptNode<T>(source:T):T;
	function captureEvents():Void;
	function caretPositionFromPoint(x:Float, y:Float):Null<ICaretPosition>;
	function caretRangeFromPoint(x:Float, y:Float):IRange;
	function clear():Void;
	/**
		Closes an output stream and forces the sent data to display.
	**/
	function close():Void;
	/**
		Creates an attribute object with a specified name.
	**/
	function createAttribute(localName:String):IAttr;
	function createAttributeNS(namespace:Null<String>, qualifiedName:String):IAttr;
	/**
		Returns a CDATASection node whose data is data.
	**/
	function createCDATASection(data:String):ICDATASection;
	/**
		Creates a comment object with the specified data.
	**/
	function createComment(data:String):IComment;
	/**
		Creates a new document.
	**/
	function createDocumentFragment():IDocumentFragment;
	/**
		Creates an instance of the element for the specified tag.
	**/
	@:overload(function<K>(tagName:K, ?options:ElementCreationOptions):Any { })
	@:overload(function(tagName:String, ?options:ElementCreationOptions):IHTMLElement { })
	function createElement<K>(tagName:K, ?options:ElementCreationOptions):Any;
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
	@:overload(function<K>(namespaceURI:String, qualifiedName:K):Any { })
	@:overload(function(namespaceURI:String, qualifiedName:String):ISVGElement { })
	@:overload(function(namespaceURI:Null<String>, qualifiedName:String, ?options:ElementCreationOptions):IElement { })
	@:overload(function(namespace:Null<String>, qualifiedName:String, ?options:ts.AnyOf2<String, ElementCreationOptions>):IElement { })
	function createElementNS(namespaceURI:String, qualifiedName:String):IHTMLElement;
	@:overload(function(eventInterface:String):IAnimationPlaybackEvent { })
	@:overload(function(eventInterface:String):IAudioProcessingEvent { })
	@:overload(function(eventInterface:String):IBeforeUnloadEvent { })
	@:overload(function(eventInterface:String):IClipboardEvent { })
	@:overload(function(eventInterface:String):ICloseEvent { })
	@:overload(function(eventInterface:String):ICompositionEvent { })
	@:overload(function(eventInterface:String):ICustomEvent<Any> { })
	@:overload(function(eventInterface:String):IDeviceLightEvent { })
	@:overload(function(eventInterface:String):IDeviceMotionEvent { })
	@:overload(function(eventInterface:String):IDeviceOrientationEvent { })
	@:overload(function(eventInterface:String):IDragEvent { })
	@:overload(function(eventInterface:String):IErrorEvent { })
	@:overload(function(eventInterface:String):IEvent { })
	@:overload(function(eventInterface:String):IEvent { })
	@:overload(function(eventInterface:String):IFocusEvent { })
	@:overload(function(eventInterface:String):IFocusNavigationEvent { })
	@:overload(function(eventInterface:String):IGamepadEvent { })
	@:overload(function(eventInterface:String):IHashChangeEvent { })
	@:overload(function(eventInterface:String):IIDBVersionChangeEvent { })
	@:overload(function(eventInterface:String):IInputEvent { })
	@:overload(function(eventInterface:String):IKeyboardEvent { })
	@:overload(function(eventInterface:String):IListeningStateChangedEvent { })
	@:overload(function(eventInterface:String):IMSGestureEvent { })
	@:overload(function(eventInterface:String):IMSMediaKeyMessageEvent { })
	@:overload(function(eventInterface:String):IMSMediaKeyNeededEvent { })
	@:overload(function(eventInterface:String):IMSPointerEvent { })
	@:overload(function(eventInterface:String):IMediaEncryptedEvent { })
	@:overload(function(eventInterface:String):IMediaKeyMessageEvent { })
	@:overload(function(eventInterface:String):IMediaQueryListEvent { })
	@:overload(function(eventInterface:String):IMediaStreamErrorEvent { })
	@:overload(function(eventInterface:String):IMediaStreamEvent { })
	@:overload(function(eventInterface:String):IMediaStreamTrackEvent { })
	@:overload(function(eventInterface:String):IMessageEvent { })
	@:overload(function(eventInterface:String):IMouseEvent { })
	@:overload(function(eventInterface:String):IMouseEvent { })
	@:overload(function(eventInterface:String):IMutationEvent { })
	@:overload(function(eventInterface:String):IMutationEvent { })
	@:overload(function(eventInterface:String):IOfflineAudioCompletionEvent { })
	@:overload(function(eventInterface:String):IOverflowEvent { })
	@:overload(function(eventInterface:String):IPageTransitionEvent { })
	@:overload(function(eventInterface:String):IPaymentRequestUpdateEvent { })
	@:overload(function(eventInterface:String):IPermissionRequestedEvent { })
	@:overload(function(eventInterface:String):IPointerEvent { })
	@:overload(function(eventInterface:String):IPopStateEvent { })
	@:overload(function(eventInterface:String):IProgressEvent<IEventTarget> { })
	@:overload(function(eventInterface:String):IPromiseRejectionEvent { })
	@:overload(function(eventInterface:String):IRTCDTMFToneChangeEvent { })
	@:overload(function(eventInterface:String):IRTCDataChannelEvent { })
	@:overload(function(eventInterface:String):IRTCDtlsTransportStateChangedEvent { })
	@:overload(function(eventInterface:String):IRTCErrorEvent { })
	@:overload(function(eventInterface:String):IRTCIceCandidatePairChangedEvent { })
	@:overload(function(eventInterface:String):IRTCIceGathererEvent { })
	@:overload(function(eventInterface:String):IRTCIceTransportStateChangedEvent { })
	@:overload(function(eventInterface:String):IRTCPeerConnectionIceErrorEvent { })
	@:overload(function(eventInterface:String):IRTCPeerConnectionIceEvent { })
	@:overload(function(eventInterface:String):IRTCSsrcConflictEvent { })
	@:overload(function(eventInterface:String):IRTCStatsEvent { })
	@:overload(function(eventInterface:String):IRTCTrackEvent { })
	@:overload(function(eventInterface:String):ISVGZoomEvent { })
	@:overload(function(eventInterface:String):ISVGZoomEvent { })
	@:overload(function(eventInterface:String):ISecurityPolicyViolationEvent { })
	@:overload(function(eventInterface:String):IServiceWorkerMessageEvent { })
	@:overload(function(eventInterface:String):ISpeechRecognitionError { })
	@:overload(function(eventInterface:String):ISpeechRecognitionEvent { })
	@:overload(function(eventInterface:String):ISpeechSynthesisErrorEvent { })
	@:overload(function(eventInterface:String):ISpeechSynthesisEvent { })
	@:overload(function(eventInterface:String):IStorageEvent { })
	@:overload(function(eventInterface:String):ITextEvent { })
	@:overload(function(eventInterface:String):ITouchEvent { })
	@:overload(function(eventInterface:String):ITrackEvent { })
	@:overload(function(eventInterface:String):ITransitionEvent { })
	@:overload(function(eventInterface:String):IUIEvent { })
	@:overload(function(eventInterface:String):IUIEvent { })
	@:overload(function(eventInterface:String):IVRDisplayEvent { })
	@:overload(function(eventInterface:String):IVRDisplayEvent { })
	@:overload(function(eventInterface:String):IWebGLContextEvent { })
	@:overload(function(eventInterface:String):IWheelEvent { })
	@:overload(function(eventInterface:String):IEvent { })
	function createEvent(eventInterface:String):IAnimationEvent;
	/**
		Creates a NodeIterator object that you can use to traverse filtered lists of nodes or elements in a document.
	**/
	function createNodeIterator(root:INode, ?whatToShow:Float, ?filter:NodeFilter):INodeIterator;
	/**
		Returns a ProcessingInstruction node whose target is target and data is data. If target does not match the Name production an "InvalidCharacterError" DOMException will be thrown. If data contains "?>" an "InvalidCharacterError" DOMException will be thrown.
	**/
	function createProcessingInstruction(target:String, data:String):IProcessingInstruction;
	/**
		Returns an empty range object that has both of its boundary points positioned at the beginning of the document.
	**/
	function createRange():IRange;
	/**
		Creates a text string from the specified value.
	**/
	function createTextNode(data:String):IText;
	/**
		Creates a TreeWalker object that you can use to traverse filtered lists of nodes or elements in a document.
	**/
	@:overload(function(root:INode, whatToShow:Float, filter:Null<NodeFilter>, ?entityReferenceExpansion:Bool):ITreeWalker { })
	function createTreeWalker(root:INode, ?whatToShow:Float, ?filter:NodeFilter):ITreeWalker;
	/**
		Returns the element for the specified x coordinate and the specified y coordinate.
	**/
	function elementFromPoint(x:Float, y:Float):Null<IElement>;
	function elementsFromPoint(x:Float, y:Float):std.Array<IElement>;
	/**
		Executes a command on the current document, current selection, or the given range.
	**/
	function execCommand(commandId:String, ?showUI:Bool, ?value:String):Bool;
	/**
		Stops document's fullscreen element from being displayed fullscreen and resolves promise when done.
	**/
	function exitFullscreen():ts.lib.IPromise<Void>;
	function exitPointerLock():Void;
	function getAnimations():std.Array<IAnimation>;
	/**
		Returns a reference to the first object with the specified value of the ID or NAME attribute.
	**/
	function getElementById(elementId:String):Null<IHTMLElement>;
	/**
		Returns a HTMLCollection of the elements in the object on which the method was invoked (a document or an element) that have all the classes given by classNames. The classNames argument is interpreted as a space-separated list of classes.
	**/
	function getElementsByClassName(classNames:String):ts.lib.HTMLCollectionOf<IElement>;
	/**
		Gets a collection of objects based on the value of the NAME or ID attribute.
	**/
	function getElementsByName(elementName:String):ts.lib.NodeListOf<IHTMLElement>;
	/**
		Retrieves a collection of objects based on the specified element name.
	**/
	@:overload(function<K>(qualifiedName:K):ts.lib.HTMLCollectionOf<Any> { })
	@:overload(function(qualifiedName:String):ts.lib.HTMLCollectionOf<IElement> { })
	function getElementsByTagName<K>(qualifiedName:K):ts.lib.HTMLCollectionOf<Any>;
	/**
		If namespace and localName are "*" returns a HTMLCollection of all descendant elements.
		
		If only namespace is "*" returns a HTMLCollection of all descendant elements whose local name is localName.
		
		If only localName is "*" returns a HTMLCollection of all descendant elements whose namespace is namespace.
		
		Otherwise, returns a HTMLCollection of all descendant elements whose namespace is namespace and local name is localName.
	**/
	@:overload(function(namespaceURI:String, localName:String):ts.lib.HTMLCollectionOf<ISVGElement> { })
	@:overload(function(namespaceURI:String, localName:String):ts.lib.HTMLCollectionOf<IElement> { })
	function getElementsByTagNameNS(namespaceURI:String, localName:String):ts.lib.HTMLCollectionOf<IHTMLElement>;
	/**
		Returns an object representing the current selection of the document that is loaded into the object displaying a webpage.
	**/
	function getSelection():Null<ISelection>;
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
	function open(?url:String, ?name:String, ?features:String, ?replace:Bool):IDocument;
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
	@:overload(function(type:String, listener:ts.AnyOf2<EventListener, EventListenerObject>, ?options:ts.AnyOf2<Bool, AddEventListenerOptions>):Void { })
	function addEventListener<K>(type:K, listener:(ev:Any) -> Any, ?options:ts.AnyOf2<Bool, AddEventListenerOptions>):Void;
	/**
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
	**/
	@:overload(function(type:String, listener:ts.AnyOf2<EventListener, EventListenerObject>, ?options:ts.AnyOf2<Bool, EventListenerOptions>):Void { })
	function removeEventListener<K>(type:K, listener:(ev:Any) -> Any, ?options:ts.AnyOf2<Bool, EventListenerOptions>):Void;
	static var prototype : IDocument;
}