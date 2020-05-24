package vscode;

/**
	Represents the input box in the Source Control viewlet.
**/
typedef SourceControlInputBox = {
	/**
		Setter and getter for the contents of the input box.
	**/
	var value : String;
	/**
		A string to show as placeholder in the input box to guide the user.
	**/
	var placeholder : String;
	/**
		Controls whether the input box is visible (default is `true`).
	**/
	var visible : Bool;
};