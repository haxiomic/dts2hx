package three;
/**
	Scenes allow you to set up what and where is to be rendered by three.js. This is where you place objects, lights and cameras.
**/
@:jsRequire("three", "Scene") extern class Scene extends Object3D {
	function new();
	/**
		A fog instance defining the type of fog that affects everything rendered in the scene. Default is null.
	**/
	var fog : Null<IFog>;
	/**
		If not null, it will force everything in the scene to be rendered with that material. Default is null.
	**/
	var overrideMaterial : Null<Material>;
	var autoUpdate : Bool;
	var background : Null<ts.AnyOf2<Texture, Color>>;
	function dispose():Void;
}