package node.v8;

/**
	A subclass of `Serializer` that serializes `TypedArray`(in particular `Buffer`) and `DataView` objects as host objects, and only
	stores the part of their underlying `ArrayBuffer`s that they are referring to.
**/
@:jsRequire("v8", "DefaultSerializer") extern class DefaultSerializer extends Serializer {
	static var prototype : DefaultSerializer;
}