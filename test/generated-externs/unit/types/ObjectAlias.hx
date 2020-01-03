package unit.types;




typedef ObjectAlias = {	var fieldA: Float; 	var fieldB: Float; 	var fieldArrayAlias: Array<String>; 	@:optional var fieldOptional: Float; 	var computedFieldName: String; 	var sub: {	var a: Float; 	var b: Float;}; 	var methodSignature: (a: Any) -> Void; 	var methodProperty: (a: Any) -> Void; 	@:optional var methodSignatureOptional: () -> String; 	final readonlyField: String;};



