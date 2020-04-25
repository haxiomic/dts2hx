package js.lib.intl;
extern interface CollatorOptions {
	@:optional
	var usage : Null<String>;
	@:optional
	var localeMatcher : Null<String>;
	@:optional
	var numeric : Null<Bool>;
	@:optional
	var caseFirst : Null<String>;
	@:optional
	var sensitivity : Null<String>;
	@:optional
	var ignorePunctuation : Null<Bool>;
}