package node.dns;

typedef AnyCaaRecord = {
	var type : String;
	var critical : Float;
	@:optional
	var issue : String;
	@:optional
	var issuewild : String;
	@:optional
	var iodef : String;
	@:optional
	var contactemail : String;
	@:optional
	var contactphone : String;
};