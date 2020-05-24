package vscode;

/**
	Signature help represents the signature of something
	callable. There can be multiple signatures but only one
	active and only one active parameter.
**/
@:jsRequire("vscode", "SignatureHelp") extern class SignatureHelp {
	function new();
	/**
		One or more signatures.
	**/
	var signatures : Array<SignatureInformation>;
	/**
		The active signature.
	**/
	var activeSignature : Float;
	/**
		The active parameter of the active signature.
	**/
	var activeParameter : Float;
	static var prototype : SignatureHelp;
}