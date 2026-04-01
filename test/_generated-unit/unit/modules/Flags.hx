package unit.modules;

extern enum abstract Flags(Int) from Int to Int {
	var None = 0;
	var Read = 1;
	var Write = 2;
	var ReadWrite = 3;
}