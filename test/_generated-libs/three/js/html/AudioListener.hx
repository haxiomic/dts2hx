package js.html;
/**
	The position and orientation of the unique person listening to the audio scene, and is used in audio spatialization. All PannerNodes spatialize in relation to the AudioListener stored in the BaseAudioContext.listener attribute.
**/
@:native("AudioListener") @tsInterface extern class AudioListener {
	function new();
	final forwardX : js.lib.AudioParam;
	final forwardY : js.lib.AudioParam;
	final forwardZ : js.lib.AudioParam;
	final positionX : js.lib.AudioParam;
	final positionY : js.lib.AudioParam;
	final positionZ : js.lib.AudioParam;
	final upX : js.lib.AudioParam;
	final upY : js.lib.AudioParam;
	final upZ : js.lib.AudioParam;
	function setOrientation(x:Float, y:Float, z:Float, xUp:Float, yUp:Float, zUp:Float):Void;
	function setPosition(x:Float, y:Float, z:Float):Void;
	static var prototype : AudioListener;
}