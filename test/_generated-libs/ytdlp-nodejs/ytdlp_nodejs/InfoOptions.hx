package ytdlp_nodejs;

/**
	Options for fetching video information.
**/
typedef InfoOptions = {
	/**
		If `true`, returns a flat list with limited information for playlist items.
		If `false`, fetches full information for each video in the playlist.
	**/
	@:optional
	var flatPlaylist : Bool;
	/**
		A string of cookies to use for authentication.
	**/
	@:optional
	var cookies : String;
	/**
		Use cookies automatically fetched from the browser.
	**/
	@:optional
	var cookiesFromBrowser : String;
	/**
		Disable using cookies from the browser.
	**/
	@:optional
	var noCookiesFromBrowser : Bool;
	/**
		Disable cookies entirely (overrides other cookie options).
	**/
	@:optional
	var noCookies : Bool;
};