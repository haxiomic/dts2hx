package js.html;
extern typedef ProgressEventInit = EventInit & { @:optional
	var lengthComputable : Bool; @:optional
	var loaded : Float; @:optional
	var total : Float; };