package three;

/**
	Materials describe the appearance of objects. They are defined in a (mostly) renderer-independent way, so you don't have to rewrite materials if you decide to use a different renderer.
**/
@:jsRequire("three", "Material") extern class Material extends EventDispatcher {
	function new();
	/**
		Sets the alpha value to be used when running an alpha test. Default is 0.
	**/
	var alphaTest : Float;
	/**
		Blending destination. It's one of the blending mode constants defined in Three.js. Default is {@link OneMinusSrcAlphaFactor}.
	**/
	var blendDst : BlendingDstFactor;
	/**
		The tranparency of the .blendDst. Default is null.
	**/
	var blendDstAlpha : Null<Float>;
	/**
		Blending equation to use when applying blending. It's one of the constants defined in Three.js. Default is {@link AddEquation}.
	**/
	var blendEquation : BlendingEquation;
	/**
		The tranparency of the .blendEquation. Default is null.
	**/
	var blendEquationAlpha : Null<Float>;
	/**
		Which blending to use when displaying objects with this material. Default is {@link NormalBlending}.
	**/
	var blending : Blending;
	/**
		Blending source. It's one of the blending mode constants defined in Three.js. Default is {@link SrcAlphaFactor}.
	**/
	var blendSrc : ts.AnyOf2<BlendingDstFactor, BlendingSrcFactor>;
	/**
		The tranparency of the .blendSrc. Default is null.
	**/
	var blendSrcAlpha : Null<Float>;
	/**
		Changes the behavior of clipping planes so that only their intersection is clipped, rather than their union. Default is false.
	**/
	var clipIntersection : Bool;
	/**
		User-defined clipping planes specified as THREE.Plane objects in world space. These planes apply to the objects this material is attached to. Points in space whose signed distance to the plane is negative are clipped (not rendered). See the WebGL / clipping /intersection example. Default is null.
	**/
	var clippingPlanes : Dynamic;
	/**
		Defines whether to clip shadows according to the clipping planes specified on this material. Default is false.
	**/
	var clipShadows : Bool;
	/**
		Whether to render the material's color. This can be used in conjunction with a mesh's .renderOrder property to create invisible objects that occlude other objects. Default is true.
	**/
	var colorWrite : Bool;
	/**
		Which depth function to use. Default is {@link LessEqualDepth}. See the depth mode constants for all possible values.
	**/
	var depthFunc : DepthModes;
	/**
		Whether to have depth test enabled when rendering this material. Default is true.
	**/
	var depthTest : Bool;
	/**
		Whether rendering this material has any effect on the depth buffer. Default is true.
		When drawing 2D overlays it can be useful to disable the depth writing in order to layer several things together without creating z-index artifacts.
	**/
	var depthWrite : Bool;
	/**
		Whether the material is affected by fog. Default is true.
	**/
	var fog : Bool;
	/**
		Unique number of this material instance.
	**/
	var id : Float;
	/**
		Whether rendering this material has any effect on the stencil buffer. Default is *false*.
	**/
	var stencilWrite : Bool;
	/**
		The stencil comparison function to use. Default is {@link AlwaysStencilFunc}. See stencil operation constants for all possible values.
	**/
	var stencilFunc : StencilFunc;
	/**
		The value to use when performing stencil comparisons or stencil operations. Default is *0*.
	**/
	var stencilRef : Float;
	/**
		The bit mask to use when comparing against or writing to the stencil buffer. Default is *0xFF*.
	**/
	var stencilMask : Float;
	/**
		Which stencil operation to perform when the comparison function returns false. Default is {@link KeepStencilOp}. See the stencil operation constants for all possible values.
	**/
	var stencilFail : StencilOp;
	/**
		Which stencil operation to perform when the comparison function returns true but the depth test fails. Default is {@link KeepStencilOp}. See the stencil operation constants for all possible values.
	**/
	var stencilZFail : StencilOp;
	/**
		Which stencil operation to perform when the comparison function returns true and the depth test passes. Default is {@link KeepStencilOp}. See the stencil operation constants for all possible values.
	**/
	var stencilZPass : StencilOp;
	/**
		Used to check whether this or derived classes are materials. Default is true.
		You should not change this, as it used internally for optimisation.
	**/
	var isMaterial : Bool;
	/**
		Whether the material is affected by lights. Default is true.
	**/
	var lights : Bool;
	/**
		Material name. Default is an empty string.
	**/
	var name : String;
	/**
		Specifies that the material needs to be updated, WebGL wise. Set it to true if you made changes that need to be reflected in WebGL.
		This property is automatically set to true when instancing a new material.
	**/
	var needsUpdate : Bool;
	/**
		Opacity. Default is 1.
	**/
	var opacity : Float;
	/**
		Enables/disables overdraw. If greater than zero, polygons are drawn slightly bigger in order to fix antialiasing gaps when using the CanvasRenderer. Default is 0.
	**/
	var overdraw : Float;
	/**
		Whether to use polygon offset. Default is false. This corresponds to the POLYGON_OFFSET_FILL WebGL feature.
	**/
	var polygonOffset : Bool;
	/**
		Sets the polygon offset factor. Default is 0.
	**/
	var polygonOffsetFactor : Float;
	/**
		Sets the polygon offset units. Default is 0.
	**/
	var polygonOffsetUnits : Float;
	/**
		Override the renderer's default precision for this material. Can be "highp", "mediump" or "lowp". Defaults is null.
	**/
	var precision : Null<String>;
	/**
		Whether to premultiply the alpha (transparency) value. See WebGL / Materials / Transparency for an example of the difference. Default is false.
	**/
	var premultipliedAlpha : Bool;
	/**
		Whether to apply dithering to the color to remove the appearance of banding. Default is false.
	**/
	var dithering : Bool;
	/**
		Define whether the material is rendered with flat shading. Default is false.
	**/
	var flatShading : Bool;
	/**
		Defines which of the face sides will be rendered - front, back or both.
		Default is THREE.FrontSide. Other options are THREE.BackSide and THREE.DoubleSide.
	**/
	var side : Side;
	/**
		Defines whether this material is transparent. This has an effect on rendering as transparent objects need special treatment and are rendered after non-transparent objects.
		When set to true, the extent to which the material is transparent is controlled by setting it's .opacity property.
		Default is false.
	**/
	var transparent : Bool;
	/**
		Value is the string 'Material'. This shouldn't be changed, and can be used to find all objects of this type in a scene.
	**/
	var type : String;
	/**
		UUID of this material instance. This gets automatically assigned, so this shouldn't be edited.
	**/
	var uuid : String;
	/**
		Defines whether vertex coloring is used. Default is THREE.NoColors. Other options are THREE.VertexColors and THREE.FaceColors.
	**/
	var vertexColors : Colors;
	/**
		Defines whether precomputed vertex tangents are used. Default is false.
	**/
	var vertexTangents : Bool;
	/**
		Defines whether this material is visible. Default is true.
	**/
	var visible : Bool;
	/**
		An object that can be used to store custom data about the Material. It should not hold references to functions as these will not be cloned.
	**/
	var userData : Dynamic;
	/**
		Return a new material with the same parameters as this material.
	**/
	function clone():Material;
	/**
		Copy the parameters from the passed material into this material.
	**/
	function copy(material:Material):Material;
	/**
		This disposes the material. Textures of a material don't get disposed. These needs to be disposed by {@link Texture}.
	**/
	function dispose():Void;
	/**
		An optional callback that is executed immediately before the shader program is compiled. This function is called with the shader source code as a parameter. Useful for the modification of built-in materials.
	**/
	function onBeforeCompile(shader:Shader, renderer:WebGLRenderer):Void;
	/**
		Sets the properties based on the values.
	**/
	function setValues(values:MaterialParameters):Void;
	/**
		Convert the material to three.js JSON format.
	**/
	function toJSON(?meta:Dynamic):Dynamic;
	/**
		Call .dispatchEvent ( { type: 'update' }) on the material.
	**/
	function update():Void;
	static var prototype : Material;
}