package vscode;

/**
	A collection of [comments](#Comment) representing a conversation at a particular range in a document.
**/
typedef CommentThread = {
	/**
		The uri of the document the thread has been created on.
	**/
	final uri : Uri;
	/**
		The range the comment thread is located within the document. The thread icon will be shown
		at the first line of the range.
	**/
	var range : Range;
	/**
		The ordered comments of the thread.
	**/
	var comments : haxe.ds.ReadOnlyArray<Comment>;
	/**
		Whether the thread should be collapsed or expanded when opening the document.
		Defaults to Collapsed.
	**/
	var collapsibleState : CommentThreadCollapsibleState;
	/**
		Context value of the comment thread. This can be used to contribute thread specific actions.
		For example, a comment thread is given a context value as `editable`. When contributing actions to `comments/commentThread/title`
		using `menus` extension point, you can specify context value for key `commentThread` in `when` expression like `commentThread == editable`.
		```
		   "contributes": {
		       "menus": {
		           "comments/commentThread/title": [
		               {
		                   "command": "extension.deleteCommentThread",
		                   "when": "commentThread == editable"
		               }
		           ]
		       }
		   }
		```
		This will show action `extension.deleteCommentThread` only for comment threads with `contextValue` is `editable`.
	**/
	@:optional
	var contextValue : String;
	/**
		The optional human-readable label describing the [Comment Thread](#CommentThread)
	**/
	@:optional
	var label : String;
	/**
		Dispose this comment thread.
		
		Once disposed, this comment thread will be removed from visible editors and Comment Panel when approriate.
	**/
	function dispose():Void;
};