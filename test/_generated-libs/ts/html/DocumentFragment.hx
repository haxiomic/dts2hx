package ts.html;
/**
	A minimal document object that has no parent. It is used as a lightweight version of Document that stores a segment of a document structure comprised of nodes just like a standard document. The key difference is that because the document fragment isn't part of the active document tree structure, changes made to the fragment don't affect the document, cause reflow, or incur any performance impact that can occur when changes are made.
**/
@:native("DocumentFragment") extern class DocumentFragment {
	function new();
	/**
		Returns the first element within node's descendants whose ID is elementId.
	**/
	function getElementById(elementId:String):Null<IHTMLElement>;
	/**
		Returns node's node document's document base URL.
	**/
	final baseURI : String;
	/**
		Returns the children.
	**/
	final childNodes : ts.lib.NodeListOf<ChildNode>;
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
	function appendChild<T>(newChild:T):T;
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
	function insertBefore<T>(newChild:T, refChild:Null<INode>):T;
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
	function removeChild<T>(oldChild:T):T;
	function replaceChild<T>(newChild:INode, oldChild:T):T;
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
		Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
		
		The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
		
		When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
		
		When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in §2.8 Observing event listeners.
		
		When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
		
		The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
	**/
	function addEventListener(type:String, listener:Null<haxe.extern.EitherType<EventListener, EventListenerObject>>, ?options:haxe.extern.EitherType<Bool, AddEventListenerOptions>):Void;
	/**
		Dispatches a synthetic event event to target and returns true if either event's cancelable attribute value is false or its preventDefault() method was not invoked, and false otherwise.
	**/
	function dispatchEvent(event:IEvent):Bool;
	/**
		Removes the event listener in target's event listener list with the same type, callback, and options.
	**/
	function removeEventListener(type:String, callback:Null<haxe.extern.EitherType<EventListener, EventListenerObject>>, ?options:haxe.extern.EitherType<Bool, EventListenerOptions>):Void;
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
	@:overload(function<K>(selectors:K):Null<haxe.extern.EitherType<ISVGScriptElement, haxe.extern.EitherType<ISVGSymbolElement, haxe.extern.EitherType<ISVGAElement, haxe.extern.EitherType<ISVGStyleElement, haxe.extern.EitherType<ISVGTitleElement, haxe.extern.EitherType<ISVGCircleElement, haxe.extern.EitherType<ISVGClipPathElement, haxe.extern.EitherType<ISVGDefsElement, haxe.extern.EitherType<ISVGDescElement, haxe.extern.EitherType<ISVGEllipseElement, haxe.extern.EitherType<ISVGFEBlendElement, haxe.extern.EitherType<ISVGFEColorMatrixElement, haxe.extern.EitherType<ISVGFEComponentTransferElement, haxe.extern.EitherType<ISVGFECompositeElement, haxe.extern.EitherType<ISVGFEConvolveMatrixElement, haxe.extern.EitherType<ISVGFEDiffuseLightingElement, haxe.extern.EitherType<ISVGFEDisplacementMapElement, haxe.extern.EitherType<ISVGFEDistantLightElement, haxe.extern.EitherType<ISVGFEFloodElement, haxe.extern.EitherType<ISVGFEFuncAElement, haxe.extern.EitherType<ISVGFEFuncBElement, haxe.extern.EitherType<ISVGFEFuncGElement, haxe.extern.EitherType<ISVGFEFuncRElement, haxe.extern.EitherType<ISVGFEGaussianBlurElement, haxe.extern.EitherType<ISVGFEImageElement, haxe.extern.EitherType<ISVGFEMergeElement, haxe.extern.EitherType<ISVGFEMergeNodeElement, haxe.extern.EitherType<ISVGFEMorphologyElement, haxe.extern.EitherType<ISVGFEOffsetElement, haxe.extern.EitherType<ISVGFEPointLightElement, haxe.extern.EitherType<ISVGFESpecularLightingElement, haxe.extern.EitherType<ISVGFESpotLightElement, haxe.extern.EitherType<ISVGFETileElement, haxe.extern.EitherType<ISVGFETurbulenceElement, haxe.extern.EitherType<ISVGFilterElement, haxe.extern.EitherType<ISVGForeignObjectElement, haxe.extern.EitherType<ISVGGElement, haxe.extern.EitherType<ISVGImageElement, haxe.extern.EitherType<ISVGLineElement, haxe.extern.EitherType<ISVGLinearGradientElement, haxe.extern.EitherType<ISVGMarkerElement, haxe.extern.EitherType<ISVGMaskElement, haxe.extern.EitherType<ISVGMetadataElement, haxe.extern.EitherType<ISVGPathElement, haxe.extern.EitherType<ISVGPatternElement, haxe.extern.EitherType<ISVGPolygonElement, haxe.extern.EitherType<ISVGPolylineElement, haxe.extern.EitherType<ISVGRadialGradientElement, haxe.extern.EitherType<ISVGRectElement, haxe.extern.EitherType<ISVGStopElement, haxe.extern.EitherType<ISVGSVGElement, haxe.extern.EitherType<ISVGSwitchElement, haxe.extern.EitherType<ISVGTextElement, haxe.extern.EitherType<ISVGTextPathElement, haxe.extern.EitherType<ISVGTSpanElement, haxe.extern.EitherType<ISVGUseElement, ISVGViewElement>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> { })
	@:overload(function<E>(selectors:String):Null<E> { })
	function querySelector<K>(selectors:K):Null<haxe.extern.EitherType<IHTMLAnchorElement, haxe.extern.EitherType<IHTMLElement, haxe.extern.EitherType<IHTMLAppletElement, haxe.extern.EitherType<IHTMLScriptElement, haxe.extern.EitherType<IHTMLEmbedElement, haxe.extern.EitherType<ts.lib.IHTMLFormElement, haxe.extern.EitherType<IHTMLHeadElement, haxe.extern.EitherType<IHTMLImageElement, haxe.extern.EitherType<IHTMLAreaElement, haxe.extern.EitherType<IHTMLPreElement, haxe.extern.EitherType<IHTMLObjectElement, haxe.extern.EitherType<IHTMLAudioElement, haxe.extern.EitherType<IHTMLBaseElement, haxe.extern.EitherType<IHTMLBaseFontElement, haxe.extern.EitherType<IHTMLQuoteElement, haxe.extern.EitherType<IHTMLBodyElement, haxe.extern.EitherType<IHTMLBRElement, haxe.extern.EitherType<IHTMLButtonElement, haxe.extern.EitherType<IHTMLCanvasElement, haxe.extern.EitherType<IHTMLTableCaptionElement, haxe.extern.EitherType<IHTMLTableColElement, haxe.extern.EitherType<IHTMLDataElement, haxe.extern.EitherType<IHTMLDataListElement, haxe.extern.EitherType<IHTMLModElement, haxe.extern.EitherType<IHTMLDetailsElement, haxe.extern.EitherType<IHTMLDialogElement, haxe.extern.EitherType<IHTMLDirectoryElement, haxe.extern.EitherType<IHTMLDivElement, haxe.extern.EitherType<IHTMLDListElement, haxe.extern.EitherType<IHTMLFieldSetElement, haxe.extern.EitherType<IHTMLFontElement, haxe.extern.EitherType<IHTMLFrameElement, haxe.extern.EitherType<IHTMLFrameSetElement, haxe.extern.EitherType<IHTMLHeadingElement, haxe.extern.EitherType<IHTMLHRElement, haxe.extern.EitherType<IHTMLHtmlElement, haxe.extern.EitherType<IHTMLIFrameElement, haxe.extern.EitherType<IHTMLInputElement, haxe.extern.EitherType<IHTMLLabelElement, haxe.extern.EitherType<IHTMLLegendElement, haxe.extern.EitherType<IHTMLLIElement, haxe.extern.EitherType<IHTMLLinkElement, haxe.extern.EitherType<IHTMLMapElement, haxe.extern.EitherType<IHTMLMarqueeElement, haxe.extern.EitherType<IHTMLMenuElement, haxe.extern.EitherType<IHTMLMetaElement, haxe.extern.EitherType<IHTMLMeterElement, haxe.extern.EitherType<IHTMLOListElement, haxe.extern.EitherType<IHTMLOptGroupElement, haxe.extern.EitherType<IHTMLOptionElement, haxe.extern.EitherType<IHTMLOutputElement, haxe.extern.EitherType<IHTMLParagraphElement, haxe.extern.EitherType<IHTMLParamElement, haxe.extern.EitherType<IHTMLPictureElement, haxe.extern.EitherType<IHTMLProgressElement, haxe.extern.EitherType<ts.lib.IHTMLSelectElement, haxe.extern.EitherType<IHTMLSlotElement, haxe.extern.EitherType<IHTMLSourceElement, haxe.extern.EitherType<IHTMLSpanElement, haxe.extern.EitherType<IHTMLStyleElement, haxe.extern.EitherType<IHTMLTableElement, haxe.extern.EitherType<IHTMLTableSectionElement, haxe.extern.EitherType<IHTMLTableDataCellElement, haxe.extern.EitherType<IHTMLTemplateElement, haxe.extern.EitherType<IHTMLTextAreaElement, haxe.extern.EitherType<IHTMLTableHeaderCellElement, haxe.extern.EitherType<IHTMLTimeElement, haxe.extern.EitherType<IHTMLTitleElement, haxe.extern.EitherType<IHTMLTableRowElement, haxe.extern.EitherType<IHTMLTrackElement, haxe.extern.EitherType<IHTMLUListElement, IHTMLVideoElement>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>;
	/**
		Returns all element descendants of node that match selectors.
	**/
	@:overload(function<K>(selectors:K):ts.lib.NodeListOf<haxe.extern.EitherType<ISVGScriptElement, haxe.extern.EitherType<ISVGSymbolElement, haxe.extern.EitherType<ISVGAElement, haxe.extern.EitherType<ISVGStyleElement, haxe.extern.EitherType<ISVGTitleElement, haxe.extern.EitherType<ISVGCircleElement, haxe.extern.EitherType<ISVGClipPathElement, haxe.extern.EitherType<ISVGDefsElement, haxe.extern.EitherType<ISVGDescElement, haxe.extern.EitherType<ISVGEllipseElement, haxe.extern.EitherType<ISVGFEBlendElement, haxe.extern.EitherType<ISVGFEColorMatrixElement, haxe.extern.EitherType<ISVGFEComponentTransferElement, haxe.extern.EitherType<ISVGFECompositeElement, haxe.extern.EitherType<ISVGFEConvolveMatrixElement, haxe.extern.EitherType<ISVGFEDiffuseLightingElement, haxe.extern.EitherType<ISVGFEDisplacementMapElement, haxe.extern.EitherType<ISVGFEDistantLightElement, haxe.extern.EitherType<ISVGFEFloodElement, haxe.extern.EitherType<ISVGFEFuncAElement, haxe.extern.EitherType<ISVGFEFuncBElement, haxe.extern.EitherType<ISVGFEFuncGElement, haxe.extern.EitherType<ISVGFEFuncRElement, haxe.extern.EitherType<ISVGFEGaussianBlurElement, haxe.extern.EitherType<ISVGFEImageElement, haxe.extern.EitherType<ISVGFEMergeElement, haxe.extern.EitherType<ISVGFEMergeNodeElement, haxe.extern.EitherType<ISVGFEMorphologyElement, haxe.extern.EitherType<ISVGFEOffsetElement, haxe.extern.EitherType<ISVGFEPointLightElement, haxe.extern.EitherType<ISVGFESpecularLightingElement, haxe.extern.EitherType<ISVGFESpotLightElement, haxe.extern.EitherType<ISVGFETileElement, haxe.extern.EitherType<ISVGFETurbulenceElement, haxe.extern.EitherType<ISVGFilterElement, haxe.extern.EitherType<ISVGForeignObjectElement, haxe.extern.EitherType<ISVGGElement, haxe.extern.EitherType<ISVGImageElement, haxe.extern.EitherType<ISVGLineElement, haxe.extern.EitherType<ISVGLinearGradientElement, haxe.extern.EitherType<ISVGMarkerElement, haxe.extern.EitherType<ISVGMaskElement, haxe.extern.EitherType<ISVGMetadataElement, haxe.extern.EitherType<ISVGPathElement, haxe.extern.EitherType<ISVGPatternElement, haxe.extern.EitherType<ISVGPolygonElement, haxe.extern.EitherType<ISVGPolylineElement, haxe.extern.EitherType<ISVGRadialGradientElement, haxe.extern.EitherType<ISVGRectElement, haxe.extern.EitherType<ISVGStopElement, haxe.extern.EitherType<ISVGSVGElement, haxe.extern.EitherType<ISVGSwitchElement, haxe.extern.EitherType<ISVGTextElement, haxe.extern.EitherType<ISVGTextPathElement, haxe.extern.EitherType<ISVGTSpanElement, haxe.extern.EitherType<ISVGUseElement, ISVGViewElement>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> { })
	@:overload(function<E>(selectors:String):ts.lib.NodeListOf<E> { })
	function querySelectorAll<K>(selectors:K):ts.lib.NodeListOf<haxe.extern.EitherType<IHTMLAnchorElement, haxe.extern.EitherType<IHTMLElement, haxe.extern.EitherType<IHTMLAppletElement, haxe.extern.EitherType<IHTMLScriptElement, haxe.extern.EitherType<IHTMLEmbedElement, haxe.extern.EitherType<ts.lib.IHTMLFormElement, haxe.extern.EitherType<IHTMLHeadElement, haxe.extern.EitherType<IHTMLImageElement, haxe.extern.EitherType<IHTMLAreaElement, haxe.extern.EitherType<IHTMLPreElement, haxe.extern.EitherType<IHTMLObjectElement, haxe.extern.EitherType<IHTMLAudioElement, haxe.extern.EitherType<IHTMLBaseElement, haxe.extern.EitherType<IHTMLBaseFontElement, haxe.extern.EitherType<IHTMLQuoteElement, haxe.extern.EitherType<IHTMLBodyElement, haxe.extern.EitherType<IHTMLBRElement, haxe.extern.EitherType<IHTMLButtonElement, haxe.extern.EitherType<IHTMLCanvasElement, haxe.extern.EitherType<IHTMLTableCaptionElement, haxe.extern.EitherType<IHTMLTableColElement, haxe.extern.EitherType<IHTMLDataElement, haxe.extern.EitherType<IHTMLDataListElement, haxe.extern.EitherType<IHTMLModElement, haxe.extern.EitherType<IHTMLDetailsElement, haxe.extern.EitherType<IHTMLDialogElement, haxe.extern.EitherType<IHTMLDirectoryElement, haxe.extern.EitherType<IHTMLDivElement, haxe.extern.EitherType<IHTMLDListElement, haxe.extern.EitherType<IHTMLFieldSetElement, haxe.extern.EitherType<IHTMLFontElement, haxe.extern.EitherType<IHTMLFrameElement, haxe.extern.EitherType<IHTMLFrameSetElement, haxe.extern.EitherType<IHTMLHeadingElement, haxe.extern.EitherType<IHTMLHRElement, haxe.extern.EitherType<IHTMLHtmlElement, haxe.extern.EitherType<IHTMLIFrameElement, haxe.extern.EitherType<IHTMLInputElement, haxe.extern.EitherType<IHTMLLabelElement, haxe.extern.EitherType<IHTMLLegendElement, haxe.extern.EitherType<IHTMLLIElement, haxe.extern.EitherType<IHTMLLinkElement, haxe.extern.EitherType<IHTMLMapElement, haxe.extern.EitherType<IHTMLMarqueeElement, haxe.extern.EitherType<IHTMLMenuElement, haxe.extern.EitherType<IHTMLMetaElement, haxe.extern.EitherType<IHTMLMeterElement, haxe.extern.EitherType<IHTMLOListElement, haxe.extern.EitherType<IHTMLOptGroupElement, haxe.extern.EitherType<IHTMLOptionElement, haxe.extern.EitherType<IHTMLOutputElement, haxe.extern.EitherType<IHTMLParagraphElement, haxe.extern.EitherType<IHTMLParamElement, haxe.extern.EitherType<IHTMLPictureElement, haxe.extern.EitherType<IHTMLProgressElement, haxe.extern.EitherType<ts.lib.IHTMLSelectElement, haxe.extern.EitherType<IHTMLSlotElement, haxe.extern.EitherType<IHTMLSourceElement, haxe.extern.EitherType<IHTMLSpanElement, haxe.extern.EitherType<IHTMLStyleElement, haxe.extern.EitherType<IHTMLTableElement, haxe.extern.EitherType<IHTMLTableSectionElement, haxe.extern.EitherType<IHTMLTableDataCellElement, haxe.extern.EitherType<IHTMLTemplateElement, haxe.extern.EitherType<IHTMLTextAreaElement, haxe.extern.EitherType<IHTMLTableHeaderCellElement, haxe.extern.EitherType<IHTMLTimeElement, haxe.extern.EitherType<IHTMLTitleElement, haxe.extern.EitherType<IHTMLTableRowElement, haxe.extern.EitherType<IHTMLTrackElement, haxe.extern.EitherType<IHTMLUListElement, IHTMLVideoElement>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>;
	static var prototype : IDocumentFragment;
}