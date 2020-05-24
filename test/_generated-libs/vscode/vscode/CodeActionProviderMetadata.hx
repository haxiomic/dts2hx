package vscode;

/**
	Metadata about the type of code actions that a [CodeActionProvider](#CodeActionProvider) providers.
**/
typedef CodeActionProviderMetadata = {
	/**
		List of [CodeActionKinds](#CodeActionKind) that a [CodeActionProvider](#CodeActionProvider) may return.
		
		This list is used to determine if a given `CodeActionProvider` should be invoked or not.
		To avoid unnecessary computation, every `CodeActionProvider` should list use `providedCodeActionKinds`. The
		list of kinds may either be generic, such as `[CodeActionKind.Refactor]`, or list out every kind provided,
		such as `[CodeActionKind.Refactor.Extract.append('function'), CodeActionKind.Refactor.Extract.append('constant'), ...]`.
	**/
	@:optional
	final providedCodeActionKinds : haxe.ds.ReadOnlyArray<CodeActionKind>;
};