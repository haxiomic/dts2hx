package node.http;

typedef IncomingHttpHeadersTypedef = {
	@:optional
	var accept : String;
	@:optional
	@:native("accept-encoding")
	var accept_encoding : String;
	@:optional
	@:native("accept-language")
	var accept_language : String;
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
	@:native("access-control-request-headers")
	var access_control_request_headers : String;
	@:optional
	@:native("access-control-request-method")
	var access_control_request_method : String;
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
	var etag : String;
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
	var origin : String;
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
	@:native("sec-fetch-site")
	var sec_fetch_site : String;
	@:optional
	@:native("sec-fetch-mode")
	var sec_fetch_mode : String;
	@:optional
	@:native("sec-fetch-user")
	var sec_fetch_user : String;
	@:optional
	@:native("sec-fetch-dest")
	var sec_fetch_dest : String;
	@:optional
	@:native("sec-websocket-accept")
	var sec_websocket_accept : String;
	@:optional
	@:native("sec-websocket-extensions")
	var sec_websocket_extensions : String;
	@:optional
	@:native("sec-websocket-key")
	var sec_websocket_key : String;
	@:optional
	@:native("sec-websocket-protocol")
	var sec_websocket_protocol : String;
	@:optional
	@:native("sec-websocket-version")
	var sec_websocket_version : String;
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