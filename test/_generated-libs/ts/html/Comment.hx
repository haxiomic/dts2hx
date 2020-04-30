package ts.html;
/**
	Textual notations within markup; although it is generally not visually shown, such comments are available to be read in the source view.
**/
@:native("Comment") extern class Comment {
	function new(?data:String);
	static var prototype : IComment;
}