package vscode;

/**
	A diagnostics collection is a container that manages a set of
	[diagnostics](#Diagnostic). Diagnostics are always scopes to a
	diagnostics collection and a resource.
	
	To get an instance of a `DiagnosticCollection` use
	[createDiagnosticCollection](#languages.createDiagnosticCollection).
**/
typedef DiagnosticCollection = {
	/**
		The name of this diagnostic collection, for instance `typescript`. Every diagnostic
		from this collection will be associated with this name. Also, the task framework uses this
		name when defining [problem matchers](https://code.visualstudio.com/docs/editor/tasks#_defining-a-problem-matcher).
	**/
	final name : String;
	/**
		Assign diagnostics for given resource. Will replace
		existing diagnostics for that resource.
		
		Replace all entries in this collection.
		
		Diagnostics of multiple tuples of the same uri will be merged, e.g
		`[[file1, [d1]], [file1, [d2]]]` is equivalent to `[[file1, [d1, d2]]]`.
		If a diagnostics item is `undefined` as in `[file1, undefined]`
		all previous but not subsequent diagnostics are removed.
	**/
	@:overload(function(entries:haxe.ds.ReadOnlyArray<ts.Tuple2<Uri, Null<haxe.ds.ReadOnlyArray<Diagnostic>>>>):Void { })
	function set(uri:Uri, diagnostics:Null<haxe.ds.ReadOnlyArray<Diagnostic>>):Void;
	/**
		Remove all diagnostics from this collection that belong
		to the provided `uri`. The same as `#set(uri, undefined)`.
	**/
	function delete(uri:Uri):Void;
	/**
		Remove all diagnostics from this collection. The same
		as calling `#set(undefined)`;
	**/
	function clear():Void;
	/**
		Iterate over each entry in this collection.
	**/
	function forEach(callback:(uri:Uri, diagnostics:haxe.ds.ReadOnlyArray<Diagnostic>, collection:DiagnosticCollection) -> Dynamic, ?thisArg:Dynamic):Void;
	/**
		Get the diagnostics for a given resource. *Note* that you cannot
		modify the diagnostics-array returned from this call.
	**/
	function get(uri:Uri):Null<haxe.ds.ReadOnlyArray<Diagnostic>>;
	/**
		Check if this collection contains diagnostics for a
		given resource.
	**/
	function has(uri:Uri):Bool;
	/**
		Dispose and free associated resources. Calls
		[clear](#DiagnosticCollection.clear).
	**/
	function dispose():Void;
};