package ts.html;
/**
	Provides information about files and allows JavaScript in a web page to access their content.
**/
@:native("File") extern class File {
	function new(fileBits:std.Array<ts.AnyOf4<String, ts.lib.IArrayBuffer, IBlob, ts.lib.ArrayBufferView>>, fileName:String, ?options:FilePropertyBag);
	final lastModified : Float;
	final name : String;
	static var prototype : IFile;
}