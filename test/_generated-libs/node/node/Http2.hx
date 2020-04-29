package node;
@:jsRequire("http2") @valueModuleOnly extern class Http2 {
	static function getDefaultSettings():node.http2.Settings;
	static function getPackedSettings(settings:node.http2.Settings):node.http2.Settings;
	static function getUnpackedSettings(buf:haxe.extern.EitherType<global.IBuffer, js.lib.IUint8Array>):node.http2.Settings;
	@:overload(function(options:node.http2.ServerOptions, ?onRequestHandler:(request:node.http2.Http2ServerRequest, response:node.http2.Http2ServerResponse) -> Void):node.http2.Http2Server { })
	static function createServer(?onRequestHandler:(request:node.http2.Http2ServerRequest, response:node.http2.Http2ServerResponse) -> Void):node.http2.Http2Server;
	@:overload(function(options:node.http2.SecureServerOptions, ?onRequestHandler:(request:node.http2.Http2ServerRequest, response:node.http2.Http2ServerResponse) -> Void):node.http2.Http2SecureServer { })
	static function createSecureServer(?onRequestHandler:(request:node.http2.Http2ServerRequest, response:node.http2.Http2ServerResponse) -> Void):node.http2.Http2SecureServer;
	@:overload(function(authority:haxe.extern.EitherType<String, node.url.URL>, ?options:haxe.extern.EitherType<node.http2.SessionOptions, node.http2.SecureClientSessionOptions>, ?listener:(session:node.http2.ClientHttp2Session, socket:haxe.extern.EitherType<node.net.Socket, node.tls.TLSSocket>) -> Void):node.http2.ClientHttp2Session { })
	static function connect(authority:haxe.extern.EitherType<String, node.url.URL>, ?listener:(session:node.http2.ClientHttp2Session, socket:haxe.extern.EitherType<node.net.Socket, node.tls.TLSSocket>) -> Void):node.http2.ClientHttp2Session;
}