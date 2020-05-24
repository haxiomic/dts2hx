package vscode;

/**
	Run options for a task.
**/
typedef RunOptions = {
	/**
		Controls whether task variables are re-evaluated on rerun.
	**/
	@:optional
	var reevaluateOnRerun : Bool;
};