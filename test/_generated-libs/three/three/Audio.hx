package three;

@:jsRequire("three", "Audio") extern class Audio extends Object3D {
	function new(listener:AudioListener);
	var context : js.html.audio.AudioContext;
	var gain : js.html.audio.GainNode;
	var autoplay : Bool;
	var buffer : Null<Audio>;
	var detune : Float;
	var loop : Bool;
	var startTime : Float;
	var offset : Float;
	var playbackRate : Float;
	var isPlaying : Bool;
	var hasPlaybackControl : Bool;
	var sourceType : String;
	var source : js.html.audio.AudioBufferSourceNode;
	var filters : Array<Dynamic>;
	function getOutput():js.html.audio.GainNode;
	function setNodeSource(audioNode:js.html.audio.AudioBufferSourceNode):Audio;
	function setMediaElementSource(mediaElement:js.html.audio.MediaElementAudioSourceNode):Audio;
	function setBuffer(audioBuffer:AudioBuffer):Audio;
	function play():Audio;
	function onEnded():Void;
	function pause():Audio;
	function stop():Audio;
	function connect():Audio;
	function disconnect():Audio;
	function setDetune(value:Float):Audio;
	function getDetune():Float;
	function getFilters():Array<Dynamic>;
	@:overload(function(filter:Dynamic):Audio { })
	function setFilter(value:Array<Dynamic>):Audio;
	function getFilter():Dynamic;
	function setPlaybackRate(value:Float):Audio;
	function getPlaybackRate():Float;
	function getLoop():Bool;
	function setLoop(value:Bool):Void;
	function getVolume():Float;
	function setVolume(value:Float):Audio;
	function load(file:String):Audio;
	function copy(source:Audio, ?recursive:Bool):Audio;
	static var prototype : Audio;
}