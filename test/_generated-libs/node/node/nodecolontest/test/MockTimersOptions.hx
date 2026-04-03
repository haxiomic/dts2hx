package node.nodecolontest.test;

typedef MockTimersOptions = {
	var apis : haxe.ds.ReadOnlyArray<String>;
	@:optional
	var now : ts.AnyOf2<Float, js.lib.Date>;
};