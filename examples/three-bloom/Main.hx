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

		// Create PBR viewer
		var viewer = new PhysicallyBasedViewer({
			canvas: canvas,
			defaultEnvironment: true,
			defaultLights: true,
		});

		viewer.camera.position.z = 4;

		// Add a bright metallic torus knot — reflections will bloom
		var geometry = new TorusKnotGeometry(1, 0.3, 128, 32);
		var material = new MeshStandardMaterial({
			color: 0x6611CC,
			roughness: 0.1,
			metalness: 1.0,
			emissive: 0x220044,
			emissiveIntensity: 0.3,
		});
		var mesh = new Mesh(geometry, material);
		viewer.scene.add(mesh);

		// Set up bloom post-processing
		var bloomMaterial = new BloomMipmapsMaterial({});
		var renderTargetStore = RenderTargetStore.getStoreForRenderer(viewer.renderer);

		viewer.customRender = (renderer, renderPassOptions) -> {
			var w = canvas.width;
			var h = canvas.height;

			// Step 1: Render scene to a target with mipmaps enabled
			var displayTarget: Dynamic = renderTargetStore.getRenderTarget('display', w, h, {
				type: Three.HalfFloatType,
				magFilter: Three.LinearFilter,
				minFilter: Three.LinearMipMapLinearFilter,
				depthBuffer: true,
				allocateMipmaps: true,
			});

			if (displayTarget == null) return;

			// Render the 3D scene into the mipmap target
			viewer.defaultRender(viewer.camera, {
				target: displayTarget,
				clearColor: {rgb: 0x000000, alpha: 1.0},
				clearDepth: true,
				restoreGlobalState: false,
			});

			// Step 2: Generate blurred mipmap chain for bloom
			BlurredMipmapChain.generateBlurredMipmaps(renderer, {
				target: displayTarget,
				blurKernel_heightFraction: 0.017,
				truncationSigma: 0.5,
			});

			// Step 3: Composite bloom onto canvas
			Rendering.shaderMaterialPass(renderer, cast {
				shader: bloomMaterial,
				target: null,
				restoreGlobalState: true,
				toneMapping: Three.ACESFilmicToneMapping,
				toneMappingExposure: 1.0,
				uniforms: {
					source: displayTarget.texture,
					mipmapSource: displayTarget.texture,
					bloomStrength: 0.04,
					bloomFalloff: -0.3,
					minLod: 1,
				}
			});
		};

		// Rotate the mesh each frame
		viewer.events.frameUpdate.on(e -> {
			mesh.rotation.y += 0.005;
			mesh.rotation.x += 0.002;
		});
	}
}
