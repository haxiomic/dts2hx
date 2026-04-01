package unit.interface_;

/**
	Extend as a regular interface
**/
typedef FunctionTypeInterfaceExtendedWithField<K> = {
	@:overload(function(err:Error):Void { })
	@:selfCall
	function call(err:Dynamic, data:K):Void;
	var someField : K;
};