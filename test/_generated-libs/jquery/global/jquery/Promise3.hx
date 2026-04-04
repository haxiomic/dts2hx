package global.jquery;

/**
	This object provides a subset of the methods of the Deferred object (then, done, fail, always, pipe, progress, state and promise) to prevent users from changing the state of the Deferred.
**/
@:forward
abstract Promise3<TR, TJ, TN, UR, UJ, UN, VR, VJ, VN>(Promise3Typedef<TR, TJ, TN, UR, UJ, UN, VR, VJ, VN>) from Promise3Typedef<TR, TJ, TN, UR, UJ, UN, VR, VJ, VN> to Promise3Typedef<TR, TJ, TN, UR, UJ, UN, VR, VJ, VN> {
	/**
		Access the native `catch` field. This field has type parameters
		that cannot be expressed in a property type, so use js.Syntax.field:
		```haxe
		js.Syntax.field(obj, 'catch');
		```
	**/
}
