package vscode;

/**
	Defines how an argument should be quoted if it contains
	spaces or unsupported characters.
**/
@:jsRequire("vscode", "ShellQuoting") extern enum abstract ShellQuoting(Int) from Int to Int {
	/**
		Character escaping should be used. This for example
		uses \ on bash and ` on PowerShell.
	**/
	var Escape;
	/**
		Strong string quoting should be used. This for example
		uses " for Windows cmd and ' for bash and PowerShell.
		Strong quoting treats arguments as literal strings.
		Under PowerShell echo 'The value is $(2 * 3)' will
		print `The value is $(2 * 3)`
	**/
	var Strong;
	/**
		Weak string quoting should be used. This for example
		uses " for Windows cmd, bash and PowerShell. Weak quoting
		still performs some kind of evaluation inside the quoted
		string.  Under PowerShell echo "The value is $(2 * 3)"
		will print `The value is 6`
	**/
	var Weak;
}