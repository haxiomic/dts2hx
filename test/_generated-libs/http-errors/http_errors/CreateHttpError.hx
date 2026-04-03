package http_errors;

typedef CreateHttpError = ts.AnyOf2<(arg:Any, rest:haxe.extern.Rest<UnknownError>) -> HttpError<Any>, (rest:haxe.extern.Rest<UnknownError>) -> HttpError<Float>>;