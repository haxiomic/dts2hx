package js.html;
extern interface DhKeyGenParams extends Algorithm {
	var generator : js.lib.Uint8Array;
	var prime : js.lib.Uint8Array;
}