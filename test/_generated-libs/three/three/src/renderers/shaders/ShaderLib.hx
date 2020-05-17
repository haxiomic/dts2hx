package three.src.renderers.shaders;

@:jsRequire("three/src/renderers/shaders/ShaderLib") @valueModuleOnly extern class ShaderLib {
	static var ShaderLib : {
		var basic : three.Shader;
		var lambert : three.Shader;
		var phong : three.Shader;
		var standard : three.Shader;
		var matcap : three.Shader;
		var points : three.Shader;
		var dashed : three.Shader;
		var depth : three.Shader;
		var normal : three.Shader;
		var sprite : three.Shader;
		var background : three.Shader;
		var cube : three.Shader;
		var equirect : three.Shader;
		var distanceRGBA : three.Shader;
		var shadow : three.Shader;
		var physical : three.Shader;
	};
}