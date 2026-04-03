package js.html;

typedef GetHTMLOptions = {
	@:optional
	var serializableShadowRoots : Bool;
	@:optional
	var shadowRoots : Array<js.html.ShadowRoot>;
};