package js.html;
/**
	Provides information about files and allows JavaScript in a web page to access their content.
**/
@:native("File") extern class File {
	function new(fileBits:std.Array<haxe.extern.EitherType<String, haxe.extern.EitherType<js.lib.IArrayBuffer, haxe.extern.EitherType<js.lib.ArrayBufferView, IBlob>>>>, fileName:String, ?options:FilePropertyBag);
	final lastModified : Float;
	final name : String;
	final size : Float;
	final type : String;
	function slice(?start:Float, ?end:Float, ?contentType:String):IBlob;
	static var prototype : IFile;
}