package ts.html;
/**
	This Canvas 2D API interface is used to declare a path that can then be used on a CanvasRenderingContext2D object. The path methods of the CanvasRenderingContext2D interface are also present on this interface, which gives you the convenience of being able to retain and replay your path whenever desired.
**/
@:native("Path2D") extern class Path2D {
	function new(?path:haxe.extern.EitherType<String, IPath2D>);
	/**
		Adds to the path the path given by the argument.
	**/
	function addPath(path:IPath2D, ?transform:DOMMatrix2DInit):Void;
	static var prototype : IPath2D;
}