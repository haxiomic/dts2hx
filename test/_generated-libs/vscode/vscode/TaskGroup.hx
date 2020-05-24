package vscode;

/**
	A grouping for tasks. The editor by default supports the
	'Clean', 'Build', 'RebuildAll' and 'Test' group.
**/
@:jsRequire("vscode", "TaskGroup") extern class TaskGroup {
	private function new(id:String, label:String);
	static var prototype : TaskGroup;
	/**
		The clean task group;
	**/
	static var Clean : TaskGroup;
	/**
		The build task group;
	**/
	static var Build : TaskGroup;
	/**
		The rebuild all task group;
	**/
	static var Rebuild : TaskGroup;
	/**
		The test all task group;
	**/
	static var Test : TaskGroup;
}