class Server {

	static function main() {
		/**
			Express Hello World Example with Router

			For a discussion on this example see this thread:
			https://community.haxe.org/t/how-does-one-use-routes-in-express/2701
		**/
		var app = Express.call();
		var port = 3000;
		app.get('/', (req, res, next) -> res.send('Hello World! <a href="/birds">/birds</a>'));
		app.listen(port, () -> trace('Example app listening at http://localhost:${port}'));

		app.get('/route', (req, res, next) -> res.send('Example route'));

		var router = express.Router.call_();

		// middleware that is specific to this router
		router.use(function timeLog (req, res, next) {
			js.Browser.console.log('Time: ', Date.now());
			(next: () -> Void)();
			return null;
		});

		// define the home page route
		router.get('/', (req, res, next) -> {
			res.send('Birds home page');
		});

		// define the about route
		router.get('/about', (req, res, next) -> {
			res.send('About birds');
		});
		
		app.use('/birds', router.call);
	}

}