package js.html;
/**
	The ANGLE_instanced_arrays extension is part of the WebGL API and allows to draw the same object, or groups of similar objects multiple times, if they share the same vertex data, primitive count and type.
**/
extern typedef ANGLE_instanced_arrays = { function drawArraysInstancedANGLE(mode:Float, first:Float, count:Float, primcount:Float):Void; function drawElementsInstancedANGLE(mode:Float, count:Float, type:Float, offset:Float, primcount:Float):Void; function vertexAttribDivisorANGLE(index:Float, divisor:Float):Void; final VERTEX_ATTRIB_ARRAY_DIVISOR_ANGLE : Float; };