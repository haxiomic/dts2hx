package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:2568:5
**/

typedef ProjectReference = {
	/**
	A normalized path on disk
	**/
	var path: String;
	/**
	The path as the user originally wrote it
	**/
	@:optional
	var originalPath: String;
	/**
	True if the output of this reference should be prepended to the output of this project. Only valid for --outFile compilations
	**/
	@:optional
	var prepend: Bool;
	/**
	True if it is intended that this reference form a circularity
	**/
	@:optional
	var circular: Bool;
}

