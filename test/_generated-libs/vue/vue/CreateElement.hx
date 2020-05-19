package vue;

typedef CreateElement = {
	@:overload(function(?tag:ts.AnyOf7<String, VueConstructor<Vue>, FunctionalComponentOptions<Dynamic, vue.types.options.PropsDefinition<Dynamic>>, ComponentOptions<Any, Dynamic, Dynamic, Dynamic, Dynamic, { }>, vue.types.options.AsyncComponentPromise<Dynamic, Dynamic, Dynamic, Dynamic>, vue.types.options.AsyncComponentFactory<Dynamic, Dynamic, Dynamic, Dynamic>, () -> Component<vue.types.options.DefaultData<Any>, vue.types.options.DefaultMethods<Any>, vue.types.options.DefaultComputed, { }>>, ?data:VNodeData, ?children:VNodeChildren):VNode { })
	@:selfCall
	function call(?tag:ts.AnyOf7<String, VueConstructor<Vue>, FunctionalComponentOptions<Dynamic, vue.types.options.PropsDefinition<Dynamic>>, ComponentOptions<Any, Dynamic, Dynamic, Dynamic, Dynamic, { }>, vue.types.options.AsyncComponentPromise<Dynamic, Dynamic, Dynamic, Dynamic>, vue.types.options.AsyncComponentFactory<Dynamic, Dynamic, Dynamic, Dynamic>, () -> Component<vue.types.options.DefaultData<Any>, vue.types.options.DefaultMethods<Any>, vue.types.options.DefaultComputed, { }>>, ?children:VNodeChildren):VNode;
};