package vscode;

/**
	How a [completion provider](#CompletionItemProvider) was triggered
**/
@:jsRequire("vscode", "CompletionTriggerKind") extern enum abstract CompletionTriggerKind(Int) from Int to Int {
	/**
		Completion was triggered normally.
	**/
	var Invoke;
	/**
		Completion was triggered by a trigger character.
	**/
	var TriggerCharacter;
	/**
		Completion was re-triggered as current completion list is incomplete
	**/
	var TriggerForIncompleteCompletions;
}