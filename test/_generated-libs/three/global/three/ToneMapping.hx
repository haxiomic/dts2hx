package global.three;

@:enum @:native("THREE") extern abstract ToneMapping(Int) from Int to Int {
	final NoToneMapping : ToneMapping;
	final LinearToneMapping : ToneMapping;
	final ReinhardToneMapping : ToneMapping;
	final Uncharted2ToneMapping : ToneMapping;
	final CineonToneMapping : ToneMapping;
}