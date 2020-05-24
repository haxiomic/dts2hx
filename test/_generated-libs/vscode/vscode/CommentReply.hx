package vscode;

/**
	Command argument for actions registered in `comments/commentThread/context`.
**/
typedef CommentReply = {
	/**
		The active [comment thread](#CommentThread)
	**/
	var thread : CommentThread;
	/**
		The value in the comment editor
	**/
	var text : String;
};