package vscode;

/**
	Describes a rule to be evaluated when pressing Enter.
**/
typedef OnEnterRule = {
	/**
		This rule will only execute if the text before the cursor matches this regular expression.
	**/
	var beforeText : js.lib.RegExp;
	/**
		This rule will only execute if the text after the cursor matches this regular expression.
	**/
	@:optional
	var afterText : js.lib.RegExp;
	/**
		The action to execute.
	**/
	var action : EnterAction;
};