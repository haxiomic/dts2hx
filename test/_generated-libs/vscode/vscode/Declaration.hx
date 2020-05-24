package vscode;

/**
	The declaration of a symbol representation as one or many [locations](#Location)
	or [location links](#LocationLink).
**/
typedef Declaration = ts.AnyOf3<Location, Array<Location>, Array<LocationLink>>;