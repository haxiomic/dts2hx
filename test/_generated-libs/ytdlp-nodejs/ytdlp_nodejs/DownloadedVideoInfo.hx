package ytdlp_nodejs;

/**
	Video information returned after download (post-processing complete).
**/
@:forward
abstract DownloadedVideoInfo(DownloadedVideoInfo_) from DownloadedVideoInfo_ to DownloadedVideoInfo_ {
	/**
		List of cast members
	**/
	@:optional
	public var cast_(get, set):Array<String>;
	inline function get_cast_():Array<String> return js.Syntax.field(cast this, 'cast');
	inline function set_cast_(v:Array<String>):Array<String> { js.Syntax.code("{0}[{1}] = {2}", this, 'cast', v); return v; }
}
