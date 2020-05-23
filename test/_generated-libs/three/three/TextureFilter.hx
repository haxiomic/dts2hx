package three;

@:enum @:jsRequire("three") extern abstract TextureFilter(Int) from Int to Int {
	final NearestFilter : TextureFilter;
	final NearestMipmapNearestFilter : TextureFilter;
	final NearestMipMapNearestFilter : TextureFilter;
	final NearestMipmapLinearFilter : TextureFilter;
	final NearestMipMapLinearFilter : TextureFilter;
	final LinearFilter : TextureFilter;
	final LinearMipmapNearestFilter : TextureFilter;
	final LinearMipMapNearestFilter : TextureFilter;
	final LinearMipmapLinearFilter : TextureFilter;
	final LinearMipMapLinearFilter : TextureFilter;
}