package vscode;

/**
	A file system watcher notifies about changes to files and folders
	on disk or from other [FileSystemProviders](#FileSystemProvider).
	
	To get an instance of a `FileSystemWatcher` use
	[createFileSystemWatcher](#workspace.createFileSystemWatcher).
**/
typedef FileSystemWatcher = {
	/**
		true if this file system watcher has been created such that
		it ignores creation file system events.
	**/
	var ignoreCreateEvents : Bool;
	/**
		true if this file system watcher has been created such that
		it ignores change file system events.
	**/
	var ignoreChangeEvents : Bool;
	/**
		true if this file system watcher has been created such that
		it ignores delete file system events.
	**/
	var ignoreDeleteEvents : Bool;
	/**
		An event which fires on file/folder creation.
	**/
	dynamic function onDidCreate(listener:(e:Uri) -> Dynamic, ?thisArgs:Dynamic, ?disposables:Array<Disposable>):Disposable;
	/**
		An event which fires on file/folder change.
	**/
	dynamic function onDidChange(listener:(e:Uri) -> Dynamic, ?thisArgs:Dynamic, ?disposables:Array<Disposable>):Disposable;
	/**
		An event which fires on file/folder deletion.
	**/
	dynamic function onDidDelete(listener:(e:Uri) -> Dynamic, ?thisArgs:Dynamic, ?disposables:Array<Disposable>):Disposable;
	/**
		Dispose this object.
	**/
	function dispose():Dynamic;
};