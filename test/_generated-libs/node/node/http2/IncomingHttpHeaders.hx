package node.http2;

typedef IncomingHttpHeaders = {
	@:optional
	@:native(":path")
	var ColonPath : String;
	@:optional
	@:native(":method")
	var ColonMethod : String;
	@:optional
	@:native(":authority")
	var ColonAuthority : String;
	@:optional
	@:native(":scheme")
	var ColonScheme : String;
	@:optional
	var accept : String;
	@:optional
	@:native("accept-patch")
	var accept_patch : String;
	@:optional
	@:native("accept-ranges")
	var accept_ranges : String;
	@:optional
	@:native("access-control-allow-credentials")
	var access_control_allow_credentials : String;
	@:optional
	@:native("access-control-allow-headers")
	var access_control_allow_headers : String;
	@:optional
	@:native("access-control-allow-methods")
	var access_control_allow_methods : String;
	@:optional
	@:native("access-control-allow-origin")
	var access_control_allow_origin : String;
	@:optional
	@:native("access-control-expose-headers")
	var access_control_expose_headers : String;
	@:optional
	@:native("access-control-max-age")
	var access_control_max_age : String;
	@:optional
	var age : String;
	@:optional
	var allow : String;
	@:optional
	@:native("alt-svc")
	var alt_svc : String;
	@:optional
	var authorization : String;
	@:optional
	@:native("cache-control")
	var cache_control : String;
	@:optional
	var connection : String;
	@:optional
	@:native("content-disposition")
	var content_disposition : String;
	@:optional
	@:native("content-encoding")
	var content_encoding : String;
	@:optional
	@:native("content-language")
	var content_language : String;
	@:optional
	@:native("content-length")
	var content_length : String;
	@:optional
	@:native("content-location")
	var content_location : String;
	@:optional
	@:native("content-range")
	var content_range : String;
	@:optional
	@:native("content-type")
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
	@:optional
	@:native("if-match")
	var if_match : String;
	@:optional
	@:native("if-modified-since")
	var if_modified_since : String;
	@:optional
	@:native("if-none-match")
	var if_none_match : String;
	@:optional
	@:native("if-unmodified-since")
	var if_unmodified_since : String;
	@:optional
	@:native("last-modified")
	var last_modified : String;
	@:optional
	var location : String;
	@:optional
	var pragma : String;
	@:optional
	@:native("proxy-authenticate")
	var proxy_authenticate : String;
	@:optional
	@:native("proxy-authorization")
	var proxy_authorization : String;
	@:optional
	@:native("public-key-pins")
	var public_key_pins : String;
	@:optional
	var range : String;
	@:optional
	var referer : String;
	@:optional
	@:native("retry-after")
	var retry_after : String;
	@:optional
	@:native("set-cookie")
	var set_cookie : Array<String>;
	@:optional
	@:native("strict-transport-security")
	var strict_transport_security : String;
	@:optional
	var tk : String;
	@:optional
	var trailer : String;
	@:optional
	@:native("transfer-encoding")
	var transfer_encoding : String;
	@:optional
	var upgrade : String;
	@:optional
	@:native("user-agent")
	var user_agent : String;
	@:optional
	var vary : String;
	@:optional
	var via : String;
	@:optional
	var warning : String;
	@:optional
	@:native("www-authenticate")
	var www_authenticate : String;
};