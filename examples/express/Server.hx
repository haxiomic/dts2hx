class Server {

	static function main() {
		/**
			Express Hello World Example
			https://expressjs.com/en/starter/hello-world.html
		**/
		var app = Express.call();
		var port = 3000;
		app.get('/', (req, res, next) -> res.send('Hello World!'));
		app.listen(port, () -> trace('Example app listening at http://localhost:${port}'));

		var router = express.Router.call_();

		// middleware that is specific to this router
		router.use(function timeLog (req, res, next) {
			js.Browser.console.log('Time: ', Date.now());
			return null;
		});

		router.get('/', function (req, res, next) {
			return null;
		});
		// define the home page route
		router.get('/', function (req, res, next) {
			res.send('Birds home page');
			return null;
		});
		// define the about route
		router.get('/about', function (req, res, next) {
			res.send('About birds');
			return null;
		});
	}

}