package global.nodejs;
extern typedef Socket = ReadWriteStream & { @:optional
	var isTTY : Bool; };