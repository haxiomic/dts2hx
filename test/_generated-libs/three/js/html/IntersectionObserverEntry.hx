package js.html;
/**
	This Intersection Observer API interface describes the intersection between the target element and its root container at a specific moment of transition.
**/
@:native("IntersectionObserverEntry") @tsInterface extern class IntersectionObserverEntry {
	function new(intersectionObserverEntryInit:IntersectionObserverEntryInit);
	final boundingClientRect : DOMRectReadOnly;
	final intersectionRatio : Float;
	final intersectionRect : DOMRectReadOnly;
	final isIntersecting : Bool;
	final rootBounds : Null<DOMRectReadOnly>;
	final target : Element;
	final time : Float;
	static var prototype : IntersectionObserverEntry;
}