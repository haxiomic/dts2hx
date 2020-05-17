package node.dns;

typedef AnySrvRecord = {
	var type : String;
	var priority : Float;
	var weight : Float;
	var port : Float;
	var name : String;
};