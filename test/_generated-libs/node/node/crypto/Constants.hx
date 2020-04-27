package node.crypto;
@:jsRequire("crypto", "constants") @valueModuleOnly extern class Constants {
	static var OPENSSL_VERSION_NUMBER : Float;
	/**
		Applies multiple bug workarounds within OpenSSL. See https://www.openssl.org/docs/man1.0.2/ssl/SSL_CTX_set_options.html for detail.
	**/
	static var SSL_OP_ALL : Float;
	/**
		Allows legacy insecure renegotiation between OpenSSL and unpatched clients or servers. See https://www.openssl.org/docs/man1.0.2/ssl/SSL_CTX_set_options.html.
	**/
	static var SSL_OP_ALLOW_UNSAFE_LEGACY_RENEGOTIATION : Float;
	/**
		Attempts to use the server's preferences instead of the client's when selecting a cipher. See https://www.openssl.org/docs/man1.0.2/ssl/SSL_CTX_set_options.html.
	**/
	static var SSL_OP_CIPHER_SERVER_PREFERENCE : Float;
	/**
		Instructs OpenSSL to use Cisco's "speshul" version of DTLS_BAD_VER.
	**/
	static var SSL_OP_CISCO_ANYCONNECT : Float;
	/**
		Instructs OpenSSL to turn on cookie exchange.
	**/
	static var SSL_OP_COOKIE_EXCHANGE : Float;
	/**
		Instructs OpenSSL to add server-hello extension from an early version of the cryptopro draft.
	**/
	static var SSL_OP_CRYPTOPRO_TLSEXT_BUG : Float;
	/**
		Instructs OpenSSL to disable a SSL 3.0/TLS 1.0 vulnerability workaround added in OpenSSL 0.9.6d.
	**/
	static var SSL_OP_DONT_INSERT_EMPTY_FRAGMENTS : Float;
	/**
		Instructs OpenSSL to always use the tmp_rsa key when performing RSA operations.
	**/
	static var SSL_OP_EPHEMERAL_RSA : Float;
	/**
		Allows initial connection to servers that do not support RI.
	**/
	static var SSL_OP_LEGACY_SERVER_CONNECT : Float;
	static var SSL_OP_MICROSOFT_BIG_SSLV3_BUFFER : Float;
	static var SSL_OP_MICROSOFT_SESS_ID_BUG : Float;
	/**
		Instructs OpenSSL to disable the workaround for a man-in-the-middle protocol-version vulnerability in the SSL 2.0 server implementation.
	**/
	static var SSL_OP_MSIE_SSLV2_RSA_PADDING : Float;
	static var SSL_OP_NETSCAPE_CA_DN_BUG : Float;
	static var SSL_OP_NETSCAPE_CHALLENGE_BUG : Float;
	static var SSL_OP_NETSCAPE_DEMO_CIPHER_CHANGE_BUG : Float;
	static var SSL_OP_NETSCAPE_REUSE_CIPHER_CHANGE_BUG : Float;
	/**
		Instructs OpenSSL to disable support for SSL/TLS compression.
	**/
	static var SSL_OP_NO_COMPRESSION : Float;
	static var SSL_OP_NO_QUERY_MTU : Float;
	/**
		Instructs OpenSSL to always start a new session when performing renegotiation.
	**/
	static var SSL_OP_NO_SESSION_RESUMPTION_ON_RENEGOTIATION : Float;
	static var SSL_OP_NO_SSLv2 : Float;
	static var SSL_OP_NO_SSLv3 : Float;
	static var SSL_OP_NO_TICKET : Float;
	static var SSL_OP_NO_TLSv1 : Float;
	static var SSL_OP_NO_TLSv1_1 : Float;
	static var SSL_OP_NO_TLSv1_2 : Float;
	static var SSL_OP_PKCS1_CHECK_1 : Float;
	static var SSL_OP_PKCS1_CHECK_2 : Float;
	/**
		Instructs OpenSSL to always create a new key when using temporary/ephemeral DH parameters.
	**/
	static var SSL_OP_SINGLE_DH_USE : Float;
	/**
		Instructs OpenSSL to always create a new key when using temporary/ephemeral ECDH parameters.
	**/
	static var SSL_OP_SINGLE_ECDH_USE : Float;
	static var SSL_OP_SSLEAY_080_CLIENT_DH_BUG : Float;
	static var SSL_OP_SSLREF2_REUSE_CERT_TYPE_BUG : Float;
	static var SSL_OP_TLS_BLOCK_PADDING_BUG : Float;
	static var SSL_OP_TLS_D5_BUG : Float;
	/**
		Instructs OpenSSL to disable version rollback attack detection.
	**/
	static var SSL_OP_TLS_ROLLBACK_BUG : Float;
	static var ENGINE_METHOD_RSA : Float;
	static var ENGINE_METHOD_DSA : Float;
	static var ENGINE_METHOD_DH : Float;
	static var ENGINE_METHOD_RAND : Float;
	static var ENGINE_METHOD_EC : Float;
	static var ENGINE_METHOD_CIPHERS : Float;
	static var ENGINE_METHOD_DIGESTS : Float;
	static var ENGINE_METHOD_PKEY_METHS : Float;
	static var ENGINE_METHOD_PKEY_ASN1_METHS : Float;
	static var ENGINE_METHOD_ALL : Float;
	static var ENGINE_METHOD_NONE : Float;
	static var DH_CHECK_P_NOT_SAFE_PRIME : Float;
	static var DH_CHECK_P_NOT_PRIME : Float;
	static var DH_UNABLE_TO_CHECK_GENERATOR : Float;
	static var DH_NOT_SUITABLE_GENERATOR : Float;
	static var ALPN_ENABLED : Float;
	static var RSA_PKCS1_PADDING : Float;
	static var RSA_SSLV23_PADDING : Float;
	static var RSA_NO_PADDING : Float;
	static var RSA_PKCS1_OAEP_PADDING : Float;
	static var RSA_X931_PADDING : Float;
	static var RSA_PKCS1_PSS_PADDING : Float;
	/**
		Sets the salt length for RSA_PKCS1_PSS_PADDING to the digest size when signing or verifying.
	**/
	static var RSA_PSS_SALTLEN_DIGEST : Float;
	/**
		Sets the salt length for RSA_PKCS1_PSS_PADDING to the maximum permissible value when signing data.
	**/
	static var RSA_PSS_SALTLEN_MAX_SIGN : Float;
	/**
		Causes the salt length for RSA_PKCS1_PSS_PADDING to be determined automatically when verifying a signature.
	**/
	static var RSA_PSS_SALTLEN_AUTO : Float;
	static var POINT_CONVERSION_COMPRESSED : Float;
	static var POINT_CONVERSION_UNCOMPRESSED : Float;
	static var POINT_CONVERSION_HYBRID : Float;
	/**
		Specifies the built-in default cipher list used by Node.js (colon-separated values).
	**/
	static var defaultCoreCipherList : String;
	/**
		Specifies the active default cipher list used by the current Node.js process  (colon-separated values).
	**/
	static var defaultCipherList : String;
}