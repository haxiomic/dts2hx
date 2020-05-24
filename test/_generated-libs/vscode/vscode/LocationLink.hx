package vscode;

/**
	Represents the connection of two locations. Provides additional metadata over normal [locations](#Location),
	including an origin range.
**/
typedef LocationLink = {
	/**
		Span of the origin of this link.
		
		Used as the underlined span for mouse definition hover. Defaults to the word range at
		the definition position.
	**/
	@:optional
	var originSelectionRange : Range;
	/**
		The target resource identifier of this link.
	**/
	var targetUri : Uri;
	/**
		The full target range of this link.
	**/
	var targetRange : Range;
	/**
		The span of this link.
	**/
	@:optional
	var targetSelectionRange : Range;
};