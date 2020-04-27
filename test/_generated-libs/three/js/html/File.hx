package js.html;
/**
	Provides information about files and allows JavaScript in a web page to access their content.
**/
@:native("File") @tsInterface extern class File {
	function new(fileBits:std.Array<haxe.extern.EitherType<String, haxe.extern.EitherType<js.lib.ArrayBuffer, haxe.extern.EitherType<js.lib.ArrayBufferView, Blob>>>>, fileName:String, ?options:FilePropertyBag);
	final lastModified : Float;
	final name : String;
	final size : Float;
	final type : String;
	function slice(?start:Float, ?end:Float, ?contentType:String):Blob;
	static var prototype : File;
}