package three;

@:enum @:jsRequire("three") extern abstract TextureFilter(Any) from Any to Any {
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