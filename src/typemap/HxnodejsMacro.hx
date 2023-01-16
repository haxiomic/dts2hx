import haxe.DynamicAccess;
import haxe.macro.Context;
import haxe.macro.Compiler;
import haxe.macro.Type;
import TypeMapTools;

@ignore class HxnodejsMacro {

	macro static public function getMap(stdout: Bool = true) {
		Compiler.include('js.node', true);

		trace(Context.getDefines());

		var typeMap: TypeMap = {
			haxeVersion: Context.definedValue('haxe'),
			libraryName: 'hxnodejs',
			libraryVersion: Context.definedValue('hxnodejs'),
			topLevelNames: [],
			js: {},
			typeInfo: {},
			jsRequireMap: {},
			lowercaseLookup: {},
		}
		
		function processBaseType(typeMap: TypeMap, type: Type, t: BaseType, params: Array<Type>) {
			if (t.isPrivate) return; // can't use private types

			// check if it's within js.node
			if (t.pack[0] == 'js' && t.pack[1] == 'node') {
				addType(typeMap, type, t, params);
			}
		}

		generateTypeMap(typeMap, processBaseType, (typeMap) -> writeTypeMap(typeMap, stdout));

		return null;
	}

}

