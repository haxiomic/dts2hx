import js.Browser.*;
import three.*;
import haxiomic_engine.physicallybasedviewer.PhysicallyBasedViewer;
import haxiomic_engine.materials.bloommipmapsmaterial.BloomMipmapsMaterial;
import haxiomic_engine.rendering.BlurredMipmapChain;
import haxiomic_engine.rendering.RenderTargetStore;
import haxiomic_engine.rendering.rendering.Rendering;

class Main {
	static function main() {
		var canvas = document.createCanvasElement();
		canvas.style.width = '100vw';
		canvas.style.height = '100vh';
		canvas.style.display = 'block';
		document.body.style.margin = '0';
		document.body.appendChild(canvas);

		// Create PBR viewer with environment lighting
		var viewer = new PhysicallyBasedViewer({
			canvas: canvas,
			defaultEnvironment: true,
			defaultLights: true,
		});

		// Add a metallic torus knot
		var geometry = new TorusKnotGeometry(1, 0.3, 128, 32);
		var material = new MeshStandardMaterial({
			color: 0x6611CC,
			roughness: 0.15,
			metalness: 0.9,
		});
		var mesh = new Mesh(geometry, material);
		viewer.scene.add(mesh);

		// Set up bloom post-processing
		var bloomMaterial = new BloomMipmapsMaterial({});
		// Access typed uniforms via the underlying three.js ShaderMaterial
		var uniforms:Dynamic = js.Syntax.field(bloomMaterial, "uniforms");
		uniforms.bloomStrength.value = 0.04;
		uniforms.bloomFalloff.value = -0.3;
		uniforms.minLod.value = 1;

		var renderTargetStore:Dynamic = js.Syntax.code("haxiomic_engine_rendering_RenderTargetStore.RenderTargetStore.getStoreForRenderer({0})", viewer.renderer);

		viewer.customRender = (renderer, renderPassOptions) -> {
			// Get or create a display target with mipmaps for bloom
			var target:Dynamic = renderTargetStore.getRenderTarget('display', canvas.width, canvas.height, {
				type: js.Syntax.code("THREE.HalfFloatType"),
				magFilter: js.Syntax.code("THREE.LinearFilter"),
				minFilter: js.Syntax.code("THREE.LinearMipMapLinearFilter"),
				allocateMipmaps: true,
			});

			if (target != null) {
				// Render scene into the mipmap target
				js.Syntax.code("{0}.target = {1}", renderPassOptions, target);
				viewer.defaultRender(viewer.camera, renderPassOptions);

				// Generate blurred mipmap chain for bloom
				BlurredMipmapChain.generateBlurredMipmaps(renderer, cast {
					target: target,
					blurKernel_heightFraction: 0.02,
					truncationSigma: 0.5,
				});

				// Apply bloom + tone mapping to canvas
				uniforms.source.value = target.texture;
				uniforms.mipmapSource.value = target.texture;

				Rendering.shaderMaterialPass(renderer, cast {
					shader: bloomMaterial,
					target: null,
					restoreGlobalState: true,
				});
			}
		};

		// Rotate the mesh each frame
		viewer.events.frameUpdate.on(e -> {
			mesh.rotation.y += 0.005;
			mesh.rotation.x += 0.002;
		});
	}
}
