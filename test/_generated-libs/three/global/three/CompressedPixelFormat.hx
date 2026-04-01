package global.three;

@:native("THREE") extern enum abstract CompressedPixelFormat(Int) from Int to Int {
	final RGB_S3TC_DXT1_Format : CompressedPixelFormat;
	final RGBA_S3TC_DXT1_Format : CompressedPixelFormat;
	final RGBA_S3TC_DXT3_Format : CompressedPixelFormat;
	final RGBA_S3TC_DXT5_Format : CompressedPixelFormat;
	final RGB_PVRTC_4BPPV1_Format : CompressedPixelFormat;
	final RGB_PVRTC_2BPPV1_Format : CompressedPixelFormat;
	final RGBA_PVRTC_4BPPV1_Format : CompressedPixelFormat;
	final RGBA_PVRTC_2BPPV1_Format : CompressedPixelFormat;
	final RGB_ETC1_Format : CompressedPixelFormat;
	final RGBA_ASTC_4x4_Format : CompressedPixelFormat;
	final RGBA_ASTC_5x4_Format : CompressedPixelFormat;
	final RGBA_ASTC_5x5_Format : CompressedPixelFormat;
	final RGBA_ASTC_6x5_Format : CompressedPixelFormat;
	final RGBA_ASTC_6x6_Format : CompressedPixelFormat;
	final RGBA_ASTC_8x5_Format : CompressedPixelFormat;
	final RGBA_ASTC_8x6_Format : CompressedPixelFormat;
	final RGBA_ASTC_8x8_Format : CompressedPixelFormat;
	final RGBA_ASTC_10x5_Format : CompressedPixelFormat;
	final RGBA_ASTC_10x6_Format : CompressedPixelFormat;
	final RGBA_ASTC_10x8_Format : CompressedPixelFormat;
	final RGBA_ASTC_10x10_Format : CompressedPixelFormat;
	final RGBA_ASTC_12x10_Format : CompressedPixelFormat;
	final RGBA_ASTC_12x12_Format : CompressedPixelFormat;
}