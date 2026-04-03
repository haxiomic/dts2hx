package js.html;

typedef SubmitEventInit = {
	@:optional
	var submitter : js.html.Element;
	@:optional
	var bubbles : Bool;
	@:optional
	var cancelable : Bool;
	@:optional
	var composed : Bool;
};