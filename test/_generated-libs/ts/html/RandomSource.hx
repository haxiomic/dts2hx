package ts.html;
@:native("RandomSource") extern class RandomSource {
	function new();
	function getRandomValues<T>(array:T):T;
	static var prototype : RandomSource;
}