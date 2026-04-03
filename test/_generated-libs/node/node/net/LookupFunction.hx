package node.net;

typedef LookupFunction = (hostname:String, options:node.dns.LookupOptions, callback:ts.AnyOf2<(err:Null<global.nodejs.ErrnoException>, address:ts.AnyOf2<String, Array<node.dns.LookupAddress>>) -> Void, (err:Null<global.nodejs.ErrnoException>, address:ts.AnyOf2<String, Array<node.dns.LookupAddress>>, family:Float) -> Void>) -> Void;