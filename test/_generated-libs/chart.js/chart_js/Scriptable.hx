package chart_js;

typedef Scriptable<T, TContext> = ts.AnyOf2<(ctx:TContext, options:haxe.DynamicAccess<Any>) -> T, T>;