/**
	Creates an Express application. The express() function is a top-level function exported by the express module.
**/
@:jsRequire("express") @valueModuleOnly extern class Express {
	/**
		Creates an Express application. The express() function is a top-level function exported by the express module.
	**/
	@:selfCall
	static function call():express_serve_static_core.Express;
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
	static var request : express.Request<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>;
	static var response : express.Response<Dynamic, haxe.DynamicAccess<Dynamic>>;
	/**
		This is a built-in middleware function in Express. It serves static files and is based on serve-static.
	**/
	@:native("static")
	dynamic static function static_(root:String, ?options:serve_static.ServeStaticOptions<express.Response<Dynamic, haxe.DynamicAccess<Dynamic>>>):serve_static.RequestHandler<express.Response<Dynamic, haxe.DynamicAccess<Dynamic>>>;
	/**
		This is a built-in middleware function in Express. It parses incoming requests with urlencoded payloads and is based on body-parser.
	**/
	dynamic static function urlencoded(?options:body_parser.OptionsUrlencoded):connect.NextHandleFunction;
}