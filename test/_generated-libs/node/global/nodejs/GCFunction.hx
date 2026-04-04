package global.nodejs;

typedef GCFunction = ts.AnyOf4<() -> Void, (minor:Bool) -> Void, (options:GCOptions & { var execution : String; }) -> js.lib.Promise<ts.Undefined>, (options:GCOptions) -> Void>;