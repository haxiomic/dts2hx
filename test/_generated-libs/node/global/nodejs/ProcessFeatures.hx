package global.nodejs;

typedef ProcessFeatures = {
	/**
		A boolean value that is `true` if the current Node.js build is caching builtin modules.
	**/
	final cached_builtins : Bool;
	/**
		A boolean value that is `true` if the current Node.js build is a debug build.
	**/
	final debug : Bool;
	/**
		A boolean value that is `true` if the current Node.js build includes the inspector.
	**/
	final inspector : Bool;
	/**
		A boolean value that is `true` if the current Node.js build includes support for IPv6.
	**/
	final ipv6 : Bool;
	/**
		A boolean value that is `true` if the current Node.js build supports
		[loading ECMAScript modules using `require()`](https://nodejs.org/docs/latest-v20.x/api/modules.html#loading-ecmascript-modules-using-require).
	**/
	final require_module : Bool;
	/**
		A boolean value that is `true` if the current Node.js build includes support for TLS.
	**/
	final tls : Bool;
	/**
		A boolean value that is `true` if the current Node.js build includes support for ALPN in TLS.
	**/
	final tls_alpn : Bool;
	/**
		A boolean value that is `true` if the current Node.js build includes support for OCSP in TLS.
	**/
	final tls_ocsp : Bool;
	/**
		A boolean value that is `true` if the current Node.js build includes support for SNI in TLS.
	**/
	final tls_sni : Bool;
	/**
		A boolean value that is `true` if the current Node.js build includes support for libuv.
	**/
	final uv : Bool;
};