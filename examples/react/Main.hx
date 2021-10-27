import react.Component;
import js.Browser.*;

class Hello extends Component<{ name: String }, {}, Any> {

	override function render() {
		return React.createElement('div', null, 'Hello ${this.props.name}');
	}

}


class Main {
	
	static function main() {
		var el = React.createElement(Hello, { name: 'Haxe' }, null);
		var root = document.getElementById('root');

		ReactDom.render(el, root);
	}

}