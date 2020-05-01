package tool;

import haxe.macro.Expr.TypePath;
import haxe.macro.Expr.FunctionArg;
import haxe.macro.Expr.Function;
import haxe.macro.Expr.Field;
import haxe.macro.Expr.ComplexType;
import haxe.macro.Expr.TypeParam;

class ComplexTypeTools {

	/**
		Transforms a complex-type recursively

		Does not explore expressions contained within types (like anon fields)
	**/
	static public function map(complexType: Null<ComplexType>, f: ComplexType -> ComplexType): ComplexType {
		if (complexType == null) {
			return null;
		}

		return switch complexType {
			case TFunction(args, ret):
				f(TFunction(args.map(a -> map(a, f)), map(ret, f)));
			case TParent(t):
				f(TParent(map(t, f)));
			case TOptional(t):
				f(TOptional(map(t, f)));
			case TNamed(n, t):
				f(TNamed(n, map(t, f)));
			case TIntersection(types):
				f(TIntersection(types.map(t -> map(t, f))));
			case TAnonymous(fields):
				f(TAnonymous(fields.map(field -> mapField(field, f))));
			case TExtend(ap, fields):
				f(TExtend(ap.map(p -> mapTypePath(p, f)), fields.map(field -> mapField(field, f))));
			case TPath(p):
				f(TPath(mapTypePath(p, f)));
		}
	}

	static public function mapTypePath(typePath: TypePath, f: ComplexType -> ComplexType): TypePath {
		return {
			pack: typePath.pack,
			name: typePath.name,
			sub: typePath.sub,
			params: typePath.params != null ? typePath.params.map(tp -> switch tp {
				case TPType(t): TPType(map(t, f));
				case TPExpr(e): TPExpr(e);
			}) : null,
		}
	}

	static public function mapArg(arg: FunctionArg, f: ComplexType -> ComplexType): FunctionArg {
		return {
			name: arg.name,
			meta: arg.meta,
			value: arg.value,
			opt: arg.opt,
			type: map(arg.type, f)
		}
	}

	static public function mapFunction(fun: Function, f: ComplexType -> ComplexType): Function {
		return {
			params: fun.params,
			expr: fun.expr,
			args: fun.args.map(a -> mapArg(a, f)),
			ret: map(fun.ret, f),
		}
	}

	static public function mapField(field: Field, f: ComplexType -> ComplexType): Field {
		return {
			name: field.name,
			meta: field.meta,
			pos: field.pos,
			access: field.access,
			doc: field.doc,
			kind: switch field.kind {
				case FVar(t, e): FVar(map(t, f), e);
				case FFun(fun): FFun(mapFunction(fun, f));
				case FProp(get, set, t, e):FProp(get, set, map(t, f), e);
			}
		};
	}

}