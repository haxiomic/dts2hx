package vscode;

/**
	A snippet string is a template which allows to insert text
	and to control the editor cursor when insertion happens.
	
	A snippet can define tab stops and placeholders with `$1`, `$2`
	and `${3:foo}`. `$0` defines the final tab stop, it defaults to
	the end of the snippet. Variables are defined with `$name` and
	`${name:default value}`. The full snippet syntax is documented
	[here](https://code.visualstudio.com/docs/editor/userdefinedsnippets#_creating-your-own-snippets).
**/
@:jsRequire("vscode", "SnippetString") extern class SnippetString {
	function new(?value:String);
	/**
		The snippet string.
	**/
	var value : String;
	/**
		Builder-function that appends the given string to
		the [`value`](#SnippetString.value) of this snippet string.
	**/
	function appendText(string:String):SnippetString;
	/**
		Builder-function that appends a tabstop (`$1`, `$2` etc) to
		the [`value`](#SnippetString.value) of this snippet string.
	**/
	function appendTabstop(?number:Float):SnippetString;
	/**
		Builder-function that appends a placeholder (`${1:value}`) to
		the [`value`](#SnippetString.value) of this snippet string.
	**/
	function appendPlaceholder(value:ts.AnyOf2<String, (snippet:SnippetString) -> Dynamic>, ?number:Float):SnippetString;
	/**
		Builder-function that appends a choice (`${1|a,b,c}`) to
		the [`value`](#SnippetString.value) of this snippet string.
	**/
	function appendChoice(values:Array<String>, ?number:Float):SnippetString;
	/**
		Builder-function that appends a variable (`${VAR}`) to
		the [`value`](#SnippetString.value) of this snippet string.
	**/
	function appendVariable(name:String, defaultValue:ts.AnyOf2<String, (snippet:SnippetString) -> Dynamic>):SnippetString;
	static var prototype : SnippetString;
}