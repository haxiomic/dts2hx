/**
	Creates an Express application. The express() function is a top-level function exported by the express module.
**/
@:jsRequire("express") @valueModuleOnly extern class Express {
	/**
		Creates an Express application. The express() function is a top-level function exported by the express module.
	**/
	@:selfCall
	static function call():express_serve_static_core.Express;
	/**
		This is a built-in middleware function in Express. It parses incoming request query parameters.
	**/
	static function query(options:ts.AnyOf2<qs.IParseOptions, { @:overload(function(str:String, ?options:qs.IParseOptions):haxe.DynamicAccess<qs.PoorMansUnknown> { }) @:selfCall function call(str:String, ?options:Dynamic):qs.ParsedQs; }>):express.Handler;
	static function Router(?options:express.RouterOptions):express_serve_static_core.Router;
	/**
		This is a built-in middleware function in Express. It parses incoming requests with JSON payloads and is based on body-parser.
	**/
	dynamic static function json(?options:body_parser.OptionsJson):connect.NextHandleFunction;
	/**
		This is a built-in middleware function in Express. It parses incoming requests with Buffer payloads and is based on body-parser.
	**/
	dynamic static function raw(?options:body_parser.Options):connect.NextHandleFunction;
	/**
		This is a built-in middleware function in Express. It parses incoming requests with text payloads and is based on body-parser.
	**/
	dynamic static function text(?options:body_parser.OptionsText):connect.NextHandleFunction;
	/**
		These are the exposed prototypes.
	**/
	static var application : express.Application;
	static var request : express.Request<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs>;
	static var response : express.Response<Dynamic>;
	/**
		This is a built-in middleware function in Express. It serves static files and is based on serve-static.
	**/
	@:native("static")
	static var static_ : {
		/**
			Create a new middleware function to serve files from within a given root directory.
			The file to serve will be determined by combining req.url with the provided root directory.
			When a file is not found, instead of sending a 404 response, this module will instead call next() to move on to the next middleware, allowing for stacking and fall-backs.
		**/
		@:selfCall
		function call(root:String, ?options:serve_static.ServeStaticOptions):express_serve_static_core.Handler;
		function serveStatic(root:String, ?options:serve_static.ServeStaticOptions):express_serve_static_core.Handler;
		var mime : {
			function getType(path:String):Null<String>;
			function getExtension(mime:String):Null<String>;
			function define(mimes:mime.TypeMap, ?force:Bool):Void;
		};
	};
	/**
		This is a built-in middleware function in Express. It parses incoming requests with urlencoded payloads and is based on body-parser.
	**/
	dynamic static function urlencoded(?options:body_parser.OptionsUrlencoded):connect.NextHandleFunction;
}