package node.tls;

typedef Certificate = {
	/**
		Country code.
	**/
	@:optional
	var C : ts.AnyOf2<String, Array<String>>;
	/**
		Street.
	**/
	@:optional
	var ST : ts.AnyOf2<String, Array<String>>;
	/**
		Locality.
	**/
	@:optional
	var L : ts.AnyOf2<String, Array<String>>;
	/**
		Organization.
	**/
	@:optional
	var O : ts.AnyOf2<String, Array<String>>;
	/**
		Organizational unit.
	**/
	@:optional
	var OU : ts.AnyOf2<String, Array<String>>;
	/**
		Common name.
	**/
	@:optional
	var CN : ts.AnyOf2<String, Array<String>>;
};