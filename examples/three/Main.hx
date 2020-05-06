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

		var scene = new Scene();
		var camera = new PerspectiveCamera(75, canvas.width/canvas.height, 0.1, 1000);

		var renderer = new WebGLRenderer({
			canvas: cast canvas,
			antialias: true,
		});

		var geometry = new BoxGeometry();
		var material = new MeshBasicMaterial({color: 0x00FF00});
		var cube = new Mesh(geometry, material);

		scene.add(cube);

		camera.position.z = 5;

		function frameLoop(t_ms: Float) {
			window.requestAnimationFrame(frameLoop);

			cube.rotation.x += 0.01;
			cube.rotation.y += 0.01;

			renderer.render(scene, camera);
		}

		frameLoop(window.performance.now());
	}
	
}