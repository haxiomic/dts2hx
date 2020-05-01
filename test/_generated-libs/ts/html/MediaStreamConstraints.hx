package ts.html;
typedef MediaStreamConstraints = {
	@:optional
	var audio : ts.AnyOf2<Bool, MediaTrackConstraints>;
	@:optional
	var peerIdentity : String;
	@:optional
	var video : ts.AnyOf2<Bool, MediaTrackConstraints>;
};