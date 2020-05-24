package vscode;

/**
	A workspace edit is a collection of textual and files changes for
	multiple resources and documents.
	
	Use the [applyEdit](#workspace.applyEdit)-function to apply a workspace edit.
**/
@:jsRequire("vscode", "WorkspaceEdit") extern class WorkspaceEdit {
	function new();
	/**
		The number of affected resources of textual or resource changes.
	**/
	final size : Float;
	/**
		Replace the given range with given text for the given resource.
	**/
	function replace(uri:Uri, range:Range, newText:String, ?metadata:WorkspaceEditEntryMetadata):Void;
	/**
		Insert the given text at the given position.
	**/
	function insert(uri:Uri, position:Position, newText:String, ?metadata:WorkspaceEditEntryMetadata):Void;
	/**
		Delete the text at the given range.
	**/
	function delete(uri:Uri, range:Range, ?metadata:WorkspaceEditEntryMetadata):Void;
	/**
		Check if a text edit for a resource exists.
	**/
	function has(uri:Uri):Bool;
	/**
		Set (and replace) text edits for a resource.
	**/
	function set(uri:Uri, edits:Array<TextEdit>):Void;
	/**
		Get the text edits for a resource.
	**/
	function get(uri:Uri):Array<TextEdit>;
	/**
		Create a regular file.
	**/
	function createFile(uri:Uri, ?options:{ @:optional var overwrite : Bool; @:optional var ignoreIfExists : Bool; }, ?metadata:WorkspaceEditEntryMetadata):Void;
	/**
		Delete a file or folder.
	**/
	function deleteFile(uri:Uri, ?options:{ @:optional var recursive : Bool; @:optional var ignoreIfNotExists : Bool; }, ?metadata:WorkspaceEditEntryMetadata):Void;
	/**
		Rename a file or folder.
	**/
	function renameFile(oldUri:Uri, newUri:Uri, ?options:{ @:optional var overwrite : Bool; @:optional var ignoreIfExists : Bool; }, ?metadata:WorkspaceEditEntryMetadata):Void;
	/**
		Get all text edits grouped by resource.
	**/
	function entries():Array<ts.Tuple2<Uri, Array<TextEdit>>>;
	static var prototype : WorkspaceEdit;
}