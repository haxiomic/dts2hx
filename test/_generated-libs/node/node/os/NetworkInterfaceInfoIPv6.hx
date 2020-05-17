package node.os;

typedef NetworkInterfaceInfoIPv6 = {
	var family : String;
	var scopeid : Float;
	var address : String;
	var netmask : String;
	var mac : String;
	var internal : Bool;
	var cidr : Null<String>;
};