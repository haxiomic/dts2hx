package node.dns;
extern interface SrvRecord {
	var priority : Float;
	var weight : Float;
	var port : Float;
	var name : String;
}