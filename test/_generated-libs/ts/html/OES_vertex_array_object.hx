package ts.html;
typedef OES_vertex_array_object = {
	function bindVertexArrayOES(arrayObject:Null<WebGLVertexArrayObjectOES>):Void;
	function createVertexArrayOES():Null<WebGLVertexArrayObjectOES>;
	function deleteVertexArrayOES(arrayObject:Null<WebGLVertexArrayObjectOES>):Void;
	function isVertexArrayOES(arrayObject:Null<WebGLVertexArrayObjectOES>):Bool;
	final VERTEX_ARRAY_BINDING_OES : Float;
};