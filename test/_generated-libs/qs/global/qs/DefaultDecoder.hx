package global.qs;

typedef DefaultDecoder = ts.AnyOf3<(str:String) -> String, (str:String, decoder:Dynamic) -> String, (str:String, decoder:Dynamic, charset:String) -> String>;