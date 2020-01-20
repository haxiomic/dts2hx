package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:2927:5
**/

typedef TransformationContext = {
	/**
	Gets the compiler options supplied to the transformer.
	**/
	function getCompilerOptions(): typescript.ts.CompilerOptions;
	/**
	Starts a new lexical environment.
	**/
	function startLexicalEnvironment(): Void;
	/**
	Suspends the current lexical environment, usually after visiting a parameter list.
	**/
	function suspendLexicalEnvironment(): Void;
	/**
	Resumes a suspended lexical environment, usually before visiting a function body.
	**/
	function resumeLexicalEnvironment(): Void;
	/**
	Ends a lexical environment, returning any declarations.
	**/
	function endLexicalEnvironment(): Null<Array<typescript.ts.Statement>>;
	/**
	Hoists a function declaration to the containing scope.
	**/
	function hoistFunctionDeclaration(node: typescript.ts.FunctionDeclaration): Void;
	/**
	Hoists a variable declaration to the containing scope.
	**/
	function hoistVariableDeclaration(node: typescript.ts.Identifier): Void;
	/**
	Records a request for a non-scoped emit helper in the current context.
	**/
	function requestEmitHelper(helper: typescript.ts.EmitHelper): Void;
	/**
	Gets and resets the requested non-scoped emit helpers.
	**/
	function readEmitHelpers(): Null<Array<typescript.ts.EmitHelper>>;
	/**
	Enables expression substitutions in the pretty printer for the provided SyntaxKind.
	**/
	function enableSubstitution(kind: typescript.ts.SyntaxKind): Void;
	/**
	Determines whether expression substitutions are enabled for the provided node.
	**/
	function isSubstitutionEnabled(node: typescript.ts.Node): Bool;
	/**
	Hook used by transformers to substitute expressions just before they
	are emitted by the pretty printer.
	
	NOTE: Transformation hooks should only be modified during `Transformer` initialization,
	before returning the `NodeTransformer` callback.
	**/
	var onSubstituteNode: (hint: typescript.ts.EmitHint, node: typescript.ts.Node) -> typescript.ts.Node;
	/**
	Enables before/after emit notifications in the pretty printer for the provided
	SyntaxKind.
	**/
	function enableEmitNotification(kind: typescript.ts.SyntaxKind): Void;
	/**
	Determines whether before/after emit notifications should be raised in the pretty
	printer when it emits a node.
	**/
	function isEmitNotificationEnabled(node: typescript.ts.Node): Bool;
	/**
	Hook used to allow transformers to capture state before or after
	the printer emits a node.
	
	NOTE: Transformation hooks should only be modified during `Transformer` initialization,
	before returning the `NodeTransformer` callback.
	**/
	var onEmitNode: (hint: typescript.ts.EmitHint, node: typescript.ts.Node, emitCallback: (hint: typescript.ts.EmitHint, node: typescript.ts.Node) -> Void) -> Void;
}

