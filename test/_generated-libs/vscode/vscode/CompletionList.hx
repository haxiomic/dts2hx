package vscode;

/**
	Represents a collection of [completion items](#CompletionItem) to be presented
	in the editor.
**/
@:jsRequire("vscode", "CompletionList") extern class CompletionList {
	/**
		Creates a new completion list.
	**/
	function new(?items:Array<CompletionItem>, ?isIncomplete:Bool);
	/**
		This list is not complete. Further typing should result in recomputing
		this list.
	**/
	@:optional
	var isIncomplete : Bool;
	/**
		The completion items.
	**/
	var items : Array<CompletionItem>;
	static var prototype : CompletionList;
}