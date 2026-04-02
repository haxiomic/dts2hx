package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:5585:5
**/
@:native('ts.OutliningSpanKind')
extern enum abstract OutliningSpanKind(String) from String to String {
	/**
	Single or multi-line comments
	**/
	var Comment;
	/**
	Sections marked by '// #region' and '// #endregion' comments
	**/
	var Region;
	/**
	Declarations and expressions
	**/
	var Code;
	/**
	Contiguous blocks of import declarations
	**/
	var Imports;
}

