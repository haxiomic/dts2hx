package vscode;

/**
	A document link is a range in a text document that links to an internal or external resource, like another
	text document or a web site.
**/
@:jsRequire("vscode", "DocumentLink") extern class DocumentLink {
	/**
		Creates a new document link.
	**/
	function new(range:Range, ?target:Uri);
	/**
		The range this link applies to.
	**/
	var range : Range;
	/**
		The uri this link points to.
	**/
	@:optional
	var target : Uri;
	/**
		The tooltip text when you hover over this link.
		
		If a tooltip is provided, is will be displayed in a string that includes instructions on how to
		trigger the link, such as `{0} (ctrl + click)`. The specific instructions vary depending on OS,
		user settings, and localization.
	**/
	@:optional
	var tooltip : String;
	static var prototype : DocumentLink;
}