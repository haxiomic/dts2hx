package node.dns;
extern interface NaptrRecord {
	var flags : String;
	var service : String;
	var regexp : String;
	var replacement : String;
	var order : Float;
	var preference : Float;
}