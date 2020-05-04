import js.Browser.*;
import global.Pc;
import global.pc.*;

class Main {

	static function main() {
		final canvas = document.createCanvasElement();
		document.body.appendChild(canvas);

		// create a PlayCanvas application
		final app = new Application(cast canvas, {});

		// fill the available space at full resolution
		app.setCanvasFillMode(Pc.FILLMODE_FILL_WINDOW);
		app.setCanvasResolution(Pc.RESOLUTION_AUTO);

		// ensure canvas is resized when window changes size
		window.addEventListener('resize', () -> app.resizeCanvas());

		// create box entity
		final box = new Entity('cube');
		box.addComponent('model', {
			type: 'box'
		});
		app.root.addChild(box);

		// create camera entity
		final camera = new Entity('camera');
		camera.addComponent('camera', {
			clearColor: new Color(0.1, 0.1, 0.1)
		});
		app.root.addChild(camera);
		camera.setPosition(0, 0, 3);

		// create directional light entity
		final light = new Entity('light');
		light.addComponent('light');
		app.root.addChild(light);
		light.setEulerAngles(45, 0, 0);

		// rotate the box according to the delta time since the last frame
		app.on('update', cast dt -> box.rotate(10 * dt, 20 * dt, 30 * dt));

		app.start();
	}

}