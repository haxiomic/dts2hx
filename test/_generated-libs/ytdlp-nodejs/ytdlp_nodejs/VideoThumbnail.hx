package ytdlp_nodejs;

/**
	Video thumbnail information.
**/
typedef VideoThumbnail = {
	var id : Float;
	@:optional
	var width : ts.AnyOf2<String, Float>;
	@:optional
	var height : ts.AnyOf2<String, Float>;
	var url : String;
};