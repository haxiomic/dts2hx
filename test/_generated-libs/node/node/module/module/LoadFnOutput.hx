package node.module.module;

typedef LoadFnOutput = {
	var format : Null<String>;
	/**
		A signal that this hook intends to terminate the chain of `resolve` hooks.
	**/
	@:optional
	var shortCircuit : Bool;
	/**
		The source for Node.js to evaluate
	**/
	@:optional
	var source : ModuleSource;
};