package ytdlp_nodejs;

/**
	Video format information.
**/
typedef VideoFormat = {
	var format_id : String;
	@:optional
	var format_note : String;
	var ext : String;
	var url : String;
	@:optional
	var width : Float;
	@:optional
	var height : Float;
	@:optional
	var resolution : String;
	@:optional
	var filesize : Float;
	@:optional
	var tbr : Float;
	var protocol : String;
	var vcodec : String;
	var acodec : String;
};