package global.nodejs;

typedef GCFunction = ts.AnyOf4<() -> Void, (minor:Bool) -> Void, (options:{ var execution : String; @:optional var flavor : String; @:optional var type : String; @:optional var filename : String; }) -> js.lib.Promise<ts.Undefined>, (options:GCOptions) -> Void>;