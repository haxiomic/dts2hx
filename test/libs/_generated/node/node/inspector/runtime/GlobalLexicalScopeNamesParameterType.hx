package node.inspector.runtime;
extern interface GlobalLexicalScopeNamesParameterType {
	/**
		Specifies in which execution context to lookup global scope variables.
	**/
	@:optional
	var executionContextId : Null<Float>;
}