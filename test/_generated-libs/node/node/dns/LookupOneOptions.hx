package node.dns;

typedef LookupOneOptions = {
	@:optional
	var all : Bool;
	@:optional
	var family : Float;
	@:optional
	var hints : Float;
	@:optional
	var verbatim : Bool;
};