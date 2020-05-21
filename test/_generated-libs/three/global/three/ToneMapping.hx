package global.three;

@:enum @:native("THREE") extern abstract ToneMapping(Int) from Int to Int {
	var NoToneMapping : ToneMapping;
	var LinearToneMapping : ToneMapping;
	var ReinhardToneMapping : ToneMapping;
	var Uncharted2ToneMapping : ToneMapping;
	var CineonToneMapping : ToneMapping;
}