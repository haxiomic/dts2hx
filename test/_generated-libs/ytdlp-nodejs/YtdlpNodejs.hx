@:jsRequire("ytdlp-nodejs") @valueModuleOnly extern class YtdlpNodejs {
	static final BIN_DIR : String;
	/**
		Factory function to create a new Download builder
	**/
	static function createDownload(url:String, ?options:{ @:optional var binaryPath : String; @:optional var ffmpegPath : String; }):ytdlp_nodejs.Download;
	/**
		Factory function to create a new Exec builder
	**/
	static function createExec(url:String, ?options:{ @:optional var binaryPath : String; @:optional var ffmpegPath : String; }):ytdlp_nodejs.Exec;
	/**
		Factory function to create a new Stream builder
	**/
	static function createStreamBuilder(url:String, ?options:{ @:optional var binaryPath : String; @:optional var ffmpegPath : String; }):ytdlp_nodejs.Stream;
	/**
		Helper utilities exported for advanced usage.
	**/
	static final helpers : {
		dynamic function downloadFFmpeg(?out:String):js.lib.Promise<Null<String>>;
		dynamic function findFFmpegBinary():Null<String>;
		var PROGRESS_STRING : String;
		dynamic function getContentType(?format:ts.AnyOf4<String, { var filter : String; @:optional var quality : ytdlp_nodejs.VideoQuality; @:optional var type : String; }, { var filter : String; @:optional var quality : Int; @:optional var type : ytdlp_nodejs.AudioFormat; }, { var filter : String; @:optional var quality : String; @:optional var type : String; }>):String;
		dynamic function getFileExtension(?format:ts.AnyOf4<String, { var filter : String; @:optional var quality : ytdlp_nodejs.VideoQuality; @:optional var type : String; }, { var filter : String; @:optional var quality : Int; @:optional var type : ytdlp_nodejs.AudioFormat; }, { var filter : String; @:optional var quality : String; @:optional var type : String; }>):String;
		dynamic function parseFormatOptions<T:(String)>(?format:ts.AnyOf2<String, ytdlp_nodejs.FormatArgs<T>>):Array<String>;
		dynamic function stringToProgress(str:String):Null<ytdlp_nodejs.VideoProgress>;
		dynamic function createArgs(options:ytdlp_nodejs.ArgsOptions):Array<String>;
		dynamic function extractThumbnails(consoleOutput:String):Array<ytdlp_nodejs.VideoThumbnail>;
		dynamic function downloadFile(url:String, outputPath:String):js.lib.Promise<ts.Undefined>;
		var BIN_DIR : String;
		dynamic function downloadYtDlp(?out:String):js.lib.Promise<String>;
		dynamic function downloadYtDlpVerified(?out:String):js.lib.Promise<{
			var path : String;
			var verified : Bool;
			@:optional
			var checksum : String;
		}>;
		dynamic function findYtdlpBinary():Null<String>;
	};
}