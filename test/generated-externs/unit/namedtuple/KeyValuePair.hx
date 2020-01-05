package unit.namedtuple;


/**
Generated from: test/unit/named-tuple.d.ts:5:5
**/

typedef KeyValuePair<K, V> = Array<haxe.extern.EitherType<K, V>> & {
	@:native('0')
	var Zero: K;
	@:native('1')
	var One: V;
}

