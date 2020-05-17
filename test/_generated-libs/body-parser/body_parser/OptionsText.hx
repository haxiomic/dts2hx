package body_parser;

typedef OptionsText = {
	/**
		Specify the default character set for the text content if the charset
		is not specified in the Content-Type header of the request.
		Defaults to `utf-8`.
	**/
	@:optional
	var defaultCharset : String;
	/**
		When set to true, then deflated (compressed) bodies will be inflated; when false, deflated bodies are rejected. Defaults to true.
	**/
	@:optional
	var inflate : Bool;
	/**
		Controls the maximum request body size. If this is a number,
		then the value specifies the number of bytes; if it is a string,
		the value is passed to the bytes library for parsing. Defaults to '100kb'.
	**/
	@:optional
	var limit : ts.AnyOf2<String, Float>;
	/**
		The type option is used to determine what media type the middleware will parse
	**/
	@:optional
	var type : ts.AnyOf3<String, Array<String>, (req:node.http.IncomingMessage) -> Dynamic>;
	/**
		The verify option, if supplied, is called as verify(req, res, buf, encoding),
		where buf is a Buffer of the raw request body and encoding is the encoding of the request.
	**/
	@:optional
	function verify(req:node.http.IncomingMessage, res:node.http.ServerResponse, buf:global.Buffer, encoding:String):Void;
};