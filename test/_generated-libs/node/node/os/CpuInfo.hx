package node.os;

typedef CpuInfo = {
	var model : String;
	var speed : Float;
	var times : {
		var user : Float;
		var nice : Float;
		var sys : Float;
		var idle : Float;
		var irq : Float;
	};
};