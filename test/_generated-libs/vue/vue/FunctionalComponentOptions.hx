package vue;

typedef FunctionalComponentOptions<Props, PropDefs> = {
	@:optional
	var name : String;
	@:optional
	var props : PropDefs;
	@:optional
	var model : {
		@:optional
		var prop : String;
		@:optional
		var event : String;
	};
	@:optional
	var inject : ts.AnyOf2<{ }, Array<String>>;
	var functional : Bool;
	@:optional
	function render(createElement:CreateElement, context:RenderContext<Props>):ts.AnyOf2<VNode, Array<VNode>>;
};