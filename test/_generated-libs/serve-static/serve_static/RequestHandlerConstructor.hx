package serve_static;

typedef RequestHandlerConstructor<R> = ts.AnyOf2<(root:String) -> RequestHandler<R>, (root:String, options:ServeStaticOptions<R>) -> RequestHandler<R>>;