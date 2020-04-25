package node.http;
extern interface IncomingHttpHeaders {
	@:optional
	var accept : Null<String>;
	@:native("accept-patch")
	@:optional
	var accept_patch : Null<String>;
	@:native("accept-ranges")
	@:optional
	var accept_ranges : Null<String>;
	@:native("access-control-allow-credentials")
	@:optional
	var access_control_allow_credentials : Null<String>;
	@:native("access-control-allow-headers")
	@:optional
	var access_control_allow_headers : Null<String>;
	@:native("access-control-allow-methods")
	@:optional
	var access_control_allow_methods : Null<String>;
	@:native("access-control-allow-origin")
	@:optional
	var access_control_allow_origin : Null<String>;
	@:native("access-control-expose-headers")
	@:optional
	var access_control_expose_headers : Null<String>;
	@:native("access-control-max-age")
	@:optional
	var access_control_max_age : Null<String>;
	@:optional
	var age : Null<String>;
	@:optional
	var allow : Null<String>;
	@:native("alt-svc")
	@:optional
	var alt_svc : Null<String>;
	@:optional
	var authorization : Null<String>;
	@:native("cache-control")
	@:optional
	var cache_control : Null<String>;
	@:optional
	var connection : Null<String>;
	@:native("content-disposition")
	@:optional
	var content_disposition : Null<String>;
	@:native("content-encoding")
	@:optional
	var content_encoding : Null<String>;
	@:native("content-language")
	@:optional
	var content_language : Null<String>;
	@:native("content-length")
	@:optional
	var content_length : Null<String>;
	@:native("content-location")
	@:optional
	var content_location : Null<String>;
	@:native("content-range")
	@:optional
	var content_range : Null<String>;
	@:native("content-type")
	@:optional
	var content_type : Null<String>;
	@:optional
	var cookie : Null<String>;
	@:optional
	var date : Null<String>;
	@:optional
	var expect : Null<String>;
	@:optional
	var expires : Null<String>;
	@:optional
	var forwarded : Null<String>;
	@:optional
	var from : Null<String>;
	@:optional
	var host : Null<String>;
	@:native("if-match")
	@:optional
	var if_match : Null<String>;
	@:native("if-modified-since")
	@:optional
	var if_modified_since : Null<String>;
	@:native("if-none-match")
	@:optional
	var if_none_match : Null<String>;
	@:native("if-unmodified-since")
	@:optional
	var if_unmodified_since : Null<String>;
	@:native("last-modified")
	@:optional
	var last_modified : Null<String>;
	@:optional
	var location : Null<String>;
	@:optional
	var pragma : Null<String>;
	@:native("proxy-authenticate")
	@:optional
	var proxy_authenticate : Null<String>;
	@:native("proxy-authorization")
	@:optional
	var proxy_authorization : Null<String>;
	@:native("public-key-pins")
	@:optional
	var public_key_pins : Null<String>;
	@:optional
	var range : Null<String>;
	@:optional
	var referer : Null<String>;
	@:native("retry-after")
	@:optional
	var retry_after : Null<String>;
	@:native("set-cookie")
	@:optional
	var set_cookie : Null<std.Array<String>>;
	@:native("strict-transport-security")
	@:optional
	var strict_transport_security : Null<String>;
	@:optional
	var tk : Null<String>;
	@:optional
	var trailer : Null<String>;
	@:native("transfer-encoding")
	@:optional
	var transfer_encoding : Null<String>;
	@:optional
	var upgrade : Null<String>;
	@:native("user-agent")
	@:optional
	var user_agent : Null<String>;
	@:optional
	var vary : Null<String>;
	@:optional
	var via : Null<String>;
	@:optional
	var warning : Null<String>;
	@:native("www-authenticate")
	@:optional
	var www_authenticate : Null<String>;
}