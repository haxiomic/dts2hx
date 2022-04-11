package vue.types.options;

typedef AsyncComponentFactory<Data, Methods, Computed, Props> = () -> { dynamic function component(resolve:(component:vue.Component<Data, Methods, Computed, Props>) -> Void, reject:ts.AnyOf2<() -> Void, (reason:Dynamic) -> Void>):ts.AnyOf2<ts.Undefined, js.lib.Promise<ts.AnyOf4<vue.VueConstructor<vue.Vue>, vue.FunctionalComponentOptions<haxe.DynamicAccess<Dynamic>, PropsDefinition<haxe.DynamicAccess<Dynamic>>>, vue.ComponentOptions<Any, DefaultData<Any>, DefaultMethods<Any>, DefaultComputed, haxe.DynamicAccess<Dynamic>, haxe.DynamicAccess<Dynamic>>, EsModuleComponent>>>; @:optional var loading : ts.AnyOf4<vue.VueConstructor<vue.Vue>, vue.FunctionalComponentOptions<haxe.DynamicAccess<Dynamic>, PropsDefinition<haxe.DynamicAccess<Dynamic>>>, vue.ComponentOptions<Any, DefaultData<Any>, DefaultMethods<Any>, DefaultComputed, haxe.DynamicAccess<Dynamic>, haxe.DynamicAccess<Dynamic>>, EsModuleComponent>; @:optional var error : ts.AnyOf4<vue.VueConstructor<vue.Vue>, vue.FunctionalComponentOptions<haxe.DynamicAccess<Dynamic>, PropsDefinition<haxe.DynamicAccess<Dynamic>>>, vue.ComponentOptions<Any, DefaultData<Any>, DefaultMethods<Any>, DefaultComputed, haxe.DynamicAccess<Dynamic>, haxe.DynamicAccess<Dynamic>>, EsModuleComponent>; @:optional var delay : Float; @:optional var timeout : Float; };