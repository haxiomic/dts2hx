package node;

@:jsRequire("querystring") @valueModuleOnly extern class Querystring {
	static function stringify(?obj:{ }, ?sep:String, ?eq:String, ?options:node.querystring.StringifyOptions):String;
	static function parse(str:String, ?sep:String, ?eq:String, ?options:node.querystring.ParseOptions):node.querystring.ParsedUrlQuery;
	static function escape(str:String):String;
	static function unescape(str:String):String;
}