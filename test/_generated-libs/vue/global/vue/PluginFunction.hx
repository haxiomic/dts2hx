package global.vue;

typedef PluginFunction<T> = ts.AnyOf2<(Vue:vue.VueConstructor<Vue>) -> Void, (Vue:vue.VueConstructor<Vue>, options:T) -> Void>;