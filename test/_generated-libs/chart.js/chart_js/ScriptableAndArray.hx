package chart_js;

typedef ScriptableAndArray<T, TContext> = ts.AnyOf3<haxe.ds.ReadOnlyArray<T>, (ctx:TContext, options:haxe.DynamicAccess<Any>) -> T, T>;