package js.html;
/**
	This Intersection Observer API interface describes the intersection between the target element and its root container at a specific moment of transition.
**/
extern typedef IIntersectionObserverEntry = {
	final boundingClientRect : IDOMRectReadOnly;
	final intersectionRatio : Float;
	final intersectionRect : IDOMRectReadOnly;
	final isIntersecting : Bool;
	final rootBounds : Null<IDOMRectReadOnly>;
	final target : IElement;
	final time : Float;
};