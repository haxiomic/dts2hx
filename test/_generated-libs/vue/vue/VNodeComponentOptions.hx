package vue;

typedef VNodeComponentOptions = {
	var Ctor : VueConstructor<Vue>;
	@:optional
	var propsData : Dynamic;
	@:optional
	var listeners : Dynamic;
	@:optional
	var children : Array<VNode>;
	@:optional
	var tag : String;
};