package js.html;
extern interface ProgressEventInit extends EventInit {
	@:optional
	var lengthComputable : Bool;
	@:optional
	var loaded : Float;
	@:optional
	var total : Float;
}