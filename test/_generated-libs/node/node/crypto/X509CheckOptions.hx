package node.crypto;

typedef X509CheckOptions = {
	@:optional
	var subject : String;
	@:optional
	var wildcards : Bool;
	@:optional
	var partialWildcards : Bool;
	@:optional
	var multiLabelWildcards : Bool;
	@:optional
	var singleLabelSubdomains : Bool;
};