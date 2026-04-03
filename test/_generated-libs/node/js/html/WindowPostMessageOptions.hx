package js.html;

typedef WindowPostMessageOptions = {
	@:optional
	var targetOrigin : String;
	@:optional
	var transfer : Array<Transferable>;
};