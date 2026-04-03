package node.vm;

typedef DynamicModuleLoader<T> = (specifier:String, referrer:T, importAttributes:node.module.module.ImportAttributes) -> ts.AnyOf2<Module, js.lib.Promise<Module>>;