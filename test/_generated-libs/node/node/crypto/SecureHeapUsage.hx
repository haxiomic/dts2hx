package node.crypto;

typedef SecureHeapUsage = {
	/**
		The total allocated secure heap size as specified using the `--secure-heap=n` command-line flag.
	**/
	var total : Float;
	/**
		The minimum allocation from the secure heap as specified using the `--secure-heap-min` command-line flag.
	**/
	var min : Float;
	/**
		The total number of bytes currently allocated from the secure heap.
	**/
	var used : Float;
	/**
		The calculated ratio of `used` to `total` allocated bytes.
	**/
	var utilization : Float;
};