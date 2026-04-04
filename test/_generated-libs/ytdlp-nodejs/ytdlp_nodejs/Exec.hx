package ytdlp_nodejs;

/**
	Fluent builder for yt-dlp exec operations
	
	Use this builder when you need to execute arbitrary yt-dlp commands
	with full control over arguments, streaming, and download events.
**/
@:jsRequire("ytdlp-nodejs", "Exec") extern class Exec extends BaseBuilder {
	function new(url:String, ?options:{ @:optional var binaryPath : String; @:optional var ffmpegPath : String; });
	@:optional
	private var passThrough : Dynamic;
	private var totalBytes : Dynamic;
	private var started : Dynamic;
	@:optional
	private var beforeDownloadInfo : Dynamic;
	@:optional
	private var afterDownloadInfo : Dynamic;
	private var output : Dynamic;
	@:optional
	private var resultPromise : Dynamic;
	/**
		Add a typed event listener
	**/
	function on<K:(String)>(event:K, listener:(args:haxe.extern.Rest<Any>) -> Void):Exec;
	/**
		Add a one-time typed event listener
	**/
	function once<K:(String)>(event:K, listener:(args:haxe.extern.Rest<Any>) -> Void):Exec;
	/**
		Emit a typed event
	**/
	function emit<K:(String)>(event:K, args:haxe.extern.Rest<Any>):Bool;
	/**
		Start the exec process (for pipe mode)
	**/
	private var startStream : Dynamic;
	/**
		Pipe the stream to a writable destination and wait for completion.
		This method is awaitable - returns a Promise.
	**/
	function pipe<T:(Exec)>(destination:T, ?options:{ @:optional var end : Bool; }):js.lib.Promise<ExecPipeResult>;
	/**
		Alias for pipe() - for backward compatibility
	**/
	function pipeAsync<T:(Exec)>(destination:T, ?options:{ @:optional var end : Bool; }):js.lib.Promise<ExecPipeResult>;
	/**
		Collect the entire stream into a Buffer
	**/
	function toBuffer():js.lib.Promise<Exec>;
	/**
		Get the underlying PassThrough stream
	**/
	function getStream():Exec;
	/**
		Execute the yt-dlp command and return the result (non-pipe mode)
	**/
	function exec():js.lib.Promise<ExecBuilderResult>;
	/**
		Alias for exec() - for convenience
	**/
	function run():js.lib.Promise<ExecBuilderResult>;
	/**
		Make the builder directly awaitable
	**/
	function then<TResult1, TResult2>(?onfulfilled:(value:ExecBuilderResult) -> ts.AnyOf2<js.lib.PromiseLike<TResult1>, TResult1>, ?onrejected:(reason:Any) -> ts.AnyOf2<js.lib.PromiseLike<TResult2>, TResult2>):js.lib.Promise<ts.AnyOf2<TResult1, TResult2>>;
	/**
		Catch errors
	**/
	@:native("catch")
	function catch_<TResult>(?onrejected:(reason:Any) -> ts.AnyOf2<js.lib.PromiseLike<TResult>, TResult>):js.lib.Promise<ts.AnyOf2<ExecBuilderResult, TResult>>;
	/**
		Finally handler
	**/
	function finally(?onfinally:() -> Void):js.lib.Promise<ExecBuilderResult>;
	/**
		Set the binary path for yt-dlp
	**/
	function setBinaryPath(path:String):Exec;
	/**
		Set the FFmpeg binary path
	**/
	function setFfmpegPath(path:String):Exec;
	/**
		Set the format filter (mergevideo, audioonly, videoonly, audioandvideo)
	**/
	function format<F:(String)>(format:ts.AnyOf2<String, FormatArgs<F>>):Exec;
	/**
		Set the format filter (mergevideo, audioonly, videoonly, audioandvideo)
	**/
	function filter<F:(String)>(filter:F):Exec;
	/**
		Set the format quality (0-10, 0 is best)
	**/
	function quality<F:(String)>(quality:Dynamic):Exec;
	/**
		Set the format type (audioonly, videoonly, audioandvideo)
	**/
	function type<F:(String)>(type:Dynamic):Exec;
	function options(options:ArgsOptions):Exec;
	/**
		Limit download rate (e.g., '1M', '500K')
	**/
	function rateLimit(rate:String):Exec;
	/**
		Set cookies string
	**/
	function cookies(cookies:String):Exec;
	/**
		Set cookies from browser
	**/
	function cookiesFromBrowser(browser:String):Exec;
	/**
		Set proxy URL
	**/
	function proxy(url:String):Exec;
	/**
		Add custom arguments
	**/
	function addOption(key:String, value:Any):Exec;
	/**
		Add raw command line arguments
	**/
	function addArgs(args:haxe.extern.Rest<String>):Exec;
	/**
		Enable audio extraction
	**/
	function extractAudio(?format:String):Exec;
	/**
		Set audio format for extraction
	**/
	function audioFormat(format:String):Exec;
	/**
		Set audio quality (0-10, 0 is best)
	**/
	function audioQuality(quality:String):Exec;
	/**
		Embed thumbnail in the file
	**/
	function embedThumbnail():Exec;
	/**
		Embed subtitles in the file
	**/
	function embedSubs():Exec;
	/**
		Embed metadata in the file
	**/
	function embedMetadata():Exec;
	/**
		Write subtitles to file
	**/
	function writeSubs():Exec;
	/**
		Write auto-generated subtitles
	**/
	function writeAutoSubs():Exec;
	/**
		Set subtitle languages
	**/
	function subLangs(langs:Array<String>):Exec;
	/**
		Write thumbnail to file
	**/
	function writeThumbnail():Exec;
	/**
		Set username for authentication
	**/
	function username(user:String):Exec;
	/**
		Set password for authentication
	**/
	function password(pass:String):Exec;
	/**
		Set playlist start index
	**/
	function playlistStart(index:Float):Exec;
	/**
		Set playlist end index
	**/
	function playlistEnd(index:Float):Exec;
	/**
		Set specific playlist items
	**/
	function playlistItems(items:String):Exec;
	/**
		Enable debug printing of the command line before execution
	**/
	function debugPrint(?enable:Bool):Exec;
	static var prototype : Exec;
}