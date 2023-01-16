#if macro
import haxe.macro.Type;
import TypeMap;

function getModuleName(module: String) {
	var i = module.lastIndexOf('.');
	if (i == -1) {
		return module;
	} else {
		return module.substring(i + 1);
	}
}

function generateTypeMap(
	typeMap: TypeMap,
	processBaseType: (typeMap: TypeMap, type: Type, t: BaseType, params: Array<Type>) -> Void,
	onComplete: (typeMap: TypeMap) -> Void
) {
	haxe.macro.Context.onGenerate(types -> {
		for (type in types) {
			var typeDetails = getTypeDetails(type);
			if (typeDetails != null) {
				processBaseType(typeMap, type, typeDetails.baseType, typeDetails.typeParameters);
			}
		}

		// set lowercaseLookup map
		for (path => typeInfo in typeMap.typeInfo) {
			var lowerCaseName = typeInfo.name.toLowerCase();
			if (typeMap.lowercaseLookup[lowerCaseName] == null) {
				typeMap.lowercaseLookup[lowerCaseName] = [];
			}
			var path = typeInfo.pack.concat(typeInfo.moduleName == typeInfo.name ? [typeInfo.name] : [typeInfo.moduleName, typeInfo.name]);
			typeMap.lowercaseLookup[lowerCaseName].push(path.join('.'));
		}

		onComplete(typeMap);
	});
}

function getTypeDetails(type: Type) {
	return switch type { 
		case TInst(_.get() => t, params): 
			{ baseType: (t: BaseType), typeParameters: params }
		case TType(_.get() => t, params): 
			{ baseType: (t: BaseType), typeParameters: params }
		case TAbstract(_.get() => t, params): 
			{ baseType: (t: BaseType), typeParameters: params }
		case TEnum(_.get() => t, params):
			{ baseType: (t: BaseType), typeParameters: params }
		case TDynamic(t): null;
		case TFun(args, ret): null;
		case TLazy(t): null;
		case TMono(_.get() => t): null;
		case TAnonymous(_.get() => t): null;
	}
}

function writeTypeMap(typeMap: TypeMap, stdout: Bool) {
	if (stdout) {
		Sys.stdout().writeString(haxe.Json.stringify(typeMap, null, '\t'));
		Sys.stdout().flush();
	} else {
		var filename = '${typeMap.libraryName}-${typeMap.libraryVersion}.json';
		sys.io.File.saveContent(filename, haxe.Json.stringify(typeMap, null, '\t'));
	}
}

function addType(typeMap: TypeMap, type: Type, t: BaseType, tParams: Array<Type>) {
	var jsRequire = t.meta.extract(':jsRequire').map(m -> m.params.map(p -> haxe.macro.ExprTools.getValue(p)))[0];
	var jsRequirePath = jsRequire == null ? null : jsRequire.join('/');

	var moduleName = getModuleName(t.module);
	var path = t.pack.concat(moduleName == t.name ? [t.name] : [moduleName, t.name]);

	if (jsRequirePath != null) {
		typeMap.jsRequireMap.set(jsRequirePath, path.join('.'));
	}

	typeMap.typeInfo.set(path.join('.'),
		{
			name: t.name,
			pack: t.pack,
			moduleName: moduleName,
			typeParameters: tParams.map(p -> switch p {
				case TInst(_.get() => c, _): c.name;
				default: throw 'Unhandled type parameter for ${t.module}.${t.name} - $p';
			}),
			moduleType: switch type {
				case TInst(_): ClassType;
				case TType(_): TypeDefType;
				case TAbstract(_): AbstractType;
				case TEnum(_): EnumType;
				default: UnknownType;
			},
			jsRequirePath: jsRequirePath,
			isExtern: t.isExtern == true,
		}
	);
}

#end