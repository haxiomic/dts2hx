package ts.html;
/**
	Provides information about files and allows JavaScript in a web page to access their content.
**/
@:native("File") extern class File {
	function new(fileBits:std.Array<haxe.extern.EitherType<String, haxe.extern.EitherType<ts.lib.IArrayBuffer, haxe.extern.EitherType<IBlob, ts.lib.ArrayBufferView>>>>, fileName:String, ?options:FilePropertyBag);
	final lastModified : Float;
	final name : String;
	static var prototype : IFile;
}