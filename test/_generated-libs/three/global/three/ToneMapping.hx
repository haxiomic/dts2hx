package global.three;

@:enum @:native("THREE") extern abstract ToneMapping(Any) from Any to Any {
	var NoToneMapping : ToneMapping;
	var LinearToneMapping : ToneMapping;
	var ReinhardToneMapping : ToneMapping;
	var Uncharted2ToneMapping : ToneMapping;
	var CineonToneMapping : ToneMapping;
}