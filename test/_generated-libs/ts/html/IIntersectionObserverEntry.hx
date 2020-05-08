package ts.html;
/**
	This Intersection Observer API interface describes the intersection between the target element and its root container at a specific moment of transition.
**/
typedef IIntersectionObserverEntry = {
	final boundingClientRect : DOMRectReadOnly;
	final intersectionRatio : Float;
	final intersectionRect : DOMRectReadOnly;
	final isIntersecting : Bool;
	final rootBounds : Null<DOMRectReadOnly>;
	final target : Element;
	final time : Float;
};