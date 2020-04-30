package ts.html;
/**
	The msGraphicsTrust() constructor returns an object that provides properties for info on protected video playback.
**/
@:native("MSGraphicsTrust") extern class MSGraphicsTrust {
	function new();
	final constrictionActive : Bool;
	final status : String;
	static var prototype : IMSGraphicsTrust;
}