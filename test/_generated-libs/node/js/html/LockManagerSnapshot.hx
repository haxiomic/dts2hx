package js.html;

typedef LockManagerSnapshot = {
	@:optional
	var held : Array<LockInfo>;
	@:optional
	var pending : Array<LockInfo>;
};