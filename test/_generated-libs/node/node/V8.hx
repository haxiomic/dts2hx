package node;
@:jsRequire("v8") @valueModuleOnly extern class V8 {
	static function getHeapStatistics():node.v8.HeapInfo;
	static function getHeapSpaceStatistics():std.Array<node.v8.HeapSpaceInfo>;
	static function setFlagsFromString(flags:String):Void;
}