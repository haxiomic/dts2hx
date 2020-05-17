package node.os;

typedef NetworkInterfaceBase = {
	var address : String;
	var netmask : String;
	var mac : String;
	var internal : Bool;
	var cidr : Null<String>;
};