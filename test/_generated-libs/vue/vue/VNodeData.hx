package vue;

typedef VNodeData = {
	@:optional
	var key : ts.AnyOf2<String, Float>;
	@:optional
	var slot : String;
	@:optional
	var scopedSlots : { };
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
	var staticStyle : { };
	@:optional
	var style : ts.AnyOf3<String, Dynamic, Array<Dynamic>>;
	@:optional
	var props : { };
	@:optional
	var attrs : { };
	@:optional
	var domProps : { };
	@:optional
	var hook : { };
	@:optional
	var on : { };
	@:optional
	var nativeOn : { };
	@:optional
	var transition : Dynamic;
	@:optional
	var show : Bool;
	@:optional
	var inlineTemplate : {
		var render : js.lib.Function;
		var staticRenderFns : Array<js.lib.Function>;
	};
	@:optional
	var directives : Array<VNodeDirective>;
	@:optional
	var keepAlive : Bool;
};