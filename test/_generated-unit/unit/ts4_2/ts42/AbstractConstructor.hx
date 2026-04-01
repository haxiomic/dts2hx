package unit.ts4_2.ts42;

typedef AbstractConstructor<T> = {
	function new(args:haxe.extern.Rest<Dynamic>):T;
};