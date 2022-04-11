package vue;

typedef RenderContext<Props> = {
	var props : Props;
	var children : Array<VNode>;
	function slots():Dynamic;
	var data : VNodeData;
	var parent : Vue;
	var listeners : haxe.DynamicAccess<ts.AnyOf2<haxe.Constraints.Function, Array<haxe.Constraints.Function>>>;
	var scopedSlots : haxe.DynamicAccess<vue.types.vnode.NormalizedScopedSlot>;
	var injections : Dynamic;
};