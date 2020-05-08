package ts.html;
/**
	The position and orientation of the unique person listening to the audio scene, and is used in audio spatialization. All PannerNodes spatialize in relation to the AudioListener stored in the BaseAudioContext.listener attribute.
**/
typedef IAudioListener = {
	final forwardX : AudioParam;
	final forwardY : AudioParam;
	final forwardZ : AudioParam;
	final positionX : AudioParam;
	final positionY : AudioParam;
	final positionZ : AudioParam;
	final upX : AudioParam;
	final upY : AudioParam;
	final upZ : AudioParam;
	function setOrientation(x:Float, y:Float, z:Float, xUp:Float, yUp:Float, zUp:Float):Void;
	function setPosition(x:Float, y:Float, z:Float):Void;
};