package vue;

typedef RenderContext<Props> = {
	var props : Props;
	var children : Array<VNode>;
	function slots():Dynamic;
	var data : VNodeData;
	var parent : Vue;
	var listeners : { };
	var scopedSlots : { };
	var injections : Dynamic;
};