package node.nodecolontest.test;

typedef TestShard = {
	/**
		A positive integer between 1 and `total` that specifies the index of the shard to run.
	**/
	var index : Float;
	/**
		A positive integer that specifies the total number of shards to split the test files to.
	**/
	var total : Float;
};