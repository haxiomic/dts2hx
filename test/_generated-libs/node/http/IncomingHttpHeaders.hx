package node.http;
extern typedef IncomingHttpHeaders = {
	@:optional
	var accept : String;
	@:native("accept-patch")
	@:optional
	var accept_patch : String;
	@:native("accept-ranges")
	@:optional
	var accept_ranges : String;
	@:native("access-control-allow-credentials")
	@:optional
	var access_control_allow_credentials : String;
	@:native("access-control-allow-headers")
	@:optional
	var access_control_allow_headers : String;
	@:native("access-control-allow-methods")
	@:optional
	var access_control_allow_methods : String;
	@:native("access-control-allow-origin")
	@:optional
	var access_control_allow_origin : String;
	@:native("access-control-expose-headers")
	@:optional
	var access_control_expose_headers : String;
	@:native("access-control-max-age")
	@:optional
	var access_control_max_age : String;
	@:optional
	var age : String;
	@:optional
	var allow : String;
	@:native("alt-svc")
	@:optional
	var alt_svc : String;
	@:optional
	var authorization : String;
	@:native("cache-control")
	@:optional
	var cache_control : String;
	@:optional
	var connection : String;
	@:native("content-disposition")
	@:optional
	var content_disposition : String;
	@:native("content-encoding")
	@:optional
	var content_encoding : String;
	@:native("content-language")
	@:optional
	var content_language : String;
	@:native("content-length")
	@:optional
	var content_length : String;
	@:native("content-location")
	@:optional
	var content_location : String;
	@:native("content-range")
	@:optional
	var content_range : String;
	@:native("content-type")
	@:optional
	var content_type : String;
	@:optional
	var cookie : String;
	@:optional
	var date : String;
	@:optional
	var expect : String;
	@:optional
	var expires : String;
	@:optional
	var forwarded : String;
	@:optional
	var from : String;
	@:optional
	var host : String;
	@:native("if-match")
	@:optional
	var if_match : String;
	@:native("if-modified-since")
	@:optional
	var if_modified_since : String;
	@:native("if-none-match")
	@:optional
	var if_none_match : String;
	@:native("if-unmodified-since")
	@:optional
	var if_unmodified_since : String;
	@:native("last-modified")
	@:optional
	var last_modified : String;
	@:optional
	var location : String;
	@:optional
	var pragma : String;
	@:native("proxy-authenticate")
	@:optional
	var proxy_authenticate : String;
	@:native("proxy-authorization")
	@:optional
	var proxy_authorization : String;
	@:native("public-key-pins")
	@:optional
	var public_key_pins : String;
	@:optional
	var range : String;
	@:optional
	var referer : String;
	@:native("retry-after")
	@:optional
	var retry_after : String;
	@:native("set-cookie")
	@:optional
	var set_cookie : std.Array<String>;
	@:native("strict-transport-security")
	@:optional
	var strict_transport_security : String;
	@:optional
	var tk : String;
	@:optional
	var trailer : String;
	@:native("transfer-encoding")
	@:optional
	var transfer_encoding : String;
	@:optional
	var upgrade : String;
	@:native("user-agent")
	@:optional
	var user_agent : String;
	@:optional
	var vary : String;
	@:optional
	var via : String;
	@:optional
	var warning : String;
	@:native("www-authenticate")
	@:optional
	var www_authenticate : String;
};