package unit.modules;

extern enum abstract Flags(Int) from Int to Int {
	final None = 0;
	final Read = 1;
	final Write = 2;
	final ReadWrite = 3;
}