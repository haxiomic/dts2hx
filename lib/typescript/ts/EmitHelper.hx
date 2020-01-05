package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:2898:5
**/
@:native('ts.EmitHelper')
extern interface EmitHelper {
	final name: String;
	final scoped: Bool;
	final text: haxe.extern.EitherType<String, (node: typescript.ts.EmitHelperUniqueNameCallback) -> String>;
	@:optional
	final priority: Float;
}

