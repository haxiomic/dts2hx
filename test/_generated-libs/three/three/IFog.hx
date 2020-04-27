package three;
extern interface IFog {
	var name : String;
	var color : Color;
	function clone():IFog;
	function toJSON():Any;
}