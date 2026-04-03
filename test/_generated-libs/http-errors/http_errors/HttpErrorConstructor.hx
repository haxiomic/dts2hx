package http_errors;

typedef HttpErrorConstructor<N:(Float)> = ts.AnyOf2<() -> HttpError<N>, (msg:String) -> HttpError<N>>;