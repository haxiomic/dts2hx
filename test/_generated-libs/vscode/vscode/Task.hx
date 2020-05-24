package vscode;

/**
	A task to execute
**/
@:jsRequire("vscode", "Task") extern class Task {
	/**
		Creates a new task.
	**/
	@:overload(function(taskDefinition:TaskDefinition, name:String, source:String, ?execution:ts.AnyOf2<ProcessExecution, ShellExecution>, ?problemMatchers:ts.AnyOf2<String, Array<String>>):Task { })
	function new(taskDefinition:TaskDefinition, scope:ts.AnyOf2<WorkspaceFolder, Int>, name:String, source:String, ?execution:ts.AnyOf3<ProcessExecution, ShellExecution, CustomExecution>, ?problemMatchers:ts.AnyOf2<String, Array<String>>);
	/**
		The task's definition.
	**/
	var definition : TaskDefinition;
	/**
		The task's scope.
	**/
	@:optional
	final scope : ts.AnyOf2<WorkspaceFolder, Int>;
	/**
		The task's name
	**/
	var name : String;
	/**
		The task's execution engine
	**/
	@:optional
	var execution : ts.AnyOf3<ProcessExecution, ShellExecution, CustomExecution>;
	/**
		Whether the task is a background task or not.
	**/
	var isBackground : Bool;
	/**
		A human-readable string describing the source of this shell task, e.g. 'gulp'
		or 'npm'. Supports rendering of [theme icons](#ThemeIcon) via the `$(<name>)`-syntax.
	**/
	var source : String;
	/**
		The task group this tasks belongs to. See TaskGroup
		for a predefined set of available groups.
		Defaults to undefined meaning that the task doesn't
		belong to any special group.
	**/
	@:optional
	var group : TaskGroup;
	/**
		The presentation options. Defaults to an empty literal.
	**/
	var presentationOptions : TaskPresentationOptions;
	/**
		The problem matchers attached to the task. Defaults to an empty
		array.
	**/
	var problemMatchers : Array<String>;
	/**
		Run options for the task
	**/
	var runOptions : RunOptions;
	static var prototype : Task;
}