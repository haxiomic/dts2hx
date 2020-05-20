package global.three;

@:native("THREE") extern abstract Mapping(Any) from Any to Any {
	var UVMapping : Mapping;
	var CubeReflectionMapping : Mapping;
	var CubeRefractionMapping : Mapping;
	var EquirectangularReflectionMapping : Mapping;
	var EquirectangularRefractionMapping : Mapping;
	var SphericalReflectionMapping : Mapping;
	var CubeUVReflectionMapping : Mapping;
	var CubeUVRefractionMapping : Mapping;
}