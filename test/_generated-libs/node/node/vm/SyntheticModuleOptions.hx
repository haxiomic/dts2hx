package node.vm;

typedef SyntheticModuleOptions = {
	/**
		String used in stack traces.
	**/
	@:optional
	var identifier : String;
	/**
		The contextified object as returned by the `vm.createContext()` method, to compile and evaluate this module in.
	**/
	@:optional
	var context : Context;
};