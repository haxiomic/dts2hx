package vscode;

/**
	An event that is fired when files are going to be created.
	
	To make modifications to the workspace before the files are created,
	call the [`waitUntil](#FileWillCreateEvent.waitUntil)-function with a
	thenable that resolves to a [workspace edit](#WorkspaceEdit).
**/
typedef FileWillCreateEvent = {
	/**
		The files that are going to be created.
	**/
	final files : haxe.ds.ReadOnlyArray<Uri>;
	/**
		Allows to pause the event and to apply a [workspace edit](#WorkspaceEdit).
		
		*Note:* This function can only be called during event dispatch and not
		in an asynchronous manner:
		
		```ts
		workspace.onWillCreateFiles(event => {
		     // async, will *throw* an error
		     setTimeout(() => event.waitUntil(promise));
		
		     // sync, OK
		     event.waitUntil(promise);
		})
		```
		
		Allows to pause the event until the provided thenable resolves.
		
		*Note:* This function can only be called during event dispatch.
	**/
	@:overload(function(thenable:global.Thenable<Dynamic>):Void { })
	function waitUntil(thenable:global.Thenable<WorkspaceEdit>):Void;
};