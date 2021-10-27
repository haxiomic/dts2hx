/**
	babylonjs offers both modular and global declarations. If we use modular, `require('babylonjs')` will be emitted in the javascript, whereas if we use global, it assumes babylonjs is already available in the global scope

	In this example we use the global type declarations so we don't need a bundler after haxe generates the javascript file

	To use the modular version we can change the import to:
		`import babylonjs.*;`
**/
import global.babylon.*;

import js.Browser.*;

class Main {
	
	static function main() {
		final canvas = document.createCanvasElement();
		canvas.width = 800;
		canvas.height = 600;
		document.body.appendChild(canvas);
		
		var engine = new Engine(
			canvas,
			true,
			{
				alpha: false,
				powerPreference: 'high-performance',
			}
		);

		var scene = new Scene(engine, {});

		scene.clearColor.set(1, 0, 0, 1);
	
		scene.createDefaultEnvironment({
			createGround: false
		});

		scene.createDefaultCamera(true, true, true);

		var camera = (cast scene.activeCamera: ArcRotateCamera);
		camera.radius = 2.5;
		
		var vertexData = VertexData.CreateBox({
			size: 1
		});

		var cube = new Mesh('cube', scene);
		vertexData.applyToMesh(cube, false);
		cube.material = new PBRMaterial('cube-material', scene);

		engine.runRenderLoop(() -> scene.render());
	}

}