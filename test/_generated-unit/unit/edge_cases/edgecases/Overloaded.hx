package unit.edge_cases.edgecases;

typedef Overloaded = ts.AnyOf3<(x:String) -> String, (x:Float) -> Float, (x:String, y:Float) -> Bool>;