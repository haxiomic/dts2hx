package vscode;

/**
	Reactions of a [comment](#Comment)
**/
typedef CommentReaction = {
	/**
		The human-readable label for the reaction
	**/
	final label : String;
	/**
		Icon for the reaction shown in UI.
	**/
	final iconPath : ts.AnyOf2<String, Uri>;
	/**
		The number of users who have reacted to this reaction
	**/
	final count : Float;
	/**
		Whether the [author](CommentAuthorInformation) of the comment has reacted to this reaction
	**/
	final authorHasReacted : Bool;
};