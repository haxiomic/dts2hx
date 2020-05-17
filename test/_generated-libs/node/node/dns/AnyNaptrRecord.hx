package node.dns;

typedef AnyNaptrRecord = {
	var type : String;
	var flags : String;
	var service : String;
	var regexp : String;
	var replacement : String;
	var order : Float;
	var preference : Float;
};