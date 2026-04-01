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

		// Rotate the mesh each frame
		viewer.events.frameUpdate.on(e -> {
			mesh.rotation.y += 0.005;
			mesh.rotation.x += 0.002;
		});
	}
}
