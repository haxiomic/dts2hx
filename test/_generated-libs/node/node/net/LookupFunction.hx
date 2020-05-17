package node.net;

typedef LookupFunction = (hostname:String, options:node.dns.LookupOneOptions, callback:(err:Null<global.nodejs.ErrnoException>, address:String, family:Float) -> Void) -> Void;