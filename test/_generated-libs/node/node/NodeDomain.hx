package node;

@:jsRequire("node:domain") @valueModuleOnly extern class NodeDomain {
	static function create():node.domain.Domain;
}