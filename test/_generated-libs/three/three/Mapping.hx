package three;

@:jsRequire("three") extern enum abstract Mapping(Int) from Int to Int {
	final UVMapping : Mapping;
	final CubeReflectionMapping : Mapping;
	final CubeRefractionMapping : Mapping;
	final EquirectangularReflectionMapping : Mapping;
	final EquirectangularRefractionMapping : Mapping;
	final SphericalReflectionMapping : Mapping;
	final CubeUVReflectionMapping : Mapping;
	final CubeUVRefractionMapping : Mapping;
}