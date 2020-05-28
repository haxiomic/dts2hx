package node;

@:jsRequire("url") @valueModuleOnly extern class Url {
	@:overload(function(urlStr:String, parseQueryString:Null<Bool>, ?slashesDenoteHost:Bool):node.url.UrlWithStringQuery { })
	@:overload(function(urlStr:String, parseQueryString:Bool, ?slashesDenoteHost:Bool):node.url.UrlWithParsedQuery { })
	@:overload(function(urlStr:String, parseQueryString:Bool, ?slashesDenoteHost:Bool):node.url.Url_ { })
	static function parse(urlStr:String):node.url.UrlWithStringQuery;
	@:overload(function(urlObject:ts.AnyOf2<String, node.url.UrlObject>):String { })
	static function format(URL:node.url.URL, ?options:node.url.URLFormatOptions):String;
	static function resolve(from:String, to:String):String;
	static function domainToASCII(domain:String):String;
	static function domainToUnicode(domain:String):String;
	/**
		This function ensures the correct decodings of percent-encoded characters as
		well as ensuring a cross-platform valid absolute path string.
	**/
	static function fileURLToPath(url:ts.AnyOf2<String, node.url.URL>):String;
	/**
		This function ensures that path is resolved absolutely, and that the URL
		control characters are correctly encoded when converting into a File URL.
	**/
	static function pathToFileURL(url:String):node.url.URL;
}