package node.dns;

typedef LookupAllOptions = {
	var all : Bool;
	@:optional
	var family : Float;
	@:optional
	var hints : Float;
	@:optional
	var verbatim : Bool;
};