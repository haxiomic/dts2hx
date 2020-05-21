package three;

@:enum @:jsRequire("three") extern abstract Mapping(Int) from Int to Int {
	var UVMapping : Mapping;
	var CubeReflectionMapping : Mapping;
	var CubeRefractionMapping : Mapping;
	var EquirectangularReflectionMapping : Mapping;
	var EquirectangularRefractionMapping : Mapping;
	var SphericalReflectionMapping : Mapping;
	var CubeUVReflectionMapping : Mapping;
	var CubeUVRefractionMapping : Mapping;
}