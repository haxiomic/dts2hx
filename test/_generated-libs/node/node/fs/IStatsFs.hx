package node.fs;

/**
	Provides information about a mounted file system.
	
	Objects returned from
	{@link
	statfs
	}
	and its synchronous counterpart are of
	this type. If `bigint` in the `options` passed to those methods is `true`, the
	numeric values will be `bigint` instead of `number`.
	
	```console
	StatFs {
	  type: 1397114950,
	  bsize: 4096,
	  blocks: 121938943,
	  bfree: 61058895,
	  bavail: 61058895,
	  files: 999,
	  ffree: 1000000
	}
	```
	
	`bigint` version:
	
	```console
	StatFs {
	  type: 1397114950n,
	  bsize: 4096n,
	  blocks: 121938943n,
	  bfree: 61058895n,
	  bavail: 61058895n,
	  files: 999n,
	  ffree: 1000000n
	}
	```
**/
typedef IStatsFs = {
	/**
		Type of file system.
	**/
	var type : Float;
	/**
		Optimal transfer block size.
	**/
	var bsize : Float;
	/**
		Total data blocks in file system.
	**/
	var blocks : Float;
	/**
		Free blocks in file system.
	**/
	var bfree : Float;
	/**
		Available blocks for unprivileged users
	**/
	var bavail : Float;
	/**
		Total file nodes in file system.
	**/
	var files : Float;
	/**
		Free file nodes in file system.
	**/
	var ffree : Float;
};