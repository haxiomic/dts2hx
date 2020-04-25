package node.http2;
extern interface ServerStreamFileResponseOptionsWithError extends ServerStreamFileResponseOptions {
	@:optional
	var onError : Null<(err:global.nodejs.ErrnoException) -> Void>;
}