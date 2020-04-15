/**
	Symbols can have 3 kinds of declarations within:
	- types e.g. `class X`
	- values e.g. `const X`
	- package e.g. `declare namespace X`
**/
enum abstract SymbolInterpretation(Int) to Int from Int {
	var TypeDeclaration;
	var ValueDeclaration;
	var ModuleDeclaration;
}