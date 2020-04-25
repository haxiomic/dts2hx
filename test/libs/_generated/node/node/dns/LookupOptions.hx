package node.dns;
extern interface LookupOptions {
	@:optional
	var family : Null<Float>;
	@:optional
	var hints : Null<Float>;
	@:optional
	var all : Null<Bool>;
	@:optional
	var verbatim : Null<Bool>;
}