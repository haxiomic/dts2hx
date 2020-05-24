package vscode;

/**
	Value-object that contains additional information when
	requesting references.
**/
typedef ReferenceContext = {
	/**
		Include the declaration of the current symbol.
	**/
	var includeDeclaration : Bool;
};