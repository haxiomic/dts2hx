package js.html;
/**
	provides a way to asynchronously observe changes in the intersection of a target element with an ancestor element or with a top-level document's viewport.
**/
extern typedef IIntersectionObserver = {
	final root : Null<IElement>;
	final rootMargin : String;
	final thresholds : js.lib.ReadonlyArray<Float>;
	function disconnect():Void;
	function observe(target:IElement):Void;
	function takeRecords():std.Array<IIntersectionObserverEntry>;
	function unobserve(target:IElement):Void;
};