/**
	Create a new connect server.
**/
@:jsRequire("connect") @valueModuleOnly extern class Connect {
	/**
		Create a new connect server.
	**/
	@:selfCall
	static function call():connect.Server;
}