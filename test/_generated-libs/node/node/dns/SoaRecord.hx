package node.dns;
extern interface SoaRecord {
	var nsname : String;
	var hostmaster : String;
	var serial : Float;
	var refresh : Float;
	var retry : Float;
	var expire : Float;
	var minttl : Float;
}