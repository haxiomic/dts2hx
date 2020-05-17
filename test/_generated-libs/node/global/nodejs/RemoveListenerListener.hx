package global.nodejs;

typedef RemoveListenerListener = (type:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void) -> Void;