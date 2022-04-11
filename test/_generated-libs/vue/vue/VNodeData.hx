package vue;

typedef VNodeData = {
	@:optional
	var key : ts.AnyOf2<String, Float>;
	@:optional
	var slot : String;
	@:optional
	var scopedSlots : haxe.DynamicAccess<Null<vue.types.vnode.ScopedSlot>>;
	@:optional
	var ref : String;
	@:optional
	var refInFor : Bool;
	@:optional
	var tag : String;
	@:optional
	var staticClass : String;
	@:optional
	@:native("class")
	var class_ : Dynamic;
	@:optional
	var staticStyle : haxe.DynamicAccess<Dynamic>;
	@:optional
	var style : ts.AnyOf3<String, Dynamic, Array<Dynamic>>;
	@:optional
	var props : haxe.DynamicAccess<Dynamic>;
	@:optional
	var attrs : haxe.DynamicAccess<Dynamic>;
	@:optional
	var domProps : haxe.DynamicAccess<Dynamic>;
	@:optional
	var hook : haxe.DynamicAccess<haxe.Constraints.Function>;
	@:optional
	var on : haxe.DynamicAccess<ts.AnyOf2<haxe.Constraints.Function, Array<haxe.Constraints.Function>>>;
	@:optional
	var nativeOn : haxe.DynamicAccess<ts.AnyOf2<haxe.Constraints.Function, Array<haxe.Constraints.Function>>>;
	@:optional
	var transition : Dynamic;
	@:optional
	var show : Bool;
	@:optional
	var inlineTemplate : {
		var render : haxe.Constraints.Function;
		var staticRenderFns : Array<haxe.Constraints.Function>;
	};
	@:optional
	var directives : Array<VNodeDirective>;
	@:optional
	var keepAlive : Bool;
};