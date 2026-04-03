package node.http;

@:forward
abstract OutgoingHttpHeaders(OutgoingHttpHeadersTypedef) from OutgoingHttpHeadersTypedef to OutgoingHttpHeadersTypedef {
	@:optional
	public var accept_charset(get, set):ts.AnyOf2<String, Array<String>>;
	inline function get_accept_charset():ts.AnyOf2<String, Array<String>> return js.Syntax.field(cast this, 'accept-charset');
	inline function set_accept_charset(v:ts.AnyOf2<String, Array<String>>):ts.AnyOf2<String, Array<String>> { js.Syntax.code("{0}[{1}] = {2}", this, 'accept-charset', v); return v; }
	@:optional
	public var accept_encoding(get, set):ts.AnyOf2<String, Array<String>>;
	inline function get_accept_encoding():ts.AnyOf2<String, Array<String>> return js.Syntax.field(cast this, 'accept-encoding');
	inline function set_accept_encoding(v:ts.AnyOf2<String, Array<String>>):ts.AnyOf2<String, Array<String>> { js.Syntax.code("{0}[{1}] = {2}", this, 'accept-encoding', v); return v; }
	@:optional
	public var accept_language(get, set):ts.AnyOf2<String, Array<String>>;
	inline function get_accept_language():ts.AnyOf2<String, Array<String>> return js.Syntax.field(cast this, 'accept-language');
	inline function set_accept_language(v:ts.AnyOf2<String, Array<String>>):ts.AnyOf2<String, Array<String>> { js.Syntax.code("{0}[{1}] = {2}", this, 'accept-language', v); return v; }
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
	public var access_control_request_headers(get, set):String;
	inline function get_access_control_request_headers():String return js.Syntax.field(cast this, 'access-control-request-headers');
	inline function set_access_control_request_headers(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'access-control-request-headers', v); return v; }
	@:optional
	public var access_control_request_method(get, set):String;
	inline function get_access_control_request_method():String return js.Syntax.field(cast this, 'access-control-request-method');
	inline function set_access_control_request_method(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'access-control-request-method', v); return v; }
	@:optional
	public var cache_control(get, set):String;
	inline function get_cache_control():String return js.Syntax.field(cast this, 'cache-control');
	inline function set_cache_control(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'cache-control', v); return v; }
	@:optional
	public var cdn_cache_control(get, set):String;
	inline function get_cdn_cache_control():String return js.Syntax.field(cast this, 'cdn-cache-control');
	inline function set_cdn_cache_control(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'cdn-cache-control', v); return v; }
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
	public var content_length(get, set):ts.AnyOf2<String, Float>;
	inline function get_content_length():ts.AnyOf2<String, Float> return js.Syntax.field(cast this, 'content-length');
	inline function set_content_length(v:ts.AnyOf2<String, Float>):ts.AnyOf2<String, Float> { js.Syntax.code("{0}[{1}] = {2}", this, 'content-length', v); return v; }
	@:optional
	public var content_location(get, set):String;
	inline function get_content_location():String return js.Syntax.field(cast this, 'content-location');
	inline function set_content_location(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'content-location', v); return v; }
	@:optional
	public var content_range(get, set):String;
	inline function get_content_range():String return js.Syntax.field(cast this, 'content-range');
	inline function set_content_range(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'content-range', v); return v; }
	@:optional
	public var content_security_policy(get, set):String;
	inline function get_content_security_policy():String return js.Syntax.field(cast this, 'content-security-policy');
	inline function set_content_security_policy(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'content-security-policy', v); return v; }
	@:optional
	public var content_security_policy_report_only(get, set):String;
	inline function get_content_security_policy_report_only():String return js.Syntax.field(cast this, 'content-security-policy-report-only');
	inline function set_content_security_policy_report_only(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'content-security-policy-report-only', v); return v; }
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
	public var if_range(get, set):String;
	inline function get_if_range():String return js.Syntax.field(cast this, 'if-range');
	inline function set_if_range(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'if-range', v); return v; }
	@:optional
	public var if_unmodified_since(get, set):String;
	inline function get_if_unmodified_since():String return js.Syntax.field(cast this, 'if-unmodified-since');
	inline function set_if_unmodified_since(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'if-unmodified-since', v); return v; }
	@:optional
	public var last_modified(get, set):String;
	inline function get_last_modified():String return js.Syntax.field(cast this, 'last-modified');
	inline function set_last_modified(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'last-modified', v); return v; }
	@:optional
	public var max_forwards(get, set):String;
	inline function get_max_forwards():String return js.Syntax.field(cast this, 'max-forwards');
	inline function set_max_forwards(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'max-forwards', v); return v; }
	@:optional
	public var proxy_authenticate(get, set):ts.AnyOf2<String, Array<String>>;
	inline function get_proxy_authenticate():ts.AnyOf2<String, Array<String>> return js.Syntax.field(cast this, 'proxy-authenticate');
	inline function set_proxy_authenticate(v:ts.AnyOf2<String, Array<String>>):ts.AnyOf2<String, Array<String>> { js.Syntax.code("{0}[{1}] = {2}", this, 'proxy-authenticate', v); return v; }
	@:optional
	public var proxy_authorization(get, set):String;
	inline function get_proxy_authorization():String return js.Syntax.field(cast this, 'proxy-authorization');
	inline function set_proxy_authorization(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'proxy-authorization', v); return v; }
	@:optional
	public var public_key_pins(get, set):String;
	inline function get_public_key_pins():String return js.Syntax.field(cast this, 'public-key-pins');
	inline function set_public_key_pins(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'public-key-pins', v); return v; }
	@:optional
	public var public_key_pins_report_only(get, set):String;
	inline function get_public_key_pins_report_only():String return js.Syntax.field(cast this, 'public-key-pins-report-only');
	inline function set_public_key_pins_report_only(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'public-key-pins-report-only', v); return v; }
	@:optional
	public var referrer_policy(get, set):String;
	inline function get_referrer_policy():String return js.Syntax.field(cast this, 'referrer-policy');
	inline function set_referrer_policy(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'referrer-policy', v); return v; }
	@:optional
	public var retry_after(get, set):String;
	inline function get_retry_after():String return js.Syntax.field(cast this, 'retry-after');
	inline function set_retry_after(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'retry-after', v); return v; }
	@:optional
	public var sec_websocket_accept(get, set):String;
	inline function get_sec_websocket_accept():String return js.Syntax.field(cast this, 'sec-websocket-accept');
	inline function set_sec_websocket_accept(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'sec-websocket-accept', v); return v; }
	@:optional
	public var sec_websocket_extensions(get, set):ts.AnyOf2<String, Array<String>>;
	inline function get_sec_websocket_extensions():ts.AnyOf2<String, Array<String>> return js.Syntax.field(cast this, 'sec-websocket-extensions');
	inline function set_sec_websocket_extensions(v:ts.AnyOf2<String, Array<String>>):ts.AnyOf2<String, Array<String>> { js.Syntax.code("{0}[{1}] = {2}", this, 'sec-websocket-extensions', v); return v; }
	@:optional
	public var sec_websocket_key(get, set):String;
	inline function get_sec_websocket_key():String return js.Syntax.field(cast this, 'sec-websocket-key');
	inline function set_sec_websocket_key(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'sec-websocket-key', v); return v; }
	@:optional
	public var sec_websocket_protocol(get, set):ts.AnyOf2<String, Array<String>>;
	inline function get_sec_websocket_protocol():ts.AnyOf2<String, Array<String>> return js.Syntax.field(cast this, 'sec-websocket-protocol');
	inline function set_sec_websocket_protocol(v:ts.AnyOf2<String, Array<String>>):ts.AnyOf2<String, Array<String>> { js.Syntax.code("{0}[{1}] = {2}", this, 'sec-websocket-protocol', v); return v; }
	@:optional
	public var sec_websocket_version(get, set):String;
	inline function get_sec_websocket_version():String return js.Syntax.field(cast this, 'sec-websocket-version');
	inline function set_sec_websocket_version(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'sec-websocket-version', v); return v; }
	@:optional
	public var set_cookie(get, set):ts.AnyOf2<String, Array<String>>;
	inline function get_set_cookie():ts.AnyOf2<String, Array<String>> return js.Syntax.field(cast this, 'set-cookie');
	inline function set_set_cookie(v:ts.AnyOf2<String, Array<String>>):ts.AnyOf2<String, Array<String>> { js.Syntax.code("{0}[{1}] = {2}", this, 'set-cookie', v); return v; }
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
	public var upgrade_insecure_requests(get, set):String;
	inline function get_upgrade_insecure_requests():String return js.Syntax.field(cast this, 'upgrade-insecure-requests');
	inline function set_upgrade_insecure_requests(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'upgrade-insecure-requests', v); return v; }
	@:optional
	public var www_authenticate(get, set):ts.AnyOf2<String, Array<String>>;
	inline function get_www_authenticate():ts.AnyOf2<String, Array<String>> return js.Syntax.field(cast this, 'www-authenticate');
	inline function set_www_authenticate(v:ts.AnyOf2<String, Array<String>>):ts.AnyOf2<String, Array<String>> { js.Syntax.code("{0}[{1}] = {2}", this, 'www-authenticate', v); return v; }
	@:optional
	public var x_content_type_options(get, set):String;
	inline function get_x_content_type_options():String return js.Syntax.field(cast this, 'x-content-type-options');
	inline function set_x_content_type_options(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'x-content-type-options', v); return v; }
	@:optional
	public var x_dns_prefetch_control(get, set):String;
	inline function get_x_dns_prefetch_control():String return js.Syntax.field(cast this, 'x-dns-prefetch-control');
	inline function set_x_dns_prefetch_control(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'x-dns-prefetch-control', v); return v; }
	@:optional
	public var x_frame_options(get, set):String;
	inline function get_x_frame_options():String return js.Syntax.field(cast this, 'x-frame-options');
	inline function set_x_frame_options(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'x-frame-options', v); return v; }
	@:optional
	public var x_xss_protection(get, set):String;
	inline function get_x_xss_protection():String return js.Syntax.field(cast this, 'x-xss-protection');
	inline function set_x_xss_protection(v:String):String { js.Syntax.code("{0}[{1}] = {2}", this, 'x-xss-protection', v); return v; }
}
