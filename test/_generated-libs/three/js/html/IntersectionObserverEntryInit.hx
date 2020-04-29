package js.html;
extern typedef IntersectionObserverEntryInit = {
	var boundingClientRect : DOMRectInit;
	var intersectionRatio : Float;
	var intersectionRect : DOMRectInit;
	var isIntersecting : Bool;
	var rootBounds : Null<DOMRectInit>;
	var target : IElement;
	var time : Float;
};