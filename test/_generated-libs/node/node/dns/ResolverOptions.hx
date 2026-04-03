package node.dns;

typedef ResolverOptions = {
	/**
		Query timeout in milliseconds, or `-1` to use the default timeout.
	**/
	@:optional
	var timeout : Float;
	/**
		The number of tries the resolver will try contacting each name server before giving up.
	**/
	@:optional
	var tries : Float;
};