package vscode;

/**
	The MarkdownString represents human-readable text that supports formatting via the
	markdown syntax. Standard markdown is supported, also tables, but no embedded html.
	
	When created with `supportThemeIcons` then rendering of [theme icons](#ThemeIcon) via
	the `$(<name>)`-syntax is supported.
**/
@:jsRequire("vscode", "MarkdownString") extern class MarkdownString {
	/**
		Creates a new markdown string with the given value.
	**/
	function new(?value:String, ?supportThemeIcons:Bool);
	/**
		The markdown string.
	**/
	var value : String;
	/**
		Indicates that this markdown string is from a trusted source. Only *trusted*
		markdown supports links that execute commands, e.g. `[Run it](command:myCommandId)`.
	**/
	@:optional
	var isTrusted : Bool;
	/**
		Appends and escapes the given string to this markdown string.
	**/
	function appendText(value:String):MarkdownString;
	/**
		Appends the given string 'as is' to this markdown string. When [`supportThemeIcons`](#MarkdownString.supportThemeIcons) is `true`, [ThemeIcons](#ThemeIcon) in the `value` will be iconified.
	**/
	function appendMarkdown(value:String):MarkdownString;
	/**
		Appends the given string as codeblock using the provided language.
	**/
	function appendCodeblock(value:String, ?language:String):MarkdownString;
	static var prototype : MarkdownString;
}