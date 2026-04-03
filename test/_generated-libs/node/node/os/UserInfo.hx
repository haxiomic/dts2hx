package node.os;

typedef UserInfo<T> = {
	var username : T;
	var uid : Float;
	var gid : Float;
	var shell : Null<T>;
	var homedir : T;
};