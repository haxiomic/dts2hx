package vscode;

/**
	A comment controller is able to provide [comments](#CommentThread) support to the editor and
	provide users various ways to interact with comments.
**/
typedef CommentController = {
	/**
		The id of this comment controller.
	**/
	final id : String;
	/**
		The human-readable label of this comment controller.
	**/
	final label : String;
	/**
		Optional commenting range provider. Provide a list [ranges](#Range) which support commenting to any given resource uri.
		
		If not provided, users can leave comments in any document opened in the editor.
	**/
	@:optional
	var commentingRangeProvider : CommentingRangeProvider;
	/**
		Create a [comment thread](#CommentThread). The comment thread will be displayed in visible text editors (if the resource matches)
		and Comments Panel once created.
	**/
	function createCommentThread(uri:Uri, range:Range, comments:Array<Comment>):CommentThread;
	/**
		Optional reaction handler for creating and deleting reactions on a [comment](#Comment).
	**/
	@:optional
	dynamic function reactionHandler(comment:Comment, reaction:CommentReaction):js.lib.Promise<ts.Undefined>;
	/**
		Dispose this comment controller.
		
		Once disposed, all [comment threads](#CommentThread) created by this comment controller will also be removed from the editor
		and Comments Panel.
	**/
	function dispose():Void;
};