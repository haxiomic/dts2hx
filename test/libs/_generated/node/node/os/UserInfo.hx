package node.os;
extern interface UserInfo<T> {
	var username : T;
	var uid : Float;
	var gid : Float;
	var shell : T;
	var homedir : T;
}