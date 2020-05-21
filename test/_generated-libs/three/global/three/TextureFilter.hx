package global.three;

@:enum @:native("THREE") extern abstract TextureFilter(Int) from Int to Int {
	var NearestFilter : TextureFilter;
	var NearestMipmapNearestFilter : TextureFilter;
	var NearestMipMapNearestFilter : TextureFilter;
	var NearestMipmapLinearFilter : TextureFilter;
	var NearestMipMapLinearFilter : TextureFilter;
	var LinearFilter : TextureFilter;
	var LinearMipmapNearestFilter : TextureFilter;
	var LinearMipMapNearestFilter : TextureFilter;
	var LinearMipmapLinearFilter : TextureFilter;
	var LinearMipMapLinearFilter : TextureFilter;
}