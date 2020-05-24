package vscode;

/**
	The shell quoting options.
**/
typedef ShellQuotingOptions = {
	/**
		The character used to do character escaping. If a string is provided only spaces
		are escaped. If a `{ escapeChar, charsToEscape }` literal is provide all characters
		in `charsToEscape` are escaped using the `escapeChar`.
	**/
	@:optional
	var escape : ts.AnyOf2<String, {
		/**
			The escape character.
		**/
		var escapeChar : String;
		/**
			The characters to escape.
		**/
		var charsToEscape : String;
	}>;
	/**
		The character used for strong quoting. The string's length must be 1.
	**/
	@:optional
	var strong : String;
	/**
		The character used for weak quoting. The string's length must be 1.
	**/
	@:optional
	var weak : String;
};