package vue.types.umd;

typedef PluginFunction<T> = ts.AnyOf2<(Vue:vue.VueConstructor<Vue>) -> Void, (Vue:vue.VueConstructor<Vue>, options:T) -> Void>;