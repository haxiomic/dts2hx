package vscode;

/**
	Kind of a code action.
	
	Kinds are a hierarchical list of identifiers separated by `.`, e.g. `"refactor.extract.function"`.
	
	Code action kinds are used by VS Code for UI elements such as the refactoring context menu. Users
	can also trigger code actions with a specific kind with the `editor.action.codeAction` command.
**/
@:jsRequire("vscode", "CodeActionKind") extern class CodeActionKind {
	private function new(value:String);
	/**
		String value of the kind, e.g. `"refactor.extract.function"`.
	**/
	final value : String;
	/**
		Create a new kind by appending a more specific selector to the current kind.
		
		Does not modify the current kind.
	**/
	function append(parts:String):CodeActionKind;
	/**
		Checks if this code action kind intersects `other`.
		
		The kind `"refactor.extract"` for example intersects `refactor`, `"refactor.extract"` and ``"refactor.extract.function"`,
		but not `"unicorn.refactor.extract"`, or `"refactor.extractAll"`.
	**/
	function intersects(other:CodeActionKind):Bool;
	/**
		Checks if `other` is a sub-kind of this `CodeActionKind`.
		
		The kind `"refactor.extract"` for example contains `"refactor.extract"` and ``"refactor.extract.function"`,
		but not `"unicorn.refactor.extract"`, or `"refactor.extractAll"` or `refactor`.
	**/
	function contains(other:CodeActionKind):Bool;
	static var prototype : CodeActionKind;
	/**
		Empty kind.
	**/
	static final Empty : CodeActionKind;
	/**
		Base kind for quickfix actions: `quickfix`.
		
		Quick fix actions address a problem in the code and are shown in the normal code action context menu.
	**/
	static final QuickFix : CodeActionKind;
	/**
		Base kind for refactoring actions: `refactor`
		
		Refactoring actions are shown in the refactoring context menu.
	**/
	static final Refactor : CodeActionKind;
	/**
		Base kind for refactoring extraction actions: `refactor.extract`
		
		Example extract actions:
		
		- Extract method
		- Extract function
		- Extract variable
		- Extract interface from class
		- ...
	**/
	static final RefactorExtract : CodeActionKind;
	/**
		Base kind for refactoring inline actions: `refactor.inline`
		
		Example inline actions:
		
		- Inline function
		- Inline variable
		- Inline constant
		- ...
	**/
	static final RefactorInline : CodeActionKind;
	/**
		Base kind for refactoring rewrite actions: `refactor.rewrite`
		
		Example rewrite actions:
		
		- Convert JavaScript function to class
		- Add or remove parameter
		- Encapsulate field
		- Make method static
		- Move method to base class
		- ...
	**/
	static final RefactorRewrite : CodeActionKind;
	/**
		Base kind for source actions: `source`
		
		Source code actions apply to the entire file. They must be explicitly requested and will not show in the
		normal [lightbulb](https://code.visualstudio.com/docs/editor/editingevolved#_code-action) menu. Source actions
		can be run on save using `editor.codeActionsOnSave` and are also shown in the `source` context menu.
	**/
	static final Source : CodeActionKind;
	/**
		Base kind for an organize imports source action: `source.organizeImports`.
	**/
	static final SourceOrganizeImports : CodeActionKind;
	/**
		Base kind for auto-fix source actions: `source.fixAll`.
		
		Fix all actions automatically fix errors that have a clear fix that do not require user input.
		They should not suppress errors or perform unsafe fixes such as generating new types or classes.
	**/
	static final SourceFixAll : CodeActionKind;
}