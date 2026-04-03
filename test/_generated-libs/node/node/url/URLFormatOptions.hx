package node.url;

typedef URLFormatOptions = {
	/**
		`true` if the serialized URL string should include the username and password, `false` otherwise.
	**/
	@:optional
	var auth : Bool;
	/**
		`true` if the serialized URL string should include the fragment, `false` otherwise.
	**/
	@:optional
	var fragment : Bool;
	/**
		`true` if the serialized URL string should include the search query, `false` otherwise.
	**/
	@:optional
	var search : Bool;
	/**
		`true` if Unicode characters appearing in the host component of the URL string should be encoded directly as opposed to
		being Punycode encoded.
	**/
	@:optional
	var unicode : Bool;
};