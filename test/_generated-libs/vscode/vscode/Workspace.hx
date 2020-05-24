package vscode;

/**
	Namespace for dealing with the current workspace. A workspace is the representation
	of the folder that has been opened. There is no workspace when just a file but not a
	folder has been opened.
	
	The workspace offers support for [listening](#workspace.createFileSystemWatcher) to fs
	events and for [finding](#workspace.findFiles) files. Both perform well and run _outside_
	the editor-process so that they should be always used instead of nodejs-equivalents.
**/
@:jsRequire("vscode", "workspace") @valueModuleOnly extern class Workspace {
	/**
		Returns the [workspace folder](#WorkspaceFolder) that contains a given uri.
		* returns `undefined` when the given uri doesn't match any workspace folder
		* returns the *input* when the given uri is a workspace folder itself
	**/
	static function getWorkspaceFolder(uri:Uri):Null<WorkspaceFolder>;
	/**
		Returns a path that is relative to the workspace folder or folders.
		
		When there are no [workspace folders](#workspace.workspaceFolders) or when the path
		is not contained in them, the input is returned.
	**/
	static function asRelativePath(pathOrUri:ts.AnyOf2<String, Uri>, ?includeWorkspaceFolder:Bool):String;
	/**
		This method replaces `deleteCount` [workspace folders](#workspace.workspaceFolders) starting at index `start`
		by an optional set of `workspaceFoldersToAdd` on the `vscode.workspace.workspaceFolders` array. This "splice"
		behavior can be used to add, remove and change workspace folders in a single operation.
		
		If the first workspace folder is added, removed or changed, the currently executing extensions (including the
		one that called this method) will be terminated and restarted so that the (deprecated) `rootPath` property is
		updated to point to the first workspace folder.
		
		Use the [`onDidChangeWorkspaceFolders()`](#onDidChangeWorkspaceFolders) event to get notified when the
		workspace folders have been updated.
		
		**Example:** adding a new workspace folder at the end of workspace folders
		```typescript
		workspace.updateWorkspaceFolders(workspace.workspaceFolders ? workspace.workspaceFolders.length : 0, null, { uri: ...});
		```
		
		**Example:** removing the first workspace folder
		```typescript
		workspace.updateWorkspaceFolders(0, 1);
		```
		
		**Example:** replacing an existing workspace folder with a new one
		```typescript
		workspace.updateWorkspaceFolders(0, 1, { uri: ...});
		```
		
		It is valid to remove an existing workspace folder and add it again with a different name
		to rename that folder.
		
		**Note:** it is not valid to call [updateWorkspaceFolders()](#updateWorkspaceFolders) multiple times
		without waiting for the [`onDidChangeWorkspaceFolders()`](#onDidChangeWorkspaceFolders) to fire.
	**/
	static function updateWorkspaceFolders(start:Float, deleteCount:Null<Float>, workspaceFoldersToAdd:haxe.extern.Rest<{ var uri : Uri; @:optional var name : String; }>):Bool;
	/**
		Creates a file system watcher.
		
		A glob pattern that filters the file events on their absolute path must be provided. Optionally,
		flags to ignore certain kinds of events can be provided. To stop listening to events the watcher must be disposed.
		
		*Note* that only files within the current [workspace folders](#workspace.workspaceFolders) can be watched.
	**/
	static function createFileSystemWatcher(globPattern:GlobPattern, ?ignoreCreateEvents:Bool, ?ignoreChangeEvents:Bool, ?ignoreDeleteEvents:Bool):FileSystemWatcher;
	/**
		Find files across all [workspace folders](#workspace.workspaceFolders) in the workspace.
	**/
	static function findFiles(include:GlobPattern, ?exclude:GlobPattern, ?maxResults:Float, ?token:CancellationToken):global.Thenable<Array<Uri>>;
	/**
		Save all dirty files.
	**/
	static function saveAll(?includeUntitled:Bool):global.Thenable<Bool>;
	/**
		Make changes to one or many resources or create, delete, and rename resources as defined by the given
		[workspace edit](#WorkspaceEdit).
		
		All changes of a workspace edit are applied in the same order in which they have been added. If
		multiple textual inserts are made at the same position, these strings appear in the resulting text
		in the order the 'inserts' were made, unless that are interleaved with resource edits. Invalid sequences
		like 'delete file a' -> 'insert text in file a' cause failure of the operation.
		
		When applying a workspace edit that consists only of text edits an 'all-or-nothing'-strategy is used.
		A workspace edit with resource creations or deletions aborts the operation, e.g. consecutive edits will
		not be attempted, when a single edit fails.
	**/
	static function applyEdit(edit:WorkspaceEdit):global.Thenable<Bool>;
	/**
		Opens a document. Will return early if this document is already open. Otherwise
		the document is loaded and the [didOpen](#workspace.onDidOpenTextDocument)-event fires.
		
		The document is denoted by an [uri](#Uri). Depending on the [scheme](#Uri.scheme) the
		following rules apply:
		* `file`-scheme: Open a file on disk, will be rejected if the file does not exist or cannot be loaded.
		* `untitled`-scheme: A new file that should be saved on disk, e.g. `untitled:c:\frodo\new.js`. The language
		will be derived from the file name.
		* For all other schemes contributed [text document content providers](#TextDocumentContentProvider) and
		[file system providers](#FileSystemProvider) are consulted.
		
		*Note* that the lifecycle of the returned document is owned by the editor and not by the extension. That means an
		[`onDidClose`](#workspace.onDidCloseTextDocument)-event can occur at any time after opening it.
		
		A short-hand for `openTextDocument(Uri.file(fileName))`.
		
		Opens an untitled text document. The editor will prompt the user for a file
		path when the document is to be saved. The `options` parameter allows to
		specify the *language* and/or the *content* of the document.
	**/
	@:overload(function(fileName:String):global.Thenable<TextDocument> { })
	@:overload(function(?options:{ @:optional var language : String; @:optional var content : String; }):global.Thenable<TextDocument> { })
	static function openTextDocument(uri:Uri):global.Thenable<TextDocument>;
	/**
		Register a text document content provider.
		
		Only one provider can be registered per scheme.
	**/
	static function registerTextDocumentContentProvider(scheme:String, provider:TextDocumentContentProvider):Disposable;
	/**
		Get a workspace configuration object.
		
		When a section-identifier is provided only that part of the configuration
		is returned. Dots in the section-identifier are interpreted as child-access,
		like `{ myExt: { setting: { doIt: true }}}` and `getConfiguration('myExt.setting').get('doIt') === true`.
		
		When a scope is provided configuraiton confined to that scope is returned. Scope can be a resource or a language identifier or both.
	**/
	static function getConfiguration(?section:String, ?scope:ConfigurationScope):WorkspaceConfiguration;
	/**
		~~Register a task provider.~~
	**/
	static function registerTaskProvider(type:String, provider:TaskProvider):Disposable;
	/**
		Register a filesystem provider for a given scheme, e.g. `ftp`.
		
		There can only be one provider per scheme and an error is being thrown when a scheme
		has been claimed by another provider or when it is reserved.
	**/
	static function registerFileSystemProvider(scheme:String, provider:FileSystemProvider, ?options:{ @:optional final isCaseSensitive : Bool; @:optional final isReadonly : Bool; }):Disposable;
	/**
		A [file system](#FileSystem) instance that allows to interact with local and remote
		files, e.g. `vscode.workspace.fs.readDirectory(someUri)` allows to retrieve all entries
		of a directory or `vscode.workspace.fs.stat(anotherUri)` returns the meta data for a
		file.
	**/
	static final fs : FileSystem;
	/**
		~~The folder that is open in the editor. `undefined` when no folder
		has been opened.~~
	**/
	static final rootPath : Null<String>;
	/**
		List of workspace folders or `undefined` when no folder is open.
		*Note* that the first entry corresponds to the value of `rootPath`.
	**/
	static final workspaceFolders : Null<haxe.ds.ReadOnlyArray<WorkspaceFolder>>;
	/**
		The name of the workspace. `undefined` when no folder
		has been opened.
	**/
	static final name : Null<String>;
	/**
		The location of the workspace file, for example:
		
		`file:///Users/name/Development/myProject.code-workspace`
		
		or
		
		`untitled:1555503116870`
		
		for a workspace that is untitled and not yet saved.
		
		Depending on the workspace that is opened, the value will be:
		  * `undefined` when no workspace or  a single folder is opened
		  * the path of the workspace file as `Uri` otherwise. if the workspace
		is untitled, the returned URI will use the `untitled:` scheme
		
		The location can e.g. be used with the `vscode.openFolder` command to
		open the workspace again after it has been closed.
		
		**Example:**
		```typescript
		vscode.commands.executeCommand('vscode.openFolder', uriOfWorkspace);
		```
		
		**Note:** it is not advised to use `workspace.workspaceFile` to write
		configuration data into the file. You can use `workspace.getConfiguration().update()`
		for that purpose which will work both when a single folder is opened as
		well as an untitled or saved workspace.
	**/
	static final workspaceFile : Null<Uri>;
	/**
		An event that is emitted when a workspace folder is added or removed.
	**/
	static function onDidChangeWorkspaceFolders(listener:(e:WorkspaceFoldersChangeEvent) -> Dynamic, ?thisArgs:Dynamic, ?disposables:Array<Disposable>):Disposable;
	/**
		All text documents currently known to the system.
	**/
	static final textDocuments : haxe.ds.ReadOnlyArray<TextDocument>;
	/**
		An event that is emitted when a [text document](#TextDocument) is opened or when the language id
		of a text document [has been changed](#languages.setTextDocumentLanguage).
		
		To add an event listener when a visible text document is opened, use the [TextEditor](#TextEditor) events in the
		[window](#window) namespace. Note that:
		
		- The event is emitted before the [document](#TextDocument) is updated in the
		[active text editor](#window.activeTextEditor)
		- When a [text document](#TextDocument) is already open (e.g.: open in another [visible text editor](#window.visibleTextEditors)) this event is not emitted
	**/
	static function onDidOpenTextDocument(listener:(e:TextDocument) -> Dynamic, ?thisArgs:Dynamic, ?disposables:Array<Disposable>):Disposable;
	/**
		An event that is emitted when a [text document](#TextDocument) is disposed or when the language id
		of a text document [has been changed](#languages.setTextDocumentLanguage).
		
		To add an event listener when a visible text document is closed, use the [TextEditor](#TextEditor) events in the
		[window](#window) namespace. Note that this event is not emitted when a [TextEditor](#TextEditor) is closed
		but the document remains open in another [visible text editor](#window.visibleTextEditors).
	**/
	static function onDidCloseTextDocument(listener:(e:TextDocument) -> Dynamic, ?thisArgs:Dynamic, ?disposables:Array<Disposable>):Disposable;
	/**
		An event that is emitted when a [text document](#TextDocument) is changed. This usually happens
		when the [contents](#TextDocument.getText) changes but also when other things like the
		[dirty](#TextDocument.isDirty)-state changes.
	**/
	static function onDidChangeTextDocument(listener:(e:TextDocumentChangeEvent) -> Dynamic, ?thisArgs:Dynamic, ?disposables:Array<Disposable>):Disposable;
	/**
		An event that is emitted when a [text document](#TextDocument) will be saved to disk.
		
		*Note 1:* Subscribers can delay saving by registering asynchronous work. For the sake of data integrity the editor
		might save without firing this event. For instance when shutting down with dirty files.
		
		*Note 2:* Subscribers are called sequentially and they can [delay](#TextDocumentWillSaveEvent.waitUntil) saving
		by registering asynchronous work. Protection against misbehaving listeners is implemented as such:
		  * there is an overall time budget that all listeners share and if that is exhausted no further listener is called
		  * listeners that take a long time or produce errors frequently will not be called anymore
		
		The current thresholds are 1.5 seconds as overall time budget and a listener can misbehave 3 times before being ignored.
	**/
	static function onWillSaveTextDocument(listener:(e:TextDocumentWillSaveEvent) -> Dynamic, ?thisArgs:Dynamic, ?disposables:Array<Disposable>):Disposable;
	/**
		An event that is emitted when a [text document](#TextDocument) is saved to disk.
	**/
	static function onDidSaveTextDocument(listener:(e:TextDocument) -> Dynamic, ?thisArgs:Dynamic, ?disposables:Array<Disposable>):Disposable;
	/**
		An event that is emitted when files are being created.
		
		*Note 1:* This event is triggered by user gestures, like creating a file from the
		explorer, or from the [`workspace.applyEdit`](#workspace.applyEdit)-api. This event is *not* fired when
		files change on disk, e.g triggered by another application, or when using the
		[`workspace.fs`](#FileSystem)-api.
		
		*Note 2:* When this event is fired, edits to files thare are being created cannot be applied.
	**/
	static function onWillCreateFiles(listener:(e:FileWillCreateEvent) -> Dynamic, ?thisArgs:Dynamic, ?disposables:Array<Disposable>):Disposable;
	/**
		An event that is emitted when files have been created.
		
		*Note:* This event is triggered by user gestures, like creating a file from the
		explorer, or from the [`workspace.applyEdit`](#workspace.applyEdit)-api, but this event is *not* fired when
		files change on disk, e.g triggered by another application, or when using the
		[`workspace.fs`](#FileSystem)-api.
	**/
	static function onDidCreateFiles(listener:(e:FileCreateEvent) -> Dynamic, ?thisArgs:Dynamic, ?disposables:Array<Disposable>):Disposable;
	/**
		An event that is emitted when files are being deleted.
		
		*Note 1:* This event is triggered by user gestures, like deleting a file from the
		explorer, or from the [`workspace.applyEdit`](#workspace.applyEdit)-api, but this event is *not* fired when
		files change on disk, e.g triggered by another application, or when using the
		[`workspace.fs`](#FileSystem)-api.
		
		*Note 2:* When deleting a folder with children only one event is fired.
	**/
	static function onWillDeleteFiles(listener:(e:FileWillDeleteEvent) -> Dynamic, ?thisArgs:Dynamic, ?disposables:Array<Disposable>):Disposable;
	/**
		An event that is emitted when files have been deleted.
		
		*Note 1:* This event is triggered by user gestures, like deleting a file from the
		explorer, or from the [`workspace.applyEdit`](#workspace.applyEdit)-api, but this event is *not* fired when
		files change on disk, e.g triggered by another application, or when using the
		[`workspace.fs`](#FileSystem)-api.
		
		*Note 2:* When deleting a folder with children only one event is fired.
	**/
	static function onDidDeleteFiles(listener:(e:FileDeleteEvent) -> Dynamic, ?thisArgs:Dynamic, ?disposables:Array<Disposable>):Disposable;
	/**
		An event that is emitted when files are being renamed.
		
		*Note 1:* This event is triggered by user gestures, like renaming a file from the
		explorer, and from the [`workspace.applyEdit`](#workspace.applyEdit)-api, but this event is *not* fired when
		files change on disk, e.g triggered by another application, or when using the
		[`workspace.fs`](#FileSystem)-api.
		
		*Note 2:* When renaming a folder with children only one event is fired.
	**/
	static function onWillRenameFiles(listener:(e:FileWillRenameEvent) -> Dynamic, ?thisArgs:Dynamic, ?disposables:Array<Disposable>):Disposable;
	/**
		An event that is emitted when files have been renamed.
		
		*Note 1:* This event is triggered by user gestures, like renaming a file from the
		explorer, and from the [`workspace.applyEdit`](#workspace.applyEdit)-api, but this event is *not* fired when
		files change on disk, e.g triggered by another application, or when using the
		[`workspace.fs`](#FileSystem)-api.
		
		*Note 2:* When renaming a folder with children only one event is fired.
	**/
	static function onDidRenameFiles(listener:(e:FileRenameEvent) -> Dynamic, ?thisArgs:Dynamic, ?disposables:Array<Disposable>):Disposable;
	/**
		An event that is emitted when the [configuration](#WorkspaceConfiguration) changed.
	**/
	static function onDidChangeConfiguration(listener:(e:ConfigurationChangeEvent) -> Dynamic, ?thisArgs:Dynamic, ?disposables:Array<Disposable>):Disposable;
}