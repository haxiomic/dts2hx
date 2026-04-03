package node.crypto;

@:jsRequire("crypto", "constants") @valueModuleOnly extern class Constants {
	static final OPENSSL_VERSION_NUMBER : Float;
	/**
		Applies multiple bug workarounds within OpenSSL. See https://www.openssl.org/docs/man1.0.2/ssl/SSL_CTX_set_options.html for detail.
	**/
	static final SSL_OP_ALL : Float;
	/**
		Instructs OpenSSL to allow a non-[EC]DHE-based key exchange mode for TLS v1.3
	**/
	static final SSL_OP_ALLOW_NO_DHE_KEX : Float;
	/**
		Allows legacy insecure renegotiation between OpenSSL and unpatched clients or servers. See https://www.openssl.org/docs/man1.0.2/ssl/SSL_CTX_set_options.html.
	**/
	static final SSL_OP_ALLOW_UNSAFE_LEGACY_RENEGOTIATION : Float;
	/**
		Attempts to use the server's preferences instead of the client's when selecting a cipher. See https://www.openssl.org/docs/man1.0.2/ssl/SSL_CTX_set_options.html.
	**/
	static final SSL_OP_CIPHER_SERVER_PREFERENCE : Float;
	/**
		Instructs OpenSSL to use Cisco's version identifier of DTLS_BAD_VER.
	**/
	static final SSL_OP_CISCO_ANYCONNECT : Float;
	/**
		Instructs OpenSSL to turn on cookie exchange.
	**/
	static final SSL_OP_COOKIE_EXCHANGE : Float;
	/**
		Instructs OpenSSL to add server-hello extension from an early version of the cryptopro draft.
	**/
	static final SSL_OP_CRYPTOPRO_TLSEXT_BUG : Float;
	/**
		Instructs OpenSSL to disable a SSL 3.0/TLS 1.0 vulnerability workaround added in OpenSSL 0.9.6d.
	**/
	static final SSL_OP_DONT_INSERT_EMPTY_FRAGMENTS : Float;
	/**
		Allows initial connection to servers that do not support RI.
	**/
	static final SSL_OP_LEGACY_SERVER_CONNECT : Float;
	/**
		Instructs OpenSSL to disable support for SSL/TLS compression.
	**/
	static final SSL_OP_NO_COMPRESSION : Float;
	/**
		Instructs OpenSSL to disable encrypt-then-MAC.
	**/
	static final SSL_OP_NO_ENCRYPT_THEN_MAC : Float;
	static final SSL_OP_NO_QUERY_MTU : Float;
	/**
		Instructs OpenSSL to disable renegotiation.
	**/
	static final SSL_OP_NO_RENEGOTIATION : Float;
	/**
		Instructs OpenSSL to always start a new session when performing renegotiation.
	**/
	static final SSL_OP_NO_SESSION_RESUMPTION_ON_RENEGOTIATION : Float;
	/**
		Instructs OpenSSL to turn off SSL v2
	**/
	static final SSL_OP_NO_SSLv2 : Float;
	/**
		Instructs OpenSSL to turn off SSL v3
	**/
	static final SSL_OP_NO_SSLv3 : Float;
	/**
		Instructs OpenSSL to disable use of RFC4507bis tickets.
	**/
	static final SSL_OP_NO_TICKET : Float;
	/**
		Instructs OpenSSL to turn off TLS v1
	**/
	static final SSL_OP_NO_TLSv1 : Float;
	/**
		Instructs OpenSSL to turn off TLS v1.1
	**/
	static final SSL_OP_NO_TLSv1_1 : Float;
	/**
		Instructs OpenSSL to turn off TLS v1.2
	**/
	static final SSL_OP_NO_TLSv1_2 : Float;
	/**
		Instructs OpenSSL to turn off TLS v1.3
	**/
	static final SSL_OP_NO_TLSv1_3 : Float;
	/**
		Instructs OpenSSL server to prioritize ChaCha20-Poly1305 when the client does. This option has no effect if `SSL_OP_CIPHER_SERVER_PREFERENCE` is not enabled.
	**/
	static final SSL_OP_PRIORITIZE_CHACHA : Float;
	/**
		Instructs OpenSSL to disable version rollback attack detection.
	**/
	static final SSL_OP_TLS_ROLLBACK_BUG : Float;
	static final ENGINE_METHOD_RSA : Float;
	static final ENGINE_METHOD_DSA : Float;
	static final ENGINE_METHOD_DH : Float;
	static final ENGINE_METHOD_RAND : Float;
	static final ENGINE_METHOD_EC : Float;
	static final ENGINE_METHOD_CIPHERS : Float;
	static final ENGINE_METHOD_DIGESTS : Float;
	static final ENGINE_METHOD_PKEY_METHS : Float;
	static final ENGINE_METHOD_PKEY_ASN1_METHS : Float;
	static final ENGINE_METHOD_ALL : Float;
	static final ENGINE_METHOD_NONE : Float;
	static final DH_CHECK_P_NOT_SAFE_PRIME : Float;
	static final DH_CHECK_P_NOT_PRIME : Float;
	static final DH_UNABLE_TO_CHECK_GENERATOR : Float;
	static final DH_NOT_SUITABLE_GENERATOR : Float;
	static final RSA_PKCS1_PADDING : Float;
	static final RSA_SSLV23_PADDING : Float;
	static final RSA_NO_PADDING : Float;
	static final RSA_PKCS1_OAEP_PADDING : Float;
	static final RSA_X931_PADDING : Float;
	static final RSA_PKCS1_PSS_PADDING : Float;
	/**
		Sets the salt length for RSA_PKCS1_PSS_PADDING to the digest size when signing or verifying.
	**/
	static final RSA_PSS_SALTLEN_DIGEST : Float;
	/**
		Sets the salt length for RSA_PKCS1_PSS_PADDING to the maximum permissible value when signing data.
	**/
	static final RSA_PSS_SALTLEN_MAX_SIGN : Float;
	/**
		Causes the salt length for RSA_PKCS1_PSS_PADDING to be determined automatically when verifying a signature.
	**/
	static final RSA_PSS_SALTLEN_AUTO : Float;
	static final POINT_CONVERSION_COMPRESSED : Float;
	static final POINT_CONVERSION_UNCOMPRESSED : Float;
	static final POINT_CONVERSION_HYBRID : Float;
	/**
		Specifies the built-in default cipher list used by Node.js (colon-separated values).
	**/
	static final defaultCoreCipherList : String;
	/**
		Specifies the active default cipher list used by the current Node.js process  (colon-separated values).
	**/
	static final defaultCipherList : String;
}