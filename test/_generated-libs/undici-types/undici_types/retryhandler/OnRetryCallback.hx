package undici_types.retryhandler;

typedef OnRetryCallback = ts.AnyOf2<() -> Void, (result:js.lib.Error) -> Void>;