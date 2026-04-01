package vscode;

/**
	Options to configure the behaviour of a file save dialog.
**/
typedef SaveDialogOptions = {
	/**
		The resource the dialog shows when opened.
	**/
	@:optional
	var defaultUri : Uri;
	/**
		A human-readable string for the save button.
	**/
	@:optional
	var saveLabel : String;
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