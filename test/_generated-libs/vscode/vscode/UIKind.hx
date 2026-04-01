package vscode;

/**
	Possible kinds of UI that can use extensions.
**/
@:jsRequire("vscode", "UIKind") extern enum abstract UIKind(Int) from Int to Int {
	/**
		Extensions are accessed from a desktop application.
	**/
	var Desktop;
	/**
		Extensions are accessed from a web browser.
	**/
	var Web;
}