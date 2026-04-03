package undici_types;

@:jsRequire("undici-types/fetch") @valueModuleOnly extern class Fetch {
	static function fetch(input:RequestInfo, ?init:RequestInit):js.lib.Promise<Response>;
}