package undici_types;

@:jsRequire("undici-types/cookies") @valueModuleOnly extern class Cookies {
	static function deleteCookie(headers:Headers, name:String, ?attributes:{ @:optional var name : String; @:optional var domain : String; }):Void;
	static function getCookies(headers:Headers):haxe.DynamicAccess<String>;
	static function getSetCookies(headers:Headers):Array<Cookie>;
	static function setCookie(headers:Headers, cookie:Cookie):Void;
}