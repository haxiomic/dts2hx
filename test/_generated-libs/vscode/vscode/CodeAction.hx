package vscode;

/**
	A code action represents a change that can be performed in code, e.g. to fix a problem or
	to refactor code.
	
	A CodeAction must set either [`edit`](#CodeAction.edit) and/or a [`command`](#CodeAction.command). If both are supplied, the `edit` is applied first, then the command is executed.
**/
@:jsRequire("vscode", "CodeAction") extern class CodeAction {
	/**
		Creates a new code action.
		
		A code action must have at least a [title](#CodeAction.title) and [edits](#CodeAction.edit)
		and/or a [command](#CodeAction.command).
	**/
	function new(title:String, ?kind:CodeActionKind);
	/**
		A short, human-readable, title for this code action.
	**/
	var title : String;
	/**
		A [workspace edit](#WorkspaceEdit) this code action performs.
	**/
	@:optional
	var edit : WorkspaceEdit;
	/**
		[Diagnostics](#Diagnostic) that this code action resolves.
	**/
	@:optional
	var diagnostics : Array<Diagnostic>;
	/**
		A [command](#Command) this code action executes.
		
		If this command throws an exception, VS Code displays the exception message to users in the editor at the
		current cursor position.
	**/
	@:optional
	var command : Command;
	/**
		[Kind](#CodeActionKind) of the code action.
		
		Used to filter code actions.
	**/
	@:optional
	var kind : CodeActionKind;
	/**
		Marks this as a preferred action. Preferred actions are used by the `auto fix` command and can be targeted
		by keybindings.
		
		A quick fix should be marked preferred if it properly addresses the underlying error.
		A refactoring should be marked preferred if it is the most reasonable choice of actions to take.
	**/
	@:optional
	var isPreferred : Bool;
	/**
		Marks that the code action cannot currently be applied.
		
		- Disabled code actions are not shown in automatic [lightbulb](https://code.visualstudio.com/docs/editor/editingevolved#_code-action)
		code action menu.
		
		- Disabled actions are shown as faded out in the code action menu when the user request a more specific type
		of code action, such as refactorings.
		
		- If the user has a [keybinding](https://code.visualstudio.com/docs/editor/refactoring#_keybindings-for-code-actions)
		that auto applies a code action and only a disabled code actions are returned, VS Code will show the user an
		error message with `reason` in the editor.
	**/
	@:optional
	var disabled : {
		/**
			Human readable description of why the code action is currently disabled.
			
			This is displayed in the code actions UI.
		**/
		final reason : String;
	};
	static var prototype : CodeAction;
}