package tool;

import haxe.macro.Expr;
import haxe.ds.ReadOnlyArray;
using StringTools;

using Lambda;

class HaxeTools {

	static final nullPosition = {
		file: '',
		min: -1,
		max: -1,
	}

	static public function setMeta(target: {?meta: Metadata}, metaName: String, ?params: Array<Expr>) {
		var metas = target.meta;
		if (metas == null) {
			target.meta = metas = [];
		}
		var existingMeta = metas.find(m -> m.name == metaName);
		if (existingMeta != null) {
			existingMeta.params = params;
		} else {
			metas.push({
				name: metaName,
				params: params,
				pos: null,
			});
		}
	}

	static public function removeMeta(target: {?meta: Metadata}, metaName: String) {
		var metas = if (target.meta == null) {
			target.meta = [];
		} else target.meta;
		target.meta = metas.filter(m -> m.name != metaName);
	}

	/**
		Returns field name, or @:native(name) if there is metadata.
	**/
	static public function getNativeName(target: {name: String, ?meta: Metadata}): String {
		var nativeMeta = getMeta(target, ':native');
		switch (nativeMeta: MetadataEntry) {
			case null | {params: null}:
			case {params: [{expr: EConst(CString(s, _))}]}:
				return s;
			default:
		}
		return target.name;
	}

	static public function getMeta(field: {?meta: Metadata}, metaName: String): Null<MetadataEntry> {
		return if (field.meta != null) {
			field.meta.find(m -> m.name == metaName);
		} else null;
	}

	static public function hasAccess(field: {?access: Array<Access>}, access: Access) {
		return if (field.access != null) {
			field.access.has(access);
		} else false;
	}

	/**
		Adds an Access modifier to a field, avoiding duplicates
	**/
	static public function enableAccess(field: {?access: Array<Access>}, access: Access) {
		var accessArray = if (field.access != null) {
			field.access;
		} else {
			field.access = [];
		}
		if (accessArray.indexOf(access) == -1) {
			accessArray.push(access);
		}
	}

	/**
		Removes an access modifier from a field (if duplicated, remove all instances)
	**/
	static public function disableAccess(field: {?access: Array<Access>}, access: Access) {
		if (field.access != null) {
			field.access = field.access.filter(a -> a != access);
		}
	}

	/**
		Renames fields where fields have the same name (and adds :native meta).
		Modifies fields within the array
	**/
	static public function resolveNameCollisions(fields: Array<Field>) {
		function renameability(field: Field) {
			return 
				// if field already has @:native metadata, we should prefer it for renaming (highest priority)
				(getMeta(field, ':native') != null ? 1 : 0) << 2 |
				// prefer to rename static fields over member fields
				(hasAccess(field, AStatic) ? 1 : 0)         << 1 |
				// prefer to rename variables rather than functions
				(field.kind.match(FVar(_)) ? 1 : 0)         << 0
			;
		}

		while (true) {
			var nameMap = new Map<String, Array<Field>>();
			for (field in fields) {
				var array = nameMap.get(field.name);
				if (array == null) {
					array = [];
					nameMap.set(field.name, array);
				}
				array.push(field);
			}

			var noNamesOverlap = true;
			for (_ => collidingFields in nameMap) {
				if (collidingFields.length > 1) {
					noNamesOverlap = false;

					haxe.ds.ArraySort.sort(collidingFields, (a, b) -> renameability(b) - renameability(a));
					var fieldToRename = collidingFields[0];
					if (getMeta(fieldToRename, ':native') == null && getMeta(fieldToRename, ':selfCall') == null) {
						setMeta(fieldToRename, ':native', [toStringExpr(fieldToRename.name)]);
					}
					fieldToRename.name += '_';
				}
			}

			if (noNamesOverlap) break;
		}
	}

	/**
		Convert a string to something safe to use as an identifier in haxe (a-z)
		`hello@world.js` becomes `helloAtWorld_js`
	**/
	static public function toSafeIdent(str: String, escapeReservedWords: Bool = true) {
		// remove quotes
		str = ~/["'`]/gm.replace(str, '');

		// remove @ at the start of an ident (this is a common pattern on npm, e.g. https://www.npmjs.com/package/@jonabc/actions-mocks)
		str = ~/^@/.replace(str, '');

		// replace hyphens and dots with underscore
		str = ~/[-–—.]/gm.replace(str, '_');

		// replace slashes with underscore
		str = ~/[\/\\]/gm.replace(str, '_');

		// replace non-ascii characters with their name (and capitalize the following)
		// replace non-a-z_ characters at the start
		// hello@world becomes helloAtWorld
		// 123lib becomes OneTwoThreeLib
		str = ~/([^0-9a-z_]|^[^a-z_]+)([a-z])?/ig.map(str, (reg) -> {
			var illegalChars = reg.matched(1);
			var followingChar = reg.matched(2);
			return
				illegalChars.split('').map(char -> {
					var charName = specialCharacterNames.get(char);
					return charName != null ? charName : '_';
				}).join('') +
				(followingChar != null ? followingChar.toUpperCase() : '');
		});

		// add underscore suffix to reserved keywords
		if (escapeReservedWords && haxeReservedWords.indexOf(str) != -1) {
			str += '_';
		}

		return str;
	}

	static public function toSafeTypeName(str: String) {
		// example-name -> exampleName
		// EXAMPLE_NAME -> EXAMPLE_NAME
		str = ~/[^\w]+([a-z])/g.map(str, reg -> reg.matched(1).toUpperCase());

		str = toSafeIdent(str, false);

		// capitalize first letter character
		var firstLetterPattern = ~/[a-z]/i;
		return if (firstLetterPattern.match(str)) {
			firstLetterPattern.matchedLeft() + firstLetterPattern.matched(0).toUpperCase() + firstLetterPattern.matchedRight();
		} else {
			// no first letter
			'T' + str;
		}
	}

	static public function toSafePackageName(str: String) {
		return toSafeIdent(str, true).toLowerCase();
	}

	static public function toStringExpr(str: String, ?pos: Position): Expr {
		return {
			expr: EConst(CString(str, DoubleQuotes)),
			pos: pos != null ? pos : nullPosition,
		}
	}

	static public function toIntExpr(int: Int, ?pos: Position): Expr {
		return {
			expr: EConst(CInt(Std.string(int))),
			pos: pos != null ? pos : nullPosition,
		}
	}

	static public function toFloatExpr(float: Float, ?pos: Position): Expr {
		return {
			expr: EConst(CFloat(Std.string(float))),
			pos: pos != null ? pos : nullPosition,
		}
	}
	
	static public function toBoolExpr(bool: Bool, ?pos: Position): Expr {
		return {
			expr: EConst(CIdent(bool ? 'true' : 'false')),
			pos: pos != null ? pos : nullPosition,
		}
	}
	
	/**
		value must be a number, string or boolean
	**/
	static public function primitiveValueToExpr(?value: Dynamic): Null<Expr> {
		if (value == null) {
			return null;
		}
		return switch js.Syntax.typeof(value) {
			case 'number': {
				expr: EConst(Math.floor(cast value) == value ? CInt(Std.string(value)) : CFloat(Std.string(value))),
				pos: nullPosition,
			}
			case 'string': {
				expr: EConst(CString(value, DoubleQuotes)),
				pos: nullPosition,
			}
			case 'boolean': {
				expr: EConst(CIdent(value == true ? 'true' : 'false')),
				pos: nullPosition,
			}
			default: null;
		}
	}

	/**
		If all types are trivially equivalent (not following aliases or handling type-unions), return that type
		Otherwise, return :Any
	**/
	static public function commonType(types: Array<ComplexType>): ComplexType {
		// check if all elementTypes are the same
		var printer = new haxe.macro.Printer();
		var commonTypeString: Null<String> = null;
		var allTypesMatch = true;
		for (type in types) {
			var typeString = printer.printComplexType(type);
			if (commonTypeString != null && commonTypeString != typeString) {
				allTypesMatch = false;
				break;
			}
			commonTypeString = typeString;
		}

		return allTypesMatch ? types[0] : macro :Any;
	}

	/**
		Deduplicate trivially identical types (print to same string) from an array
	**/
	static public function deduplicateTypes(types: Array<ComplexType>): Array<ComplexType> {
		var typeStringMap = new Map<String, ComplexType>();
		var printer = new haxe.macro.Printer();
		for (type in types) {
			var typeString = printer.printComplexType(type);
			typeStringMap.set(typeString, type);
		}
		return [for (_ => type in typeStringMap) type];
	}

	/**
		- `Null<T>` -> `T`
		- `T` -> `T`
	**/
	static public function unwrapNull(type: ComplexType): ComplexType {
		return switch type {
			case TPath({
				name: 'Null',
				pack: [] | ['std'],
				params: [TPType(innerType)]
			}): innerType;
			default: type;
		}
	}

	/**
		Sometimes we want a deterministic order for an array of complex types. You can use this comparison to sort an array of complex types deterministically
	**/
	static public function compareComplexTypes(a: ComplexType, b: ComplexType) {
		return if (a.getIndex() == b.getIndex()) {
			var p = new Printer();
			p.printComplexType(a) < p.printComplexType(b) ? -1 : 1;
		} else {
			a.getIndex() - b.getIndex();
		}
	}

	static public final haxeReservedWords: ReadOnlyArray<String> = [
		// see core/ast.ml
		"public", "private", "static", "override", "dynamic", "inline", "macro",
		"final", "extern", "function", "class", "static", "var", "if", "else", "while",
		"do", "for", "break", "return", "continue", "extends", "implements", "import",
		"switch", "case", "default", "private", "public", "try", "catch", "new", "this",
		"throw", "extern", "enum", "in", "interface", "untyped", "cast", "override",
		"typedef", "dynamic", "package", "inline", "using", "null", "true", "false",
		"abstract", "macro", "final", "operator", "overload", "protected",
	];

	static final specialCharacterNames = [
		'0' => 'Zero',
		'1' => 'One',
		'2' => 'Two',
		'3' => 'Three',
		'4' => 'Four',
		'5' => 'Five',
		'6' => 'Six',
		'7' => 'Seven',
		'8' => 'Eight',
		'9' => 'Nine',
		'!' => 'Bang',
		'"' => 'DoubleQuote',
		'#' => 'Hash',
		'$' => 'Dollar',
		'£' => 'Pound',
		'%' => 'Percent',
		'&' => 'Ampersand',
		'\'' => 'Quote',
		'(' => 'LeftParentheses',
		')' => 'RightParentheses',
		'*' => 'Star',
		'+' => 'Plus',
		',' => 'Comma',
		'-' => 'Minus',
		'.' => 'Dot',
		'/' => 'ForwardSlash',
		':' => 'Colon',
		';' => 'SemiColon',
		'<' => 'LessThan',
		'=' => 'Equals',
		'>' => 'GreaterThan',
		'?' => 'QuestionMark',
		'{' => 'LeftBrace',
		'|' => 'Bar',
		'}' => 'RightBrace',
		'~' => 'Tilde',
		'[' => 'LeftSquareBracket',
		'\\' => 'BackwardSlash',
		']' => 'RightSquareBracket',
		'^' => 'Caret',
		'_' => 'Underscore',
		'@' => 'At',
	];

}