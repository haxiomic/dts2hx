package unit.interface_;

/**
	Extend as another function type
**/
typedef FunctionTypeInterfaceExtended<K> = {
	@:overload(function(err:Dynamic, data:K):Void { })
	@:overload(function(err:Error):Void { })
	@:selfCall
	function call(anotherSignature:String):Void;
};