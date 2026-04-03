package serve_static;

typedef RequestHandler<R> = (request:node.http.IncomingMessage, response:R, next:ts.AnyOf2<() -> Void, (err:http_errors.HttpError_<Float>) -> Void>) -> Dynamic;