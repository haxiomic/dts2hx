package ts.html;
@:native("WebAuthentication") extern class WebAuthentication {
	function new();
	function getAssertion(assertionChallenge:Null<ts.AnyOf11<ts.lib.ArrayBuffer, ts.lib.Float32Array, ts.lib.Float64Array, ts.lib.Uint8Array, ts.lib.Int8Array, ts.lib.Int16Array, ts.lib.Int32Array, ts.lib.Uint16Array, ts.lib.Uint32Array, ts.lib.Uint8ClampedArray, ts.lib.DataView>>, ?options:AssertionOptions):ts.lib.Promise<WebAuthnAssertion>;
	@:overload(function(accountInformation:Account, cryptoParameters:ts.lib.Iterable<ScopedCredentialParameters>, attestationChallenge:Null<ts.AnyOf11<ts.lib.ArrayBuffer, ts.lib.Float32Array, ts.lib.Float64Array, ts.lib.Uint8Array, ts.lib.Int8Array, ts.lib.Int16Array, ts.lib.Int32Array, ts.lib.Uint16Array, ts.lib.Uint32Array, ts.lib.Uint8ClampedArray, ts.lib.DataView>>, ?options:ScopedCredentialOptions):ts.lib.Promise<ScopedCredentialInfo> { })
	function makeCredential(accountInformation:Account, cryptoParameters:Array<ScopedCredentialParameters>, attestationChallenge:Null<ts.AnyOf11<ts.lib.ArrayBuffer, ts.lib.Float32Array, ts.lib.Float64Array, ts.lib.Uint8Array, ts.lib.Int8Array, ts.lib.Int16Array, ts.lib.Int32Array, ts.lib.Uint16Array, ts.lib.Uint32Array, ts.lib.Uint8ClampedArray, ts.lib.DataView>>, ?options:ScopedCredentialOptions):ts.lib.Promise<ScopedCredentialInfo>;
	static var prototype : WebAuthentication;
}