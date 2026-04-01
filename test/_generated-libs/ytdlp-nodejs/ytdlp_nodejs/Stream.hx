package ytdlp_nodejs;

/**
	Fluent builder for yt-dlp stream operations
**/
@:jsRequire("ytdlp-nodejs", "Stream") extern class Stream extends BaseBuilder {
	function new(url:String, ?options:{ @:optional var binaryPath : String; @:optional var ffmpegPath : String; });
	@:optional
	private var passThrough : Dynamic;
	private var totalBytes : Dynamic;
	private var started : Dynamic;
	/**
		Add a typed event listener
	**/
	function on<K:(String)>(event:K, listener:(args:haxe.extern.Rest<Any>) -> Void):Stream;
	/**
		Add a one-time typed event listener
	**/
	function once<K:(String)>(event:K, listener:(args:haxe.extern.Rest<Any>) -> Void):Stream;
	/**
		Emit a typed event
	**/
	function emit<K:(String)>(event:K, args:haxe.extern.Rest<Any>):Bool;
	/**
		Start the stream process
	**/
	private var startStream : Dynamic;
	/**
		Pipe the stream to a writable destination and wait for completion.
		This method is awaitable - returns a Promise.
	**/
	function pipe<T:(Stream)>(destination:T, ?options:{ @:optional var end : Bool; }):js.lib.Promise<StreamResult>;
	/**
		Alias for pipe() - for backward compatibility
	**/
	function pipeAsync<T:(Stream)>(destination:T, ?options:{ @:optional var end : Bool; }):js.lib.Promise<StreamResult>;
	/**
		Collect the entire stream into a Buffer
	**/
	function toBuffer():js.lib.Promise<Stream>;
	/**
		Get the underlying PassThrough stream
	**/
	function getStream():Stream;
	/**
		Set the binary path for yt-dlp
	**/
	function setBinaryPath(path:String):Stream;
	/**
		Set the FFmpeg binary path
	**/
	function setFfmpegPath(path:String):Stream;
	/**
		Set the format filter (mergevideo, audioonly, videoonly, audioandvideo)
	**/
	function format<F:(String)>(format:ts.AnyOf2<String, FormatArgs<F>>):Stream;
	/**
		Set the format filter (mergevideo, audioonly, videoonly, audioandvideo)
	**/
	function filter<F:(String)>(filter:F):Stream;
	/**
		Set the format quality (0-10, 0 is best)
	**/
	function quality<F:(String)>(quality:Dynamic):Stream;
	/**
		Set the format type (audioonly, videoonly, audioandvideo)
	**/
	function type<F:(String)>(type:Dynamic):Stream;
	function options(options:ArgsOptions):Stream;
	/**
		Limit download rate (e.g., '1M', '500K')
	**/
	function rateLimit(rate:String):Stream;
	/**
		Set cookies string
	**/
	function cookies(cookies:String):Stream;
	/**
		Set cookies from browser
	**/
	function cookiesFromBrowser(browser:String):Stream;
	/**
		Set proxy URL
	**/
	function proxy(url:String):Stream;
	/**
		Add custom arguments
	**/
	function addOption(key:String, value:Any):Stream;
	/**
		Add raw command line arguments
	**/
	function addArgs(args:haxe.extern.Rest<String>):Stream;
	/**
		Enable audio extraction
	**/
	function extractAudio(?format:String):Stream;
	/**
		Set audio format for extraction
	**/
	function audioFormat(format:String):Stream;
	/**
		Set audio quality (0-10, 0 is best)
	**/
	function audioQuality(quality:String):Stream;
	/**
		Embed thumbnail in the file
	**/
	function embedThumbnail():Stream;
	/**
		Embed subtitles in the file
	**/
	function embedSubs():Stream;
	/**
		Embed metadata in the file
	**/
	function embedMetadata():Stream;
	/**
		Write subtitles to file
	**/
	function writeSubs():Stream;
	/**
		Write auto-generated subtitles
	**/
	function writeAutoSubs():Stream;
	/**
		Set subtitle languages
	**/
	function subLangs(langs:Array<String>):Stream;
	/**
		Write thumbnail to file
	**/
	function writeThumbnail():Stream;
	/**
		Set username for authentication
	**/
	function username(user:String):Stream;
	/**
		Set password for authentication
	**/
	function password(pass:String):Stream;
	/**
		Set playlist start index
	**/
	function playlistStart(index:Float):Stream;
	/**
		Set playlist end index
	**/
	function playlistEnd(index:Float):Stream;
	/**
		Set specific playlist items
	**/
	function playlistItems(items:String):Stream;
	/**
		Enable debug printing of the command line before execution
	**/
	function debugPrint(?enable:Bool):Stream;
	static var prototype : Stream;
}