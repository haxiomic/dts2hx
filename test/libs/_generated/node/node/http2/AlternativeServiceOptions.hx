package node.http2;
extern interface AlternativeServiceOptions {
	var origin : haxe.extern.EitherType<String, haxe.extern.EitherType<Float, node.url.URL>>;
}