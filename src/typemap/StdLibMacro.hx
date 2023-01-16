import TypeMapTools;
import haxe.DynamicAccess;
import haxe.macro.Context;
import haxe.macro.Compiler;
import haxe.macro.Type;

@ignore class StdLibMacro {

	macro static public function getMap(stdout: Bool = true) {
		Compiler.include('', false); //top-level
		Compiler.include('js.lib', true);
		Compiler.include('js.html', true);

		var haxeVersion = Context.definedValue('haxe');
		var stdLibMap: TypeMap = {
			haxeVersion: haxeVersion,
			libraryName: 'std',
			libraryVersion: haxeVersion,
			topLevelNames: [],
			js: {},
			typeInfo: {},
			jsRequireMap: {},
			lowercaseLookup: {},
		}
		
		function processBaseType(typeMap: TypeMap, type: Type, t: BaseType, params: Array<Type>) {
			if (t.isPrivate) return; // can't use private types
			
			if (t.pack.length == 0) {
				// top-level types
				if (!t.meta.has('ignore')) {
					typeMap.topLevelNames.push(t.name);
				}
			} else if (t.pack[0] == 'js' && t.pack.length > 1) {
				// js.* packages
				if (type.match(TType(_)) && t.meta.has(':deprecated')) return; // don't include type aliases with @:deprecated

				var isExtern = t.isExtern;
				var nativeName: String = getNativeName(type);

				var moduleName = t.module.split('.').pop();

				// Console.printlnFormatted('${t.pack}, <cyan>${moduleName}.${t.name}</>, ${if (t.name != nativeName) '<b>$nativeName</>, ' else ''}${t.isExtern == true ? 'true' : '<red>${t.isExtern}</>'}', Error);
				typeMap.js.set(nativeName, {
					pack: t.pack,
					name: t.name,
					moduleName: moduleName,
					typeParameters: params.map(p -> switch p {
						case TInst(_.get() => c, _): c.name;
						default: throw 'Unhandled type parameter for ${t.module}.${t.name} - $p';
					}),
					isExtern: t.isExtern == true,
					moduleType: switch type {
						case TInst(_): ClassType;
						case TType(_): TypeDefType;
						case TAbstract(_): AbstractType;
						case TEnum(_): EnumType;
						default: UnknownType;
					}
				});
			}
		}

		generateTypeMap(stdLibMap, processBaseType, (typeMap) -> writeTypeMap(typeMap, stdout));

		return null;
	}

	#if macro
	static function getNativeName(type: Type) {
		var t: Null<BaseType> = switch type {
			case TInst(_.get() => t, params): t;
			case TType(_.get() => t, params): t;
			case TAbstract(_.get() => t, params): t;
			case TEnum(_.get() => t, params): t;
			case TDynamic(t): null;
			case TFun(args, ret):  null;
			case TLazy(t):  null;
			case TMono(_.get() => t):  null;
			case TAnonymous(_.get() => t): null;
		}

		return if (t != null) {
			if (t.meta.has(':native')) {
				switch t.meta.extract(':native')[0] {
					case {params: [{expr: EConst(CString(s, _))}]}: s;
					case null | {params: null} | _:
						// trace('<b,red>Unexpected @:native parameter</>');
						t.name;
				}
			} else {
				var moduleName = t.module.split('.').pop();
				if (t.name != moduleName) {
					switch type {
						case TInst(_): t.name;
						default: // type is compile-time only
						// get type information for the module
						var moduleType = Context.getType(t.module);
						var moduleNativeName = getNativeName(moduleType);
						var moduleAccessPath = moduleNativeName.split('.'); moduleAccessPath.pop();
						moduleAccessPath.concat([t.name]).join('.');
					}
				} else {
					t.name;
				}
			}
		} else null;
	}
	#end

}