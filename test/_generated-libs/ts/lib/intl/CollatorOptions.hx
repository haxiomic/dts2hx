package ts.lib.intl;
extern typedef CollatorOptions = {
	@:optional
	var usage : String;
	@:optional
	var localeMatcher : String;
	@:optional
	var numeric : Bool;
	@:optional
	var caseFirst : String;
	@:optional
	var sensitivity : String;
	@:optional
	var ignorePunctuation : Bool;
};