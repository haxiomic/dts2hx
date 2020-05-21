package global.three;

@:native("THREE.Audio") extern class Audio extends Object3D {
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
	function applyQuaternion(quaternion:Quaternion):Audio;
	/**
		Rotate an object along an axis in object space. The axis is assumed to be normalized.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):Audio;
	/**
		Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):Audio;
	function rotateX(angle:Float):Audio;
	function rotateY(angle:Float):Audio;
	function rotateZ(angle:Float):Audio;
	function translateOnAxis(axis:Vector3, distance:Float):Audio;
	/**
		Translates object along x axis by distance.
	**/
	function translateX(distance:Float):Audio;
	/**
		Translates object along y axis by distance.
	**/
	function translateY(distance:Float):Audio;
	/**
		Translates object along z axis by distance.
	**/
	function translateZ(distance:Float):Audio;
	/**
		Adds object as child of this object.
	**/
	function add(object:haxe.extern.Rest<Object3D>):Audio;
	/**
		Removes object as child of this object.
	**/
	function remove(object:haxe.extern.Rest<Object3D>):Audio;
	/**
		Adds object as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D):Audio;
	function clone(?recursive:Bool):Audio;
	function copy(source:Audio, ?recursive:Bool):Audio;
	static var prototype : Audio;
}