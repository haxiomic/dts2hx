package ts.html;
@:native("Clipboard") extern class Clipboard {
	function new();
	function readText():ts.lib.IPromise<String>;
	function writeText(data:String):ts.lib.IPromise<Void>;
	static var prototype : IClipboard;
}