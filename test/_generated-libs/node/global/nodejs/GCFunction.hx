package global.nodejs;

typedef GCFunction = ts.AnyOf4<() -> Void, (minor:Bool) -> Void, (options:Dynamic) -> js.lib.Promise<ts.Undefined>, (options:GCOptions) -> Void>;