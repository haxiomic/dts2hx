package modules.ambient.my_library;

@:js.import("my-library", "Worker") extern class Worker {
	function new(name:String);
	function run():String;
	static var prototype : Worker;
}