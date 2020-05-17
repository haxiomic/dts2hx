class Server {

	static function main() {
		/**
			Express Hello World Example
			https://expressjs.com/en/starter/hello-world.html
		**/
		var app = Express.call();
		var port = 3000;
		app.get('/', (req, res) -> res.send('Hello World!'));
		app.listen(port, () -> trace('Example app listening at http://localhost:${port}'));
	}

}