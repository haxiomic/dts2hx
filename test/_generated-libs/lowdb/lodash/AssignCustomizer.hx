package lodash;

typedef AssignCustomizer = ts.AnyOf4<(objectValue:Dynamic, sourceValue:Dynamic) -> Dynamic, (objectValue:Dynamic, sourceValue:Dynamic, key:String) -> Dynamic, (objectValue:Dynamic, sourceValue:Dynamic, key:String, object:{ }) -> Dynamic, (objectValue:Dynamic, sourceValue:Dynamic, key:String, object:{ }, source:{ }) -> Dynamic>;