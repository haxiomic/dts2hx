package global.qs;

typedef DefaultEncoder = ts.AnyOf3<(str:Dynamic) -> String, (str:Dynamic, defaultEncoder:Dynamic) -> String, (str:Dynamic, defaultEncoder:Dynamic, charset:String) -> String>;