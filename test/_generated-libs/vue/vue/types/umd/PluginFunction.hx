package vue.types.umd;

typedef PluginFunction<T> = ts.AnyOf2<(Vue:vue.VueConstructor<vue.Vue>) -> Void, (Vue:vue.VueConstructor<vue.Vue>, options:T) -> Void>;