/**
	Phaser offers both modular and global declarations. If we use modular, `require('phaser')` will be emitted in the javascript, whereas if we use global, it assumes phaser is already available in the global scope

	In this example we use the global type declarations so we don't need a bundler after haxe generates the javascript file

	To generate global externs we used dts2hx --global. If we wanted modular externs that import modules we can use --modular instead. By default both modular and global externs are generated
**/

import Phaser;
import phaser.*;

import js.Browser.*;

class Main {

	static function main() {
		/**
			Phaser v4 Physics Example: Debug-Options
			https://phaser.io/examples/v3/view/physics/matterjs/debug-options
		**/
		new Game({
			type: Phaser.AUTO,
			width: 800,
			height: 600,
			backgroundColor: '#000000',
			parent: 'phaser-example',
			physics: {
				"default": 'matter',
				matter: {
					enableSleeping: true,
					debug: {
						showAxes: false,
						showAngleIndicator: true,
						angleColor: 0xe81153,

						showBroadphase: false,
						broadphaseColor: 0xffb400,

						showBounds: false,
						boundsColor: 0xffffff,

						showVelocity: true,
						velocityColor: 0x00aeef,

						showCollisions: true,
						collisionColor: 0xf5950c,

						// showSeparations: false,
						separationColor: 0xffa500,

						showBody: true,
						showStaticBody: true,
						showInternalEdges: true,

						renderFill: false,
						renderLine: true,

						fillColor: 0x106909,
						fillOpacity: 1,
						lineColor: 0x28de19,
						lineOpacity: 1,
						lineThickness: 1,

						staticFillColor: 0x0d177b,
						staticLineColor: 0x1327e4,

						showSleeping: true,
						staticBodySleepOpacity: 1,
						sleepFillColor: 0x464646,
						sleepLineColor: 0x999a99,

						showSensors: true,
						sensorFillColor: 0x0d177b,
						sensorLineColor: 0x1327e4,

						showPositions: true,
						positionSize: 4,
						positionColor: 0xe042da,

						showJoint: true,
						jointColor: 0xe0e042,
						jointLineOpacity: 1,
						jointLineThickness: 2,

						pinSize: 4,
						pinColor: 0x42e0e0,

						springColor: 0xe042e0,

						anchorColor: 0xefefef,
						anchorSize: 4,

						showConvexHulls: true,
						hullColor: 0xd703d0
					}
				}
			},
			scene: {
				create: create
			}
		});
	}

	static function create(data: Dynamic) {
		var scene: Scene = js.Lib.nativeThis;

		scene.matter.world.setBounds();

		//  First, we'll create a few static bodies
		final body1 = scene.matter.add.rectangle(250, 50, 200, 32, { isStatic: true });

		scene.matter.add.polygon(600, 100, 3, 40, { isStatic: true });
		scene.matter.add.polygon(100, 500, 8, 50, { isStatic: true });
		scene.matter.add.rectangle(750, 200, 16, 180, { isStatic: true });

		//  Now a body that shows off internal edges + convex hulls
		final star = '50 0 63 38 100 38 69 59 82 100 50 75 18 100 31 59 0 38 37 38';

		scene.matter.add.fromVertices(700, 500, star, { restitution: 0.5 }, true);

		//  Some different joint types
		final body2 = scene.matter.add.circle(150, 250, 16);
		final body3 = scene.matter.add.circle(400, 450, 16);
		final body4 = scene.matter.add.circle(500, 50, 16);

		//  A spring, because length > 0 and stiffness < 0.9
		scene.matter.add.spring(body1, body2, 140, 0.001);

		//  A joint, because length > 0 and stiffness > 0.1
		scene.matter.add.worldConstraint(body3, 140, 1, { pointA: { x: 400, y: 250 }});
		//  A pin, because length = 0 and stiffness > 0.1
		scene.matter.add.worldConstraint(body4, 0, 1, { pointA: { x: 500, y: 50 }});

		//  Finally some random dynamic bodies
		for (i in 0...12) {
			var x = Math_.Between(100, 700);
			var y = Math_.Between(100, 500);

			if (Math.random() < 0.5)
			{
				var sides = Math_.Between(3, 14);
				var radius = Math_.Between(8, 50);

				scene.matter.add.polygon(x, y, sides, radius, { restitution: 0.5 });
			}
			else
			{
				var width = Math_.Between(16, 128);
				var height = Math_.Between(8, 64);

				scene.matter.add.rectangle(x, y, width, height, { restitution: 0.5 });
			}
		}

		scene.matter.add.mouseSpring();
	}
	
}