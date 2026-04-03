package node.fs;

/**
	Asynchronously removes files and directories (modeled on the standard POSIX `rm` utility). No arguments other than a possible exception are given to the
	completion callback.
**/
@:jsRequire("fs", "rm") @valueModuleOnly extern class Rm {
	/**
		Asynchronously removes files and directories (modeled on the standard POSIX `rm` utility). No arguments other than a possible exception are given to the
		completion callback.
	**/
	@:overload(function(path:PathLike, options:RmOptions, callback:NoParamCallback):Void { })
	@:selfCall
	static function call(path:PathLike, callback:NoParamCallback):Void;
}