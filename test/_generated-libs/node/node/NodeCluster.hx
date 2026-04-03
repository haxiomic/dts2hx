package node;

@:jsRequire("node:cluster") @valueModuleOnly extern class NodeCluster {
	@:native("default")
	static final default_ : node.cluster.Cluster;
}