package unit.typedef_patterns.typedefpatterns;

typedef OverloadedCallable = ts.AnyOf2<(x:String) -> String, (x:Float) -> Float>;