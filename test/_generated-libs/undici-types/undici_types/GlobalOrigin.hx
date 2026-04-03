package undici_types;

@:jsRequire("undici-types/global-origin") @valueModuleOnly extern class GlobalOrigin {
	static function setGlobalOrigin(origin:Null<ts.AnyOf2<String, js.html.URL>>):Void;
	static function getGlobalOrigin():Null<js.html.URL>;
}