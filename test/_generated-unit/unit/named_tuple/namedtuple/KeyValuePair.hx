package unit.named_tuple.namedtuple;
extern typedef KeyValuePair<K, V> = std.Array<haxe.extern.EitherType<K, V>> & { @:native("0")
	var Zero : K; @:native("1")
	var One : V; };