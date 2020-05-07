package ts.html;
typedef IntersectionObserverEntryInit = {
	var boundingClientRect : DOMRectInit;
	var intersectionRatio : Float;
	var intersectionRect : DOMRectInit;
	var isIntersecting : Bool;
	var rootBounds : Null<DOMRectInit>;
	var target : Element;
	var time : Float;
};