package three;
extern typedef IFog = {
	var name : String;
	var color : Color;
	function clone():IFog;
	function toJSON():Dynamic;
};