package js.html;
/**
	PeriodicWave has no inputs or outputs; it is used to define custom oscillators when calling OscillatorNode.setPeriodicWave(). The PeriodicWave itself is created/returned by AudioContext.createPeriodicWave().
**/
@:native("PeriodicWave") extern class PeriodicWave {
	function new(context:js.lib.IBaseAudioContext, ?options:PeriodicWaveOptions);
	static var prototype : IPeriodicWave;
}