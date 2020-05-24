package vscode;

/**
	A string that will be quoted depending on the used shell.
**/
typedef ShellQuotedString = {
	/**
		The actual string value.
	**/
	var value : String;
	/**
		The quoting style to use.
	**/
	var quoting : ShellQuoting;
};