package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:2429:5
**/

typedef TupleType = typescript.ts.GenericType & {
	var minLength: Float;
	var hasRestElement: Bool;
	var readonly: Bool;
	@:optional
	var associatedNames: Array<typescript.ts.__String>;
	/** TS 4.0+: per-element flags: Required(1), Optional(2), Rest(4), Variadic(8) **/
	@:optional
	var elementFlags: Array<Int>;
}

