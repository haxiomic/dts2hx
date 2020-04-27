package js.lib;
extern typedef ErrorConstructor = { @:selfCall
	function call(?message:String):Error; final prototype : Error; };