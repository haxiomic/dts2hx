package node.http;

typedef OutgoingHttpHeadersTypedef = {
	@:optional
	var accept : ts.AnyOf2<String, Array<String>>;
	@:optional
	@:native("accept-charset")
	var accept_charset : ts.AnyOf2<String, Array<String>>;
	@:optional
	@:native("accept-encoding")
	var accept_encoding : ts.AnyOf2<String, Array<String>>;
	@:optional
	@:native("accept-language")
	var accept_language : ts.AnyOf2<String, Array<String>>;
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
	var authorization : String;
	@:optional
	@:native("cache-control")
	var cache_control : String;
	@:optional
	@:native("cdn-cache-control")
	var cdn_cache_control : String;
	@:optional
	var connection : ts.AnyOf2<String, Array<String>>;
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
	var content_length : ts.AnyOf2<String, Float>;
	@:optional
	@:native("content-location")
	var content_location : String;
	@:optional
	@:native("content-range")
	var content_range : String;
	@:optional
	@:native("content-security-policy")
	var content_security_policy : String;
	@:optional
	@:native("content-security-policy-report-only")
	var content_security_policy_report_only : String;
	@:optional
	var cookie : ts.AnyOf2<String, Array<String>>;
	@:optional
	var dav : ts.AnyOf2<String, Array<String>>;
	@:optional
	var dnt : String;
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
	@:native("if-range")
	var if_range : String;
	@:optional
	@:native("if-unmodified-since")
	var if_unmodified_since : String;
	@:optional
	@:native("last-modified")
	var last_modified : String;
	@:optional
	var link : ts.AnyOf2<String, Array<String>>;
	@:optional
	var location : String;
	@:optional
	@:native("max-forwards")
	var max_forwards : String;
	@:optional
	var origin : String;
	@:optional
	var pragma : ts.AnyOf2<String, Array<String>>;
	@:optional
	@:native("proxy-authenticate")
	var proxy_authenticate : ts.AnyOf2<String, Array<String>>;
	@:optional
	@:native("proxy-authorization")
	var proxy_authorization : String;
	@:optional
	@:native("public-key-pins")
	var public_key_pins : String;
	@:optional
	@:native("public-key-pins-report-only")
	var public_key_pins_report_only : String;
	@:optional
	var range : String;
	@:optional
	var referer : String;
	@:optional
	@:native("referrer-policy")
	var referrer_policy : String;
	@:optional
	var refresh : String;
	@:optional
	@:native("retry-after")
	var retry_after : String;
	@:optional
	@:native("sec-websocket-accept")
	var sec_websocket_accept : String;
	@:optional
	@:native("sec-websocket-extensions")
	var sec_websocket_extensions : ts.AnyOf2<String, Array<String>>;
	@:optional
	@:native("sec-websocket-key")
	var sec_websocket_key : String;
	@:optional
	@:native("sec-websocket-protocol")
	var sec_websocket_protocol : ts.AnyOf2<String, Array<String>>;
	@:optional
	@:native("sec-websocket-version")
	var sec_websocket_version : String;
	@:optional
	var server : String;
	@:optional
	@:native("set-cookie")
	var set_cookie : ts.AnyOf2<String, Array<String>>;
	@:optional
	@:native("strict-transport-security")
	var strict_transport_security : String;
	@:optional
	var te : String;
	@:optional
	var trailer : String;
	@:optional
	@:native("transfer-encoding")
	var transfer_encoding : String;
	@:optional
	@:native("user-agent")
	var user_agent : String;
	@:optional
	var upgrade : String;
	@:optional
	@:native("upgrade-insecure-requests")
	var upgrade_insecure_requests : String;
	@:optional
	var vary : String;
	@:optional
	var via : ts.AnyOf2<String, Array<String>>;
	@:optional
	var warning : String;
	@:optional
	@:native("www-authenticate")
	var www_authenticate : ts.AnyOf2<String, Array<String>>;
	@:optional
	@:native("x-content-type-options")
	var x_content_type_options : String;
	@:optional
	@:native("x-dns-prefetch-control")
	var x_dns_prefetch_control : String;
	@:optional
	@:native("x-frame-options")
	var x_frame_options : String;
	@:optional
	@:native("x-xss-protection")
	var x_xss_protection : String;
};