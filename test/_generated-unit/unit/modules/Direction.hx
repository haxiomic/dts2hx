package unit.modules;

@:jsRequire("./unit/modules", "Direction") extern enum abstract Direction(String) from String to String {
	final Up;
	final Down;
	final Left;
	final Right;
}