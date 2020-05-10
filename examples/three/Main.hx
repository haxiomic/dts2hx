import js.Browser.*;
import three.*;

class Main {

	static function main() {
		/**
			three.js introduction example
			https://threejs.org/docs/#manual/en/introduction/Creating-a-scene
		**/

		var pixelRatio = window.devicePixelRatio;

		var displayWidthPx = 800;
		var displayHeightPx = 600;
		
		var canvas = document.createCanvasElement();
		canvas.style.width = displayWidthPx + 'px';
		canvas.style.height = displayHeightPx + 'px';
		canvas.width = Math.round(displayWidthPx * pixelRatio);
		canvas.height = Math.round(displayHeightPx * pixelRatio);
		document.body.appendChild(canvas);

		var renderer = new WebGLRenderer({
			canvas: cast canvas,
			antialias: true,
		});

		var scene = new Scene();
		var camera = new PerspectiveCamera(75, canvas.width/canvas.height, 0.1, 1000);
		camera.position.z = 5;

		var geometry = new TorusKnotGeometry(1, 0.2, 100, 50);
		var material = new MeshPhysicalMaterial({color: 0x6600AA, roughness: 0.4, metalness: 0.5});
		var mesh = new Mesh(geometry, material);
		scene.add(mesh);

		var light = new PointLight(0xFF0022, 1.2);
		light.position.y = 2;
		light.position.z = 2;
		scene.add(light);

		var ambient = new AmbientLight(0xFFFFFF, 0.4);
		ambient.position.y = 2;
		ambient.position.z = 2;
		scene.add(ambient);

		function frameLoop(t_ms: Float) {
			window.requestAnimationFrame(frameLoop);
			var t_s = t_ms / 1000;

			mesh.rotation.x += 0.001;
			mesh.rotation.y += 0.01;

			light.position.x = Math.cos(t_s);
			light.position.z = Math.sin(t_s) + 2;

			renderer.render(scene, camera);
		}

		frameLoop(window.performance.now());
	}
	
}