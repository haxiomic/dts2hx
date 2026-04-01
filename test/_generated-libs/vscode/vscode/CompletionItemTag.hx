package vscode;

/**
	Completion item tags are extra annotations that tweak the rendering of a completion
	item.
**/
@:jsRequire("vscode", "CompletionItemTag") extern enum abstract CompletionItemTag(Int) from Int to Int {
	/**
		Render a completion as obsolete, usually using a strike-out.
	**/
	var Deprecated;
}