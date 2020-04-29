package js.html;
/**
	The position and orientation of the unique person listening to the audio scene, and is used in audio spatialization. All PannerNodes spatialize in relation to the AudioListener stored in the BaseAudioContext.listener attribute.
**/
@:native("AudioListener") extern class AudioListener {
	function new();
	final forwardX : js.lib.IAudioParam;
	final forwardY : js.lib.IAudioParam;
	final forwardZ : js.lib.IAudioParam;
	final positionX : js.lib.IAudioParam;
	final positionY : js.lib.IAudioParam;
	final positionZ : js.lib.IAudioParam;
	final upX : js.lib.IAudioParam;
	final upY : js.lib.IAudioParam;
	final upZ : js.lib.IAudioParam;
	function setOrientation(x:Float, y:Float, z:Float, xUp:Float, yUp:Float, zUp:Float):Void;
	function setPosition(x:Float, y:Float, z:Float):Void;
	static var prototype : IAudioListener;
}