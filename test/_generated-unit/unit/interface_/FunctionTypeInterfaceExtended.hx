package unit.interface_;

/**
	Extend as another function type
**/
typedef FunctionTypeInterfaceExtended<K> = ts.AnyOf3<(anotherSignature:String) -> Void, (err:Dynamic, data:K) -> Void, (err:Error) -> Void>;