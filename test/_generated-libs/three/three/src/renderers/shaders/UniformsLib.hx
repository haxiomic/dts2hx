package three.src.renderers.shaders;

@:jsRequire("three/src/renderers/shaders/UniformsLib") @valueModuleOnly extern class UniformsLib {
	static var UniformsLib : {
		var common : {
			var diffuse : three.IUniform;
			var opacity : three.IUniform;
			var map : three.IUniform;
			var uvTransform : three.IUniform;
			var alphaMap : three.IUniform;
		};
		var specularmap : {
			var specularMap : three.IUniform;
		};
		var envmap : {
			var envMap : three.IUniform;
			var flipEnvMap : three.IUniform;
			var reflectivity : three.IUniform;
			var refractionRatio : three.IUniform;
			var maxMipLevel : three.IUniform;
		};
		var aomap : {
			var aoMap : three.IUniform;
			var aoMapIntensity : three.IUniform;
		};
		var lightmap : {
			var lightMap : three.IUniform;
			var lightMapIntensity : three.IUniform;
		};
		var emissivemap : {
			var emissiveMap : three.IUniform;
		};
		var bumpmap : {
			var bumpMap : three.IUniform;
			var bumpScale : three.IUniform;
		};
		var normalmap : {
			var normalMap : three.IUniform;
			var normalScale : three.IUniform;
		};
		var displacementmap : {
			var displacementMap : three.IUniform;
			var displacementScale : three.IUniform;
			var displacementBias : three.IUniform;
		};
		var roughnessmap : {
			var roughnessMap : three.IUniform;
		};
		var metalnessmap : {
			var metalnessMap : three.IUniform;
		};
		var gradientmap : {
			var gradientMap : three.IUniform;
		};
		var fog : {
			var fogDensity : three.IUniform;
			var fogNear : three.IUniform;
			var fogFar : three.IUniform;
			var fogColor : three.IUniform;
		};
		var lights : {
			var ambientLightColor : three.IUniform;
			var directionalLights : {
				var value : Array<Dynamic>;
				var properties : {
					var direction : { };
					var color : { };
					var shadow : { };
					var shadowBias : { };
					var shadowRadius : { };
					var shadowMapSize : { };
				};
			};
			var directionalShadowMap : three.IUniform;
			var directionalShadowMatrix : three.IUniform;
			var spotLights : {
				var value : Array<Dynamic>;
				var properties : {
					var color : { };
					var position : { };
					var direction : { };
					var distance : { };
					var coneCos : { };
					var penumbraCos : { };
					var decay : { };
					var shadow : { };
					var shadowBias : { };
					var shadowRadius : { };
					var shadowMapSize : { };
				};
			};
			var spotShadowMap : three.IUniform;
			var spotShadowMatrix : three.IUniform;
			var pointLights : {
				var value : Array<Dynamic>;
				var properties : {
					var color : { };
					var position : { };
					var decay : { };
					var distance : { };
					var shadow : { };
					var shadowBias : { };
					var shadowRadius : { };
					var shadowMapSize : { };
				};
			};
			var pointShadowMap : three.IUniform;
			var pointShadowMatrix : three.IUniform;
			var hemisphereLights : {
				var value : Array<Dynamic>;
				var properties : {
					var direction : { };
					var skycolor : { };
					var groundColor : { };
				};
			};
			var rectAreaLights : {
				var value : Array<Dynamic>;
				var properties : {
					var color : { };
					var position : { };
					var width : { };
					var height : { };
				};
			};
		};
		var points : {
			var diffuse : three.IUniform;
			var opacity : three.IUniform;
			var size : three.IUniform;
			var scale : three.IUniform;
			var map : three.IUniform;
			var uvTransform : three.IUniform;
		};
	};
}