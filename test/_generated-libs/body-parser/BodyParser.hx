@:jsRequire("body-parser") @valueModuleOnly extern class BodyParser {
	@:selfCall
	static function call(?options:{ /** The reviver option is passed directly to JSON.parse as the second argument. **/ @:optional function reviver(key:String, value:Dynamic):Dynamic; /** When set to `true`, will only accept arrays and objects;when `false` will accept anything JSON.parse accepts. Defaults to `true`. **/ @:optional var strict : Bool; /** When set to true, then deflated (compressed) bodies will be inflated; when false, deflated bodies are rejected. Defaults to true. **/ @:optional var inflate : Bool; /** Controls the maximum request body size. If this is a number,then the value specifies the number of bytes; if it is a string,the value is passed to the bytes library for parsing. Defaults to '100kb'. **/ @:optional var limit : ts.AnyOf2<String, Float>; /** The type option is used to determine what media type the middleware will parse **/ @:optional var type : ts.AnyOf3<String, Array<String>, (req:node.http.IncomingMessage) -> Dynamic>; /** The verify option, if supplied, is called as verify(req, res, buf, encoding),where buf is a Buffer of the raw request body and encoding is the encoding of the request. **/ @:optional function verify(req:node.http.IncomingMessage, res:node.http.ServerResponse<node.http.IncomingMessage>, buf:global.Buffer<js.lib.ArrayBufferLike>, encoding:String):Void; /** Specify the default character set for the text content if the charsetis not specified in the Content-Type header of the request.Defaults to `utf-8`. **/ @:optional var defaultCharset : String; /** The extended option allows to choose between parsing the URL-encoded datawith the querystring library (when `false`) or the qs library (when `true`). **/ @:optional var extended : Bool; /** The parameterLimit option controls the maximum number of parametersthat are allowed in the URL-encoded data. If a request contains more parameters than this value,a 413 will be returned to the client. Defaults to 1000. **/ @:optional var parameterLimit : Float; }):connect.NextHandleFunction;
	/**
		Returns middleware that only parses json and only looks at requests
		where the Content-Type header matches the type option.
	**/
	static function json(?options:body_parser.OptionsJson):connect.NextHandleFunction;
	/**
		Returns middleware that parses all bodies as a Buffer and only looks at requests
		where the Content-Type header matches the type option.
	**/
	static function raw(?options:body_parser.Options):connect.NextHandleFunction;
	/**
		Returns middleware that parses all bodies as a string and only looks at requests
		where the Content-Type header matches the type option.
	**/
	static function text(?options:body_parser.OptionsText):connect.NextHandleFunction;
	/**
		Returns middleware that only parses urlencoded bodies and only looks at requests
		where the Content-Type header matches the type option
	**/
	static function urlencoded(?options:body_parser.OptionsUrlencoded):connect.NextHandleFunction;
}