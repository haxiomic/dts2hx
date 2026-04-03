/**
	Create a new middleware function to serve files from within a given root directory.
	The file to serve will be determined by combining req.url with the provided root directory.
	When a file is not found, instead of sending a 404 response, this module will instead call next() to move on to the next middleware, allowing for stacking and fall-backs.
**/
@:jsRequire("serve-static") extern class ServeStatic {
	/**
		Create a new middleware function to serve files from within a given root directory.
		The file to serve will be determined by combining req.url with the provided root directory.
		When a file is not found, instead of sending a 404 response, this module will instead call next() to move on to the next middleware, allowing for stacking and fall-backs.
	**/
	@:selfCall
	static function call<R:(node.http.ServerResponse<node.http.IncomingMessage>)>(root:String, ?options:serve_static.ServeStaticOptions<R>):serve_static.RequestHandler<R>;
}