package vscode;

@:jsRequire("vscode", "comments") @valueModuleOnly extern class Comments {
	/**
		Creates a new [comment controller](#CommentController) instance.
	**/
	static function createCommentController(id:String, label:String):CommentController;
}