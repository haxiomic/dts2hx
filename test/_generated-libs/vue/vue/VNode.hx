package vue;

typedef VNode = {
	@:optional
	var tag : String;
	@:optional
	var data : VNodeData;
	@:optional
	var children : Array<VNode>;
	@:optional
	var text : String;
	@:optional
	var elm : js.html.Node;
	@:optional
	var ns : String;
	@:optional
	var context : Vue;
	@:optional
	var key : ts.AnyOf2<String, Float>;
	@:optional
	var componentOptions : VNodeComponentOptions;
	@:optional
	var componentInstance : Vue;
	@:optional
	var parent : VNode;
	@:optional
	var raw : Bool;
	@:optional
	var isStatic : Bool;
	var isRootInsert : Bool;
	var isComment : Bool;
};