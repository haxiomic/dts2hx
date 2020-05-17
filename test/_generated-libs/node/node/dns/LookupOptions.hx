package node.dns;

typedef LookupOptions = {
	@:optional
	var family : Float;
	@:optional
	var hints : Float;
	@:optional
	var all : Bool;
	@:optional
	var verbatim : Bool;
};