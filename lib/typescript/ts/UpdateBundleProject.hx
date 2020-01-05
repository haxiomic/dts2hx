package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:4778:5
**/
@:native('ts.UpdateBundleProject')
extern interface UpdateBundleProject<T> extends typescript.ts.InvalidatedProjectBase {
	function emit(?writeFile: typescript.ts.WriteFileCallback, ?customTransformers: typescript.ts.CustomTransformers): Null<haxe.extern.EitherType<typescript.ts.EmitResult, typescript.ts.BuildInvalidedProject<T>>>;
}

