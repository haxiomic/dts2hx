package node.http;

@:forward
abstract IncomingHttpHeaders(IncomingHttpHeaders_) from IncomingHttpHeaders_ to IncomingHttpHeaders_ {
	@:optional
	public var accept_patch(get, set):String;
	inline function get_accept_patch():String return js.Syntax.field(cast this, 'accept-patch');
	inline function set_accept_patch(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'accept-patch', v); return v; }
	@:optional
	public var accept_ranges(get, set):String;
	inline function get_accept_ranges():String return js.Syntax.field(cast this, 'accept-ranges');
	inline function set_accept_ranges(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'accept-ranges', v); return v; }
	@:optional
	public var access_control_allow_credentials(get, set):String;
	inline function get_access_control_allow_credentials():String return js.Syntax.field(cast this, 'access-control-allow-credentials');
	inline function set_access_control_allow_credentials(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'access-control-allow-credentials', v); return v; }
	@:optional
	public var access_control_allow_headers(get, set):String;
	inline function get_access_control_allow_headers():String return js.Syntax.field(cast this, 'access-control-allow-headers');
	inline function set_access_control_allow_headers(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'access-control-allow-headers', v); return v; }
	@:optional
	public var access_control_allow_methods(get, set):String;
	inline function get_access_control_allow_methods():String return js.Syntax.field(cast this, 'access-control-allow-methods');
	inline function set_access_control_allow_methods(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'access-control-allow-methods', v); return v; }
	@:optional
	public var access_control_allow_origin(get, set):String;
	inline function get_access_control_allow_origin():String return js.Syntax.field(cast this, 'access-control-allow-origin');
	inline function set_access_control_allow_origin(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'access-control-allow-origin', v); return v; }
	@:optional
	public var access_control_expose_headers(get, set):String;
	inline function get_access_control_expose_headers():String return js.Syntax.field(cast this, 'access-control-expose-headers');
	inline function set_access_control_expose_headers(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'access-control-expose-headers', v); return v; }
	@:optional
	public var access_control_max_age(get, set):String;
	inline function get_access_control_max_age():String return js.Syntax.field(cast this, 'access-control-max-age');
	inline function set_access_control_max_age(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'access-control-max-age', v); return v; }
	@:optional
	public var alt_svc(get, set):String;
	inline function get_alt_svc():String return js.Syntax.field(cast this, 'alt-svc');
	inline function set_alt_svc(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'alt-svc', v); return v; }
	@:optional
	public var cache_control(get, set):String;
	inline function get_cache_control():String return js.Syntax.field(cast this, 'cache-control');
	inline function set_cache_control(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'cache-control', v); return v; }
	@:optional
	public var content_disposition(get, set):String;
	inline function get_content_disposition():String return js.Syntax.field(cast this, 'content-disposition');
	inline function set_content_disposition(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'content-disposition', v); return v; }
	@:optional
	public var content_encoding(get, set):String;
	inline function get_content_encoding():String return js.Syntax.field(cast this, 'content-encoding');
	inline function set_content_encoding(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'content-encoding', v); return v; }
	@:optional
	public var content_language(get, set):String;
	inline function get_content_language():String return js.Syntax.field(cast this, 'content-language');
	inline function set_content_language(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'content-language', v); return v; }
	@:optional
	public var content_length(get, set):String;
	inline function get_content_length():String return js.Syntax.field(cast this, 'content-length');
	inline function set_content_length(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'content-length', v); return v; }
	@:optional
	public var content_location(get, set):String;
	inline function get_content_location():String return js.Syntax.field(cast this, 'content-location');
	inline function set_content_location(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'content-location', v); return v; }
	@:optional
	public var content_range(get, set):String;
	inline function get_content_range():String return js.Syntax.field(cast this, 'content-range');
	inline function set_content_range(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'content-range', v); return v; }
	@:optional
	public var content_type(get, set):String;
	inline function get_content_type():String return js.Syntax.field(cast this, 'content-type');
	inline function set_content_type(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'content-type', v); return v; }
	@:optional
	public var if_match(get, set):String;
	inline function get_if_match():String return js.Syntax.field(cast this, 'if-match');
	inline function set_if_match(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'if-match', v); return v; }
	@:optional
	public var if_modified_since(get, set):String;
	inline function get_if_modified_since():String return js.Syntax.field(cast this, 'if-modified-since');
	inline function set_if_modified_since(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'if-modified-since', v); return v; }
	@:optional
	public var if_none_match(get, set):String;
	inline function get_if_none_match():String return js.Syntax.field(cast this, 'if-none-match');
	inline function set_if_none_match(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'if-none-match', v); return v; }
	@:optional
	public var if_unmodified_since(get, set):String;
	inline function get_if_unmodified_since():String return js.Syntax.field(cast this, 'if-unmodified-since');
	inline function set_if_unmodified_since(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'if-unmodified-since', v); return v; }
	@:optional
	public var last_modified(get, set):String;
	inline function get_last_modified():String return js.Syntax.field(cast this, 'last-modified');
	inline function set_last_modified(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'last-modified', v); return v; }
	@:optional
	public var proxy_authenticate(get, set):String;
	inline function get_proxy_authenticate():String return js.Syntax.field(cast this, 'proxy-authenticate');
	inline function set_proxy_authenticate(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'proxy-authenticate', v); return v; }
	@:optional
	public var proxy_authorization(get, set):String;
	inline function get_proxy_authorization():String return js.Syntax.field(cast this, 'proxy-authorization');
	inline function set_proxy_authorization(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'proxy-authorization', v); return v; }
	@:optional
	public var public_key_pins(get, set):String;
	inline function get_public_key_pins():String return js.Syntax.field(cast this, 'public-key-pins');
	inline function set_public_key_pins(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'public-key-pins', v); return v; }
	@:optional
	public var retry_after(get, set):String;
	inline function get_retry_after():String return js.Syntax.field(cast this, 'retry-after');
	inline function set_retry_after(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'retry-after', v); return v; }
	@:optional
	public var set_cookie(get, set):Array<String>;
	inline function get_set_cookie():Array<String> return js.Syntax.field(cast this, 'set-cookie');
	inline function set_set_cookie(v:Array<String>):Array<String> { js.Syntax.code("{0}[{1}] = {2}", this, 'set-cookie', v); return v; }
	@:optional
	public var strict_transport_security(get, set):String;
	inline function get_strict_transport_security():String return js.Syntax.field(cast this, 'strict-transport-security');
	inline function set_strict_transport_security(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'strict-transport-security', v); return v; }
	@:optional
	public var transfer_encoding(get, set):String;
	inline function get_transfer_encoding():String return js.Syntax.field(cast this, 'transfer-encoding');
	inline function set_transfer_encoding(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'transfer-encoding', v); return v; }
	@:optional
	public var user_agent(get, set):String;
	inline function get_user_agent():String return js.Syntax.field(cast this, 'user-agent');
	inline function set_user_agent(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'user-agent', v); return v; }
	@:optional
	public var www_authenticate(get, set):String;
	inline function get_www_authenticate():String return js.Syntax.field(cast this, 'www-authenticate');
	inline function set_www_authenticate(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'www-authenticate', v); return v; }
}
