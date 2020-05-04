package ts.lib;
@:native("WebAuthentication") extern class WebAuthentication {
	function new();
	function getAssertion(assertionChallenge:Null<ts.AnyOf11<IArrayBuffer, IFloat32Array, IFloat64Array, IUint8Array, IInt8Array, IInt16Array, IInt32Array, IUint16Array, IUint32Array, IUint8ClampedArray, IDataView>>, ?options:ts.html.AssertionOptions):IPromise<ts.html.IWebAuthnAssertion>;
	@:overload(function(accountInformation:ts.html.Account, cryptoParameters:Iterable<ts.html.ScopedCredentialParameters>, attestationChallenge:Null<ts.AnyOf11<IArrayBuffer, IFloat32Array, IFloat64Array, IUint8Array, IInt8Array, IInt16Array, IInt32Array, IUint16Array, IUint32Array, IUint8ClampedArray, IDataView>>, ?options:ts.html.ScopedCredentialOptions):IPromise<ts.html.IScopedCredentialInfo> { })
	function makeCredential(accountInformation:ts.html.Account, cryptoParameters:Array<ts.html.ScopedCredentialParameters>, attestationChallenge:Null<ts.AnyOf11<IArrayBuffer, IFloat32Array, IFloat64Array, IUint8Array, IInt8Array, IInt16Array, IInt32Array, IUint16Array, IUint32Array, IUint8ClampedArray, IDataView>>, ?options:ts.html.ScopedCredentialOptions):IPromise<ts.html.IScopedCredentialInfo>;
	static var prototype : IWebAuthentication;
}