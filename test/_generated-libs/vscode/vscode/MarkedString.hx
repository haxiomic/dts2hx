package vscode;

/**
	~~MarkedString can be used to render human-readable text. It is either a markdown string
	or a code-block that provides a language and a code snippet. Note that
	markdown strings will be sanitized - that means html will be escaped.~~
**/
typedef MarkedString = ts.AnyOf3<String, MarkdownString, {
	var language : String;
	var value : String;
}>;