package ts.html;
/**
	The position and orientation of the unique person listening to the audio scene, and is used in audio spatialization. All PannerNodes spatialize in relation to the AudioListener stored in the BaseAudioContext.listener attribute.
**/
@:native("AudioListener") extern class AudioListener {
	function new();
	final forwardX : ts.lib.IAudioParam;
	final forwardY : ts.lib.IAudioParam;
	final forwardZ : ts.lib.IAudioParam;
	final positionX : ts.lib.IAudioParam;
	final positionY : ts.lib.IAudioParam;
	final positionZ : ts.lib.IAudioParam;
	final upX : ts.lib.IAudioParam;
	final upY : ts.lib.IAudioParam;
	final upZ : ts.lib.IAudioParam;
	function setOrientation(x:Float, y:Float, z:Float, xUp:Float, yUp:Float, zUp:Float):Void;
	function setPosition(x:Float, y:Float, z:Float):Void;
	static var prototype : IAudioListener;
}