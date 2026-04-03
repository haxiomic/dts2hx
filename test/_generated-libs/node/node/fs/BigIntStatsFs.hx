package node.fs;

typedef BigIntStatsFs = {
	/**
		Type of file system.
	**/
	var type : ts.BigInt;
	/**
		Optimal transfer block size.
	**/
	var bsize : ts.BigInt;
	/**
		Total data blocks in file system.
	**/
	var blocks : ts.BigInt;
	/**
		Free blocks in file system.
	**/
	var bfree : ts.BigInt;
	/**
		Available blocks for unprivileged users
	**/
	var bavail : ts.BigInt;
	/**
		Total file nodes in file system.
	**/
	var files : ts.BigInt;
	/**
		Free file nodes in file system.
	**/
	var ffree : ts.BigInt;
};