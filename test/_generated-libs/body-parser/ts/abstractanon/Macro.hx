package ts.abstractanon;

#if macro
import haxe.macro.Context;
import haxe.macro.Expr;
import haxe.macro.Type;

using haxe.macro.TypeTools;
using haxe.macro.ComplexTypeTools;

class Macro {
	static var definedTypes = new Map<String, Bool>();

	public static function build():ComplexType {
		return switch Context.getLocalType() {
			case TInst(_, [t]):
				buildAbstractAnon(t);
			default:
				Context.error("AbstractAnon requires exactly one type parameter", Context.currentPos());
				null;
		}
	}

	static function buildAbstractAnon(t:Type):ComplexType {
		var followed = t.follow();
		switch followed {
			case TAnonymous(aRef):
				var anon = aRef.get();
				var nativeFields = [];
				var normalFields = [];

				for (field in anon.fields) {
					var nativeName = getNativeName(field);
					if (nativeName != null) {
						nativeFields.push({field: field, nativeName: nativeName});
					} else {
						normalFields.push(field);
					}
				}

				if (nativeFields.length == 0) {
					return t.toComplexType();
				}

				var typeName = getTypeName(t);
				if (typeName == null) {
					return t.toComplexType();
				}

				var abstractName = '_AbstractAnon_$typeName';
				var pack = getTypePack(t);
				var fullName = pack.concat([abstractName]).join(".");

				if (definedTypes.exists(fullName)) {
					return TPath({pack: pack, name: abstractName});
				}
				definedTypes.set(fullName, true);

				var abstractFields:Array<Field> = [];

				for (nf in nativeFields) {
					addFieldAccessors(abstractFields, nf.field.name, nf.nativeName, nf.field.type.toComplexType());
				}

				for (field in normalFields) {
					addFieldAccessors(abstractFields, field.name, field.name, field.type.toComplexType());
				}

				var baseType = t.toComplexType();

				Context.defineType({
					pack: pack,
					name: abstractName,
					pos: Context.currentPos(),
					kind: TDAbstract(macro :Dynamic, [baseType], [baseType]),
					fields: abstractFields,
					meta: [],
				}, null);

				return TPath({pack: pack, name: abstractName});

			default:
				return t.toComplexType();
		}
	}

	static function addFieldAccessors(fields:Array<Field>, haxeName:String, jsName:String, fieldType:ComplexType) {
		fields.push({
			name: 'get_$haxeName',
			access: [AInline],
			kind: FFun({
				args: [],
				ret: fieldType,
				expr: macro return (cast Reflect.field(cast this, $v{jsName}) : $fieldType),
			}),
			pos: Context.currentPos(),
		});

		fields.push({
			name: 'set_$haxeName',
			access: [AInline],
			kind: FFun({
				args: [{name: "v", type: fieldType}],
				ret: fieldType,
				expr: macro {
					Reflect.setField(cast this, $v{jsName}, v);
					return v;
				},
			}),
			pos: Context.currentPos(),
		});

		fields.push({
			name: haxeName,
			access: [APublic],
			kind: FProp("get", "set", fieldType),
			pos: Context.currentPos(),
		});
	}

	static function getNativeName(field:ClassField):Null<String> {
		if (field.meta == null) return null;
		for (meta in field.meta.get()) {
			if (meta.name == ":native" && meta.params != null && meta.params.length == 1) {
				switch meta.params[0].expr {
					case EConst(CString(s, _)):
						return s;
					default:
				}
			}
		}
		return null;
	}

	static function getTypeName(t:Type):Null<String> {
		return switch t {
			case TType(tRef, _): tRef.get().name;
			case TAbstract(aRef, _): aRef.get().name;
			default: null;
		}
	}

	static function getTypePack(t:Type):Array<String> {
		return switch t {
			case TType(tRef, _): tRef.get().pack;
			case TAbstract(aRef, _): aRef.get().pack;
			default: [];
		}
	}
}
#end
