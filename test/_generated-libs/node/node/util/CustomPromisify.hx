package node.util;
extern interface CustomPromisify<TCustom:(js.lib.Function)> extends js.lib.Function {
	var __promisify__ : TCustom;
}