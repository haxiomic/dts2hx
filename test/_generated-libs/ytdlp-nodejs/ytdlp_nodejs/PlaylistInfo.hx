package ytdlp_nodejs;

/**
	Information about a playlist.
**/
typedef PlaylistInfo = {
	var id : String;
	var title : String;
	var _type : String;
	var entries : Array<VideoInfo>;
	var webpage_url : String;
	var original_url : String;
	var webpage_url_basename : String;
	var webpage_url_domain : Null<String>;
	var extractor : String;
	var extractor_key : String;
	var release_year : Null<String>;
	var playlist_count : Float;
	var epoch : Float;
};