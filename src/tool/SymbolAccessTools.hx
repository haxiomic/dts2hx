package tool;

import typescript.ts.Symbol;
import typescript.ts.InternalSymbolName;
import haxe.macro.Expr.Position;
import haxe.macro.Expr.MetadataEntry;
import haxe.ds.ReadOnlyArray;

using tool.StringTools;
using tool.HaxeTools;

enum ImportStyle {
	JsRequire;
	JsImport;
}

class SymbolAccessTools {
	
	/**
		Returns the symbol-chain to access this symbol _including_ the root module symbol (if there is one)
	**/
	static public function getFullSymbolChain(access: SymbolAccess): ReadOnlyArray<Symbol> {
		return switch access {
			case AmbientModule(_, root, symbolChain), ExportModule(_, root, symbolChain): [root].concat(cast symbolChain);
			case Global(symbolChain): symbolChain;
			case Inaccessible: [];
		}
	}

	// static public function getAccessMatchingContext(accessArray: Array<SymbolAccess>, accessContext: SymbolAccess) {
	// }
	
	/**
		Extract symbolChain value from enum (does not include module symbol)
	**/
	static public function extractSymbolChain(access: SymbolAccess) {
		return switch access {
			case AmbientModule(_, _, symbolChain), ExportModule(_, _, symbolChain), Global(symbolChain): symbolChain;
			case Inaccessible: [];
		}
	}

	static public function getIdentifierChain(access: SymbolAccess): Array<String> {
		return extractSymbolChain(access).map(s -> s.name);
	}

	static public function toAccessMetadata(access: SymbolAccess, importStyle: ImportStyle = JsRequire): MetadataEntry {
		var pos = getPosition(access);
		var identifierChain = getIdentifierChain(access);
		return switch access {
			case AmbientModule(path, _) | ExportModule(path, _):
				if (importStyle == JsImport) {
					toJsImportMetadata(path.unwrapQuotes(), identifierChain, pos);
				} else {
					{
						name: ':jsRequire',
						params: [path.unwrapQuotes().toStringExpr(pos)].concat(
							identifierChain.length > 0 ? [identifierChain.join('.').toStringExpr(pos)] : []
						),
						pos: pos,
					}
				}
			case Global(_): {
				name: ':native',
				params: [identifierChain.join('.').toStringExpr(pos)],
				pos: pos,
			}
			case Inaccessible: {
				// this type cannot be reached directly in javascript
				// there's no core metadata for this
				name: 'jsInaccessible',
				pos: pos,
			}
		}
	}

	/**
		Generate @:js.import metadata for ESM imports.
		- Named export: `@:js.import("mod", "Name")`
		- Default export: `@:js.import(@default "mod")`
		- Module-level (export=): `@:js.import(@default "mod")`
	**/
	static function toJsImportMetadata(modulePath: String, identifierChain: Array<String>, pos: Position): MetadataEntry {
		var isDefault = identifierChain.length == 0 || (identifierChain.length >= 1 && identifierChain[0] == 'default');
		return if (isDefault) {
			{
				name: ':js.import',
				params: [{expr: EMeta({name: 'default', pos: pos}, modulePath.toStringExpr(pos)), pos: pos}],
				pos: pos,
			}
		} else {
			{
				name: ':js.import',
				params: [modulePath.toStringExpr(pos)].concat(
					[identifierChain.join('.').toStringExpr(pos)]
				),
				pos: pos,
			}
		}
	}

	static function getPosition(access: SymbolAccess): Position {
		return null;
	}

	/**
		String representation, useful for debugging (not valid syntax)
	**/
	static public function toString(access: SymbolAccess) {
		var identifierChain = getIdentifierChain(access);
		return switch access {
			case AmbientModule(path, _): ['ambientRequire($path)'].concat(identifierChain).join('.');
			case ExportModule(moduleName, _): ['exportRequire("$moduleName")'].concat(identifierChain).join('.');
			case Global(_): '::${identifierChain.join('.')}';
			case Inaccessible: '*Inaccessible*';
		}
	}

}