package vue.types.options;

@:forward
abstract EsModuleComponent(EsModuleComponentTypedef) from EsModuleComponentTypedef to EsModuleComponentTypedef {
	public var default_(get, set):vue.Component<DefaultData<ts.Never>, DefaultMethods<ts.Never>, DefaultComputed, haxe.DynamicAccess<Dynamic>>;
	inline function get_default_():vue.Component<DefaultData<ts.Never>, DefaultMethods<ts.Never>, DefaultComputed, haxe.DynamicAccess<Dynamic>> return js.Syntax.field(cast this, 'default');
	inline function set_default_(v:vue.Component<DefaultData<ts.Never>, DefaultMethods<ts.Never>, DefaultComputed, haxe.DynamicAccess<Dynamic>>):vue.Component<DefaultData<ts.Never>, DefaultMethods<ts.Never>, DefaultComputed, haxe.DynamicAccess<Dynamic>> { js.Syntax.code("{0}[{1}] = {2}", this, 'default', v); return v; }
}
