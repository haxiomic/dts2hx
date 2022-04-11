package vscode;

/**
	Options to configure the behaviour of a file open dialog.
	
	* Note 1: A dialog can select files, folders, or both. This is not true for Windows
	which enforces to open either files or folder, but *not both*.
	* Note 2: Explicitly setting `canSelectFiles` and `canSelectFolders` to `false` is futile
	and the editor then silently adjusts the options to select files.
**/
typedef OpenDialogOptions = {
	/**
		The resource the dialog shows when opened.
	**/
	@:optional
	var defaultUri : Uri;
	/**
		A human-readable string for the open button.
	**/
	@:optional
	var openLabel : String;
	/**
		Allow to select files, defaults to `true`.
	**/
	@:optional
	var canSelectFiles : Bool;
	/**
		Allow to select folders, defaults to `false`.
	**/
	@:optional
	var canSelectFolders : Bool;
	/**
		Allow to select many files or folders.
	**/
	@:optional
	var canSelectMany : Bool;
	/**
		A set of file filters that are used by the dialog. Each entry is a human-readable label,
		like "TypeScript", and an array of extensions, e.g.
		```ts
		{
		     'Images': ['png', 'jpg']
		     'TypeScript': ['ts', 'tsx']
		}
		```
	**/
	@:optional
	var filters : haxe.DynamicAccess<Array<String>>;
};