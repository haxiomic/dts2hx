import haxe.macro.Expr.ComplexType;
import haxe.macro.Expr.Access;
import haxe.macro.Expr.Field;

using Lambda;

/**
	Extended haxe syntax printer with bug-fixes and formatting tweaks
**/
// @:nullSafety
class Printer extends haxe.macro.Printer {
	
	public override function printComplexType(ct:ComplexType) return switch(ct) {
		case TPath(tp): printTypePath(tp);
		case TFunction(args, ret):
			var wrapArgumentsInParentheses = switch args {
				// type `:(a:X) -> Y` has args as [TParent(TNamed(...))], i.e `a:X` gets wrapped in `TParent()`. We don't add parentheses to avoid printing `:((a:X)) -> Y`
				case [TParent(t)]: false;
				// this case catches a single argument that's a type-path, so that `X -> Y` prints `X -> Y` not `(X) -> Y`
				case [TPath(_) | TOptional(TPath(_))]: false;
				default: true;
			}
			
			var argStr = args.map(printComplexType).join(", ");
			(wrapArgumentsInParentheses ? '($argStr)' : argStr) + " -> " + printComplexType(ret);

		case TAnonymous(fields): "{ " + [for (f in fields) printField(f) + "; "].join("") + "}";
		case TParent(ct): "(" + printComplexType(ct) + ")";
		case TOptional(ct): "?" + printComplexType(ct);
		case TNamed(n,ct): n + ":" + printComplexType(ct);
		case TExtend(tpl, fields): '{> ${tpl.map(printTypePath).join(" >, ")}, ${fields.map(printField).join(", ")} }';
		case TIntersection(tl): tl.map(printComplexType).join(" & ");
	}
	
	public override function printField(field:Field) {
		inline function orderAccess(access: Array<Access>) {
			// final should always be printed last
			return access.has(AFinal) ? access.filter(a -> !a.match(AFinal)).concat([AFinal]) : access;
		}
		return (field.doc != null
			&& field.doc != "" ? "/**\n"
				+ tabs
				+ tabString
				+ StringTools.replace(field.doc, "\n", "\n" + tabs + tabString)
				+ "\n"
				+ tabs
				+ "**/\n"
				+ tabs : "")
			+ (field.meta != null && field.meta.length > 0 ? field.meta.map(printMetadata).join('\n$tabs') + '\n$tabs' : "")
			+ (field.access != null && field.access.length > 0 ? orderAccess(field.access).map(printAccess).join(" ") + " " : "")
			+ switch (field.kind) {
				case FVar(t, eo): ((field.access != null && field.access.has(AFinal)) ? '' : 'var ') + '${field.name}' + opt(t, printComplexType, " : ") + opt(eo, printExpr, " = ");
				case FProp(get, set, t, eo): 'var ${field.name}($get, $set)' + opt(t, printComplexType, " : ") + opt(eo, printExpr, " = ");
				case FFun(func): 'function ${field.name}' + printFunction(func);
			}
	}

}