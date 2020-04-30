package ts.html;
/**
	The CharacterData abstract interface represents a Node object that contains characters. This is an abstract interface, meaning there aren't any object of type CharacterData: it is implemented by other interfaces, like Text, Comment, or ProcessingInstruction which aren't abstract.
**/
@:native("CharacterData") extern class CharacterData {
	function new();
	var data : String;
	final length : Float;
	function appendData(data:String):Void;
	function deleteData(offset:Float, count:Float):Void;
	function insertData(offset:Float, data:String):Void;
	function replaceData(offset:Float, count:Float, data:String):Void;
	function substringData(offset:Float, count:Float):String;
	static var prototype : ICharacterData;
}