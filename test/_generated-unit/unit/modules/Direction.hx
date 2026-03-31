package unit.modules;

@:jsRequire("./unit/modules", "Direction") @:enum extern abstract Direction(String) from String to String {
	var Up;
	var Down;
	var Left;
	var Right;
}