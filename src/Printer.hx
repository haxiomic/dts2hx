import haxe.macro.Expr;

using Lambda;

/**
	Extended haxe syntax printer with bug-fixes and formatting tweaks.

	Changes:
	- Fixed bug #9353 (merged, haxe 4.1)
	- Fixed bug #9349 (merged, haxe 4.1)
	- Fixed bug #9385 (merged, haxe 4.1)
	- Switch between printing structures on a single line or over multiple lines depending on context (no PR)
	- Don't use separate code for enum field printing
**/
// @:nullSafety
class Printer extends haxe.macro.Printer {

	/**
		Prints a block of fields, accounting for the multi-line field setting.
		Replaces printStructure()
	**/
	public override function printExtension(tpl:Array<TypePath>, fields: Array<Field>): String {
		if (tpl.length == 0 && fields.length == 0) return '{ }';

		function printFields(fields: Array<Field>): String {
			return if (_multiLineStructures) {
				[
					for (f in fields)
						tabs + printFieldWithDelimiter(f) + '\n'
				].join('');
			} else {
				[
					for (f in fields)
						printField(f) + "; "
				].join('');
			};
		}

		function printExtends(tpl: Array<TypePath>): String {
			var e = [for (tp in tpl) '> ${printTypePath(tp)},'];
			return if (_multiLineStructures) {
				e.map(e -> tabs + e + '\n').join('');
			} else {
				e.map(e -> e + ' ').join('');
			}
		}

		return if (_multiLineStructures) {
			var str = '{\n';
			tabsIndent();
			str += printExtends(tpl);
			str += printFields(fields);
			tabsOutdent();
			str += tabs + '}';
			str;
		} else {
			'{ ${printExtends(tpl)}${printFields(fields)}}';
		}
	}

	/**
		Changes:
		- Fixes https://github.com/HaxeFoundation/haxe/issues/9353
		- Adds multi-line field handling
	**/
	public override function printComplexType(ct:ComplexType) return switch(ct) {
		case TPath(tp): printTypePath(tp);
		case TFunction(args, ret):
			singleLineStructures({
				var wrapArgumentsInParentheses = switch args {
					// type `:(a:X) -> Y` has args as [TParent(TNamed(...))], i.e `a:X` gets wrapped in `TParent()`. We don't add parentheses to avoid printing `:((a:X)) -> Y`
					case [TParent(t)]: false;
					// this case catches a single argument that's a type-path, so that `X -> Y` prints `X -> Y` not `(X) -> Y`
					case [TPath(_) | TOptional(TPath(_))]: false;
					default: true;
				}
				
				var argStr = args.map(printComplexType).join(", ");
				(wrapArgumentsInParentheses ? '($argStr)' : argStr) + " -> " + switch ret {
					// wrap return type in parentheses if it's also a function
					case TFunction(_): '(${printComplexType(ret)})';
					default: printComplexType(ret);
				}
			});

		case TAnonymous(fields): printExtension([], fields);
		case TParent(ct): "(" + printComplexType(ct) + ")";
		case TOptional(ct): "?" + printComplexType(ct);
		case TNamed(n,ct): n + ":" + printComplexType(ct);
		case TExtend(tpl, fields): printExtension(tpl, fields);
		case TIntersection(tl): tl.map(printComplexType).join(" & ");
	}
	
	/**
		- Fixes https://github.com/HaxeFoundation/haxe/issues/9349
		- Adds multi-line field handling
	**/
	public override function printField(field:Field) {
		var metaSeparator = _multiLineStructures ? '\n$tabs' : ' ';
		inline function orderAccess(access: Array<Access>) {
			// final should always be printed last
			return access.has(AFinal) ? access.filter(a -> !a.match(AFinal)).concat([AFinal]) : access;
		}
		return (field.doc != null && field.doc != "" ? 
					// doc comment
					(
						'/**'
						+ (_multiLineStructures ? '\n' + tabs + tabString : ' ')
						+ StringTools.replace(field.doc, '\n', _multiLineStructures ? '\n' + tabs + tabString : '')
						+ (_multiLineStructures ? '\n' + tabs : ' ')
						+ '**/'
						+ (_multiLineStructures ? '\n' + tabs : ' ')
					) : ""
			)
			+ (field.meta != null && field.meta.length > 0 ? field.meta.map(printMetadata).join(metaSeparator) + metaSeparator : "")
			+ (field.access != null && field.access.length > 0 ? orderAccess(field.access).map(printAccess).join(" ") + " " : "")
			+ switch (field.kind) {
				case FVar(t, eo): ((field.access != null && field.access.has(AFinal)) ? '' : 'var ') + '${field.name}' + opt(t, printComplexType, " : ") + opt(eo, printExpr, " = ");
				case FProp(get, set, t, eo): 'var ${field.name}($get, $set)' + opt(t, printComplexType, " : ") + opt(eo, printExpr, " = ");
				case FFun(func): 'function ${field.name}' + printFunction(func);
			}
	}

	/**
		- Switch to using printFieldBlock
	**/
	public override function printTypeDefinition(t:TypeDefinition, printPackage = true):String {
		var str = t == null ? "#NULL" : (printPackage && t.pack.length > 0 && t.pack[0] != "" ? "package " + t.pack.join(".") + ";\n\n" : "")
			+ (t.doc != null && t.doc != "" ? "/**\n" + tabString + StringTools.replace(t.doc, "\n", "\n" + tabString) + "\n**/\n" : "")
			+ (t.meta != null && t.meta.length > 0 ? t.meta.map(printMetadata).join(" ") + " " : "")
			+ (t.isExtern ? "extern " : "")
			+ switch (t.kind) {
				case TDEnum:
					"enum "
					+ t.name
					+ ((t.params != null && t.params.length > 0) ? "<" + t.params.map(printTypeParamDecl).join(", ") + ">" : "")
					+ " " + multiLineStructures(printExtension([], t.fields));
				case TDStructure:
					"typedef "
					+ t.name
					+ ((t.params != null && t.params.length > 0) ? "<" + t.params.map(printTypeParamDecl).join(", ") + ">" : "")
					+ " = " + multiLineStructures(printExtension([], t.fields));
				case TDClass(superClass, interfaces, isInterface, isFinal):
					(isFinal ? "final " : "")
						+ (isInterface ? "interface " : "class ")
						+ t.name
						+ (t.params != null && t.params.length > 0 ? "<" + t.params.map(printTypeParamDecl).join(", ") + ">" : "")
						+ (superClass != null ? " extends " + printTypePath(superClass) : "")
						+ (interfaces != null ? (isInterface ? [for (tp in interfaces) " extends " + printTypePath(tp)] : [
							for (tp in interfaces)
								" implements " + printTypePath(tp)
						]).join("") : "")
						+ " " + multiLineStructures(printExtension([], t.fields));
				case TDAlias(ct):
					"typedef "
					+ t.name
					+ ((t.params != null && t.params.length > 0) ? "<" + t.params.map(printTypeParamDecl).join(", ") + ">" : "")
					+ " = "
					+ multiLineStructures(switch (ct) {
						case TExtend(tpl, fields): printExtension(tpl, fields);
						case TAnonymous(fields): printExtension([], fields);
						case _: printComplexType(ct);
					})
					+ ";";
				case TDAbstract(tthis, from, to):
					"abstract "
					+ t.name
					+ ((t.params != null && t.params.length > 0) ? "<" + t.params.map(printTypeParamDecl).join(", ") + ">" : "")
					+ (tthis == null ? "" : "(" + printComplexType(tthis) + ")")
					+ (from == null ? "" : [for (f in from) " from " + printComplexType(f)].join(""))
					+ (to == null ? "" : [for (t in to) " to " + printComplexType(t)].join(""))
					+ " " + multiLineStructures(printExtension([], t.fields));
				case TDField(kind, access):
					(access != null && access.length > 0 ? access.map(printAccess).join(" ") + " " : "")
					+ switch (kind) {
						case FVar(type, eo): ((access != null && access.has(AFinal)) ? '' : 'var ') + '${t.name}' + opt(type, printComplexType, " : ") + opt(eo, printExpr, " = ") + ";";
						case FProp(get, set, type, eo): 'var ${t.name}($get, $set)' + opt(type, printComplexType, " : ") + opt(eo, printExpr, " = ") + ";";
						case FFun(func): 'function ${t.name}' + printFunction(func) + switch func.expr { case {expr: EBlock(_)}: ""; case _: ";"; };
					}
			}

		return str;
	}

	/**
		- Switch to single-line fields mode when printing function args
	**/
	public override function printFunctionArg(func:FunctionArg) {
		return singleLineStructures(super.printFunctionArg(func));
	}

	function tabsIndent() {
		tabs += tabString;
	}

	function tabsOutdent() {
		tabs = tabs.substr(0, tabs.length - 1);
	}

	var _multiLineStructures = false;
	var _multiLineStructuresStack = new Array<Bool>();

	/**
		When printing structures, print each field on a new line
	**/
	macro static function multiLineStructures(expr: Expr) {
		return macro {
			_multiLineStructuresStack.push(_multiLineStructures);
			_multiLineStructures = true;
			var ret = $expr;
			_multiLineStructures = _multiLineStructuresStack.pop();
			ret;
		}
	}

	/**
		When printing structures on a single line
	**/
	macro static function singleLineStructures(expr: Expr) {
		return macro {
			_multiLineStructuresStack.push(_multiLineStructures);
			_multiLineStructures = false;
			var ret = $expr;
			_multiLineStructures = _multiLineStructuresStack.pop();
			ret;
		}
	}

}