package vscode;

/**
	The evaluatable expression provider interface defines the contract between extensions and
	the debug hover. In this contract the provider returns an evaluatable expression for a given position
	in a document and VS Code evaluates this expression in the active debug session and shows the result in a debug hover.
**/
typedef EvaluatableExpressionProvider = {
	/**
		Provide an evaluatable expression for the given document and position.
		VS Code will evaluate this expression in the active debug session and will show the result in the debug hover.
		The expression can be implicitly specified by the range in the underlying document or by explicitly returning an expression.
	**/
	function provideEvaluatableExpression(document:TextDocument, position:Position, token:CancellationToken):ProviderResult<EvaluatableExpression>;
};