package node.stream.web;

typedef ReadableStreamGenericReader = {
	final closed : js.lib.Promise<ts.Undefined>;
	function cancel(?reason:Dynamic):js.lib.Promise<ts.Undefined>;
};