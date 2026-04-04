package ytdlp_nodejs;

/**
	Fluent builder for yt-dlp download operations
**/
@:jsRequire("ytdlp-nodejs", "Download") extern class Download extends BaseBuilder {
	function new(url:String, ?options:{ @:optional var binaryPath : String; @:optional var ffmpegPath : String; });
	@:optional
	private var outputDir : Dynamic;
	@:optional
	private var outputPath : Dynamic;
	@:optional
	private var resultPromise : Dynamic;
	/**
		Add a typed event listener
	**/
	function on<K:(String)>(event:K, listener:(args:haxe.extern.Rest<Any>) -> Void):Download;
	/**
		Add a one-time typed event listener
	**/
	function once<K:(String)>(event:K, listener:(args:haxe.extern.Rest<Any>) -> Void):Download;
	/**
		Emit a typed event
	**/
	function emit<K:(String)>(event:K, args:haxe.extern.Rest<Any>):Bool;
	/**
		Set the output directory
	**/
	function output(path:String):Download;
	/**
		Set the output template (yt-dlp -o option)
	**/
	function setOutputTemplate(template:String):Download;
	/**
		Skip download (useful for metadata extraction)
	**/
	function skipDownload():Download;
	/**
		Run the download
	**/
	function run():js.lib.Promise<DownloadFinishResult>;
	/**
		Make the builder directly awaitable
	**/
	function then<TResult1, TResult2>(?onfulfilled:(value:DownloadFinishResult) -> ts.AnyOf2<js.lib.PromiseLike<TResult1>, TResult1>, ?onrejected:(reason:Any) -> ts.AnyOf2<js.lib.PromiseLike<TResult2>, TResult2>):js.lib.Promise<ts.AnyOf2<TResult1, TResult2>>;
	/**
		Catch errors
	**/
	@:native("catch")
	function catch_<TResult>(?onrejected:(reason:Any) -> ts.AnyOf2<js.lib.PromiseLike<TResult>, TResult>):js.lib.Promise<ts.AnyOf2<DownloadFinishResult, TResult>>;
	/**
		Finally handler
	**/
	function finally(?onfinally:() -> Void):js.lib.Promise<DownloadFinishResult>;
	/**
		Set the binary path for yt-dlp
	**/
	function setBinaryPath(path:String):Download;
	/**
		Set the FFmpeg binary path
	**/
	function setFfmpegPath(path:String):Download;
	/**
		Set the format filter (mergevideo, audioonly, videoonly, audioandvideo)
	**/
	function format<F:(String)>(format:ts.AnyOf2<String, FormatArgs<F>>):Download;
	/**
		Set the format filter (mergevideo, audioonly, videoonly, audioandvideo)
	**/
	function filter<F:(String)>(filter:F):Download;
	/**
		Set the format quality (0-10, 0 is best)
	**/
	function quality<F:(String)>(quality:Dynamic):Download;
	/**
		Set the format type (audioonly, videoonly, audioandvideo)
	**/
	function type<F:(String)>(type:Dynamic):Download;
	function options(options:ArgsOptions):Download;
	/**
		Limit download rate (e.g., '1M', '500K')
	**/
	function rateLimit(rate:String):Download;
	/**
		Set cookies string
	**/
	function cookies(cookies:String):Download;
	/**
		Set cookies from browser
	**/
	function cookiesFromBrowser(browser:String):Download;
	/**
		Set proxy URL
	**/
	function proxy(url:String):Download;
	/**
		Add custom arguments
	**/
	function addOption(key:String, value:Any):Download;
	/**
		Add raw command line arguments
	**/
	function addArgs(args:haxe.extern.Rest<String>):Download;
	/**
		Enable audio extraction
	**/
	function extractAudio(?format:String):Download;
	/**
		Set audio format for extraction
	**/
	function audioFormat(format:String):Download;
	/**
		Set audio quality (0-10, 0 is best)
	**/
	function audioQuality(quality:String):Download;
	/**
		Embed thumbnail in the file
	**/
	function embedThumbnail():Download;
	/**
		Embed subtitles in the file
	**/
	function embedSubs():Download;
	/**
		Embed metadata in the file
	**/
	function embedMetadata():Download;
	/**
		Write subtitles to file
	**/
	function writeSubs():Download;
	/**
		Write auto-generated subtitles
	**/
	function writeAutoSubs():Download;
	/**
		Set subtitle languages
	**/
	function subLangs(langs:Array<String>):Download;
	/**
		Write thumbnail to file
	**/
	function writeThumbnail():Download;
	/**
		Set username for authentication
	**/
	function username(user:String):Download;
	/**
		Set password for authentication
	**/
	function password(pass:String):Download;
	/**
		Set playlist start index
	**/
	function playlistStart(index:Float):Download;
	/**
		Set playlist end index
	**/
	function playlistEnd(index:Float):Download;
	/**
		Set specific playlist items
	**/
	function playlistItems(items:String):Download;
	/**
		Enable debug printing of the command line before execution
	**/
	function debugPrint(?enable:Bool):Download;
	static var prototype : Download;
}