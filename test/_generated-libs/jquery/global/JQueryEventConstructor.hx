package global;

typedef JQueryEventConstructor = ts.AnyOf2<(event:String) -> global.jquery.Event, (event:String, properties:Any) -> global.jquery.Event>;