package unit.types;




typedef ObjectAlias = {fieldA: Float, fieldB: Float, fieldArrayAlias: Array<String>, @:optional fieldOptional: Float, computedFieldName: String, sub: {a: Float, b: Float}, methodSignature: (a: Any) -> Void, methodProperty: (a: Any) -> Void, @:optional methodSignatureOptional: () -> String, final readonlyField: String};



