package vscode;

/**
	A relative pattern is a helper to construct glob patterns that are matched
	relatively to a base path. The base path can either be an absolute file path
	or a [workspace folder](#WorkspaceFolder).
**/
@:jsRequire("vscode", "RelativePattern") extern class RelativePattern {
	/**
		Creates a new relative pattern object with a base path and pattern to match. This pattern
		will be matched on file paths relative to the base path.
	**/
	function new(base:ts.AnyOf2<String, WorkspaceFolder>, pattern:String);
	/**
		A base file path to which this pattern will be matched against relatively.
	**/
	var base : String;
	/**
		A file glob pattern like `*.{ts,js}` that will be matched on file paths
		relative to the base path.
		
		Example: Given a base of `/home/work/folder` and a file path of `/home/work/folder/index.js`,
		the file glob pattern will match on `index.js`.
	**/
	var pattern : String;
	static var prototype : RelativePattern;
}