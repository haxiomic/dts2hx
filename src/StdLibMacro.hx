import haxe.DynamicAccess;
import haxe.macro.Context;
import haxe.macro.Compiler;
import haxe.macro.Type;

typedef TypeInfo = {
	pack: Array<String>,
	name: String,
	moduleName: String,
	typeParameters: Array<String>,
	isExtern: Bool,
	moduleType: ModuleType
};
typedef TypeMap = {
	haxeVersion: String,
	js: DynamicAccess<TypeInfo>,
}

@:enum abstract ModuleType(Int) to Int from Int {
	var ClassType;
	var EnumType;
	var TypeDefType;
	var AbstractType;
}

class StdLibMacro {

	macro static public function getMap(stdout: Bool = true) {
		Compiler.include('js.lib', true);
		Compiler.include('js.html', true);

		var stdLibMap: TypeMap = {
			haxeVersion: Context.definedValue('haxe'),
			js: {},
		}
		
		function processBaseType(type: Type, t: BaseType, params: Array<Type>) {
			if (t.pack[0] != 'js' || t.pack.length <= 1) return; // js.* packages
			if (t.isPrivate) return;

			var isExtern = t.isExtern;
			var nativeName: String = if (t.meta.has(':native')) {
				switch t.meta.extract(':native')[0] {
					case {params: [{expr: EConst(CString(s, _))}]}: s;
					case null | {params: null} | _:
						Console.printlnFormatted('<b,red>Unexpected @:native parameter</>', Error);
						t.name;
				}
			} else {
				t.name;
			}

			var moduleName = t.module.split('.').pop();

			// Console.printlnFormatted('${t.pack}, <cyan>${moduleName}.${t.name}</>, ${if (t.name != nativeName) '<b>$nativeName</>, ' else ''}${t.isExtern == true ? 'true' : '<red>${t.isExtern}</>'}', Error);
			stdLibMap.js.set(nativeName, {
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
					default: -1;
				}
			});
		}

		haxe.macro.Context.onGenerate(types -> {
			for (type in types) {
				switch type {
					case TInst(_.get() => t, params): processBaseType(type, t, params);
					case TType(_.get() => t, params): processBaseType(type, t, params);
					case TAbstract(_.get() => t, params): processBaseType(type, t, params);
					case TEnum(_.get() => t, params): processBaseType(type, t, params);
					case TDynamic(t):
					case TFun(args, ret): 
					case TLazy(t): 
					case TMono(_.get() => t): 
					case TAnonymous(_.get() => t):
				}
			}

			if (stdout) {
				Sys.stdout().writeString(haxe.Json.stringify(stdLibMap, null, '\t'));
				Sys.stdout().flush();
			}
		});

		return null;
	}

}