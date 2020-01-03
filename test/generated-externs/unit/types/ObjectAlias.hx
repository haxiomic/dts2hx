package unit.types;




typedef ObjectAlias = {	var fieldA: Float; 	var fieldB: Float; 	var fieldArrayAlias: Array<String>; 	@:optional var fieldOptional: Float; 	var computedFieldName: String; 	var sub: {	var a: Float; 	var b: Float;}; 	function methodSignature<T>(a: T): Void; 	function methodSignature(a: Float): Void; 	var methodProperty: (a: Any) -> Void; 	@:optional function methodSignatureOptional(): String; 	final readonlyField: String;};



