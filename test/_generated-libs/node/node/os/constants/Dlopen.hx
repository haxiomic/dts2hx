package node.os.constants;

@:jsRequire("os", "constants.dlopen") @valueModuleOnly extern class Dlopen {
	static final RTLD_LAZY : Float;
	static final RTLD_NOW : Float;
	static final RTLD_GLOBAL : Float;
	static final RTLD_LOCAL : Float;
	static final RTLD_DEEPBIND : Float;
}