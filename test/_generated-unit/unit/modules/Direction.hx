package unit.modules;

@:jsRequire("./unit/modules", "Direction") extern enum abstract Direction(String) from String to String {
	var Up;
	var Down;
	var Left;
	var Right;
}