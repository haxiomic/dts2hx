package global.three;

@:native("THREE.PointLightHelper") extern class PointLightHelper extends Object3D {
	function new(light:PointLight, ?sphereSize:Float, ?color:ts.AnyOf3<String, Float, Color>);
	var light : PointLight;
	var color : Null<ts.AnyOf3<String, Float, Color>>;
	function dispose():Void;
	function update():Void;
	function copy(source:PointLightHelper, ?recursive:Bool):PointLightHelper;
	static var prototype : PointLightHelper;
}