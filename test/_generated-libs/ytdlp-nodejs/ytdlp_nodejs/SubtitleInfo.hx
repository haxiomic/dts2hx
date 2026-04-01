package ytdlp_nodejs;

/**
	Information about available subtitles.
**/
typedef SubtitleInfo = {
	var language : String;
	var languages : Array<String>;
	var ext : String;
	var autoCaption : Bool;
};