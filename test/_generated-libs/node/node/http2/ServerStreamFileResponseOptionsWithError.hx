package node.http2;
extern typedef ServerStreamFileResponseOptionsWithError = ServerStreamFileResponseOptions & { @:optional
	var onError : (err:global.nodejs.ErrnoException) -> Void; };