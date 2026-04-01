package ytdlp_nodejs;

/**
	Abstract base builder class with shared fluent API methods.
	Extended by Download and Stream builders.
	
	Note: This class extends EventEmitter without generics to avoid TypeScript
	compatibility issues. Subclasses should use declaration merging or casting
	for type-safe event handling.
**/
@jsInaccessible extern class BaseBuilder {
	function new(url:String, ?options:{ @:optional var binaryPath : String; @:optional var ffmpegPath : String; });
	private var binaryPath : String;
	@:optional
	private var ffmpegPath : String;
	private var videoUrl : String;
	@:optional
	private var formatValue : ts.AnyOf4<String, {
		var filter : String;
		@:optional
		var quality : VideoQuality;
		@:optional
		var type : String;
	}, {
		var filter : String;
		@:optional
		var quality : Int;
		@:optional
		var type : AudioFormat;
	}, {
		var filter : String;
		@:optional
		var quality : String;
		@:optional
		var type : String;
	}>;
	private var extraArgs : ArgsOptions;
	private var rawArgs : Array<String>;
	@:optional
	private var process : Dynamic;
	/**
		Set the binary path for yt-dlp
	**/
	function setBinaryPath(path:String):BaseBuilder;
	/**
		Set the FFmpeg binary path
	**/
	function setFfmpegPath(path:String):BaseBuilder;
	/**
		Set the format filter (mergevideo, audioonly, videoonly, audioandvideo)
	**/
	function format<F:(String)>(format:ts.AnyOf2<String, FormatArgs<F>>):BaseBuilder;
	/**
		Set the format filter (mergevideo, audioonly, videoonly, audioandvideo)
	**/
	function filter<F:(String)>(filter:F):BaseBuilder;
	/**
		Set the format quality (0-10, 0 is best)
	**/
	function quality<F:(String)>(quality:Dynamic):BaseBuilder;
	/**
		Set the format type (audioonly, videoonly, audioandvideo)
	**/
	function type<F:(String)>(type:Dynamic):BaseBuilder;
	function options(options:ArgsOptions):BaseBuilder;
	/**
		Limit download rate (e.g., '1M', '500K')
	**/
	function rateLimit(rate:String):BaseBuilder;
	/**
		Set cookies string
	**/
	function cookies(cookies:String):BaseBuilder;
	/**
		Set cookies from browser
	**/
	function cookiesFromBrowser(browser:String):BaseBuilder;
	/**
		Set proxy URL
	**/
	function proxy(url:String):BaseBuilder;
	/**
		Add custom arguments
	**/
	function addOption(key:String, value:Any):BaseBuilder;
	/**
		Add raw command line arguments
	**/
	function addArgs(args:haxe.extern.Rest<String>):BaseBuilder;
	/**
		Enable audio extraction
	**/
	function extractAudio(?format:String):BaseBuilder;
	/**
		Set audio format for extraction
	**/
	function audioFormat(format:String):BaseBuilder;
	/**
		Set audio quality (0-10, 0 is best)
	**/
	function audioQuality(quality:String):BaseBuilder;
	/**
		Embed thumbnail in the file
	**/
	function embedThumbnail():BaseBuilder;
	/**
		Embed subtitles in the file
	**/
	function embedSubs():BaseBuilder;
	/**
		Embed metadata in the file
	**/
	function embedMetadata():BaseBuilder;
	/**
		Write subtitles to file
	**/
	function writeSubs():BaseBuilder;
	/**
		Write auto-generated subtitles
	**/
	function writeAutoSubs():BaseBuilder;
	/**
		Set subtitle languages
	**/
	function subLangs(langs:Array<String>):BaseBuilder;
	/**
		Write thumbnail to file
	**/
	function writeThumbnail():BaseBuilder;
	/**
		Set username for authentication
	**/
	function username(user:String):BaseBuilder;
	/**
		Set password for authentication
	**/
	function password(pass:String):BaseBuilder;
	/**
		Set playlist start index
	**/
	function playlistStart(index:Float):BaseBuilder;
	/**
		Set playlist end index
	**/
	function playlistEnd(index:Float):BaseBuilder;
	/**
		Set specific playlist items
	**/
	function playlistItems(items:String):BaseBuilder;
	/**
		Build format-related arguments from current settings
	**/
	private function buildFormatArgs():Array<String>;
	/**
		Build base yt-dlp arguments (common to all operations)
	**/
	private function buildBaseArgs(?extra:Array<String>):Array<String>;
	/**
		Enable debug printing of the command line before execution
	**/
	function debugPrint(?enable:Bool):BaseBuilder;
	/**
		Get the full command string (for debugging).
		Can be used before calling run() to see exactly what will be executed.
	**/
	function getCommand():String;
	/**
		Get the command arguments array (for debugging).
		Returns only the arguments without the binary path.
	**/
	function getArguments():Array<String>;
	/**
		Returns the full command string.
		Alias for getCommand(), useful for string interpolation.
	**/
	function toString():String;
	/**
		Print the command line to stderr if debugPrintCommandLine is enabled
		Should be called before spawning the process
	**/
	private function printDebugCommandLine(args:Array<String>):Void;
	/**
		Validates that binary path is set
	**/
	private function validateBinaryPath():Void;
	/**
		Kill the running process
	**/
	function kill(?signal:Dynamic):Bool;
	/**
		Get the process ID
	**/
	final pid : Null<Float>;
	/**
		Build the command arguments (to be implemented by subclasses)
	**/
	private function buildArgs():Array<String>;
	static var prototype : BaseBuilder;
}