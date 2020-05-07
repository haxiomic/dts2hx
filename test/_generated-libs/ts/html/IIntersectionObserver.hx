package ts.html;
/**
	provides a way to asynchronously observe changes in the intersection of a target element with an ancestor element or with a top-level document's viewport.
**/
typedef IIntersectionObserver = {
	final root : Null<Element>;
	final rootMargin : String;
	final thresholds : ts.lib.ReadonlyArray<Float>;
	function disconnect():Void;
	function observe(target:Element):Void;
	function takeRecords():Array<IntersectionObserverEntry>;
	function unobserve(target:Element):Void;
};