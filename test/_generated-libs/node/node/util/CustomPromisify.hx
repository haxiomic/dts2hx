package node.util;

typedef CustomPromisify<TCustom:(haxe.Constraints.Function)> = ts.AnyOf2<CustomPromisifySymbol<TCustom>, CustomPromisifyLegacy<TCustom>>;