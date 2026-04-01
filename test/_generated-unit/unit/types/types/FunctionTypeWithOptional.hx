package unit.types.types;

typedef FunctionTypeWithOptional = ts.AnyOf2<(a:String) -> Float, (a:String, b:Bool) -> Float>;