package vue;

typedef PluginFunction<T> = ts.AnyOf2<(Vue:VueConstructor<Vue>) -> Void, (Vue:VueConstructor<Vue>, options:T) -> Void>;