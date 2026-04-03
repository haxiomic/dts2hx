package node.os;

typedef CpuInfo = {
	var model : String;
	var speed : Float;
	var times : {
		/**
			The number of milliseconds the CPU has spent in user mode.
		**/
		var user : Float;
		/**
			The number of milliseconds the CPU has spent in nice mode.
		**/
		var nice : Float;
		/**
			The number of milliseconds the CPU has spent in sys mode.
		**/
		var sys : Float;
		/**
			The number of milliseconds the CPU has spent in idle mode.
		**/
		var idle : Float;
		/**
			The number of milliseconds the CPU has spent in irq mode.
		**/
		var irq : Float;
	};
};