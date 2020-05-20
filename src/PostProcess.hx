import typescript.ts.SymbolFlags;
using Lambda;
using StringTools;
using SupportTypes;
using TsInternal;

using tool.HaxeTools;
using tool.SymbolAccessTools;
using tool.TsProgramTools;
using tool.TsSymbolTools;
using tool.TsTypeTools;

@:access(ConverterContext)
class PostProcess {

	static public function run(ctx: ConverterContext) {
		var tc = ctx.tc;

		for (symbol in ctx.processedDeclarationSymbols) {
			for (access in ctx.symbolAccessMap.getAccess(symbol)) {
				/**
					This is a special case for pattern recognition of weird three.js style enums:
					```typescript
					export enum FrontFaceDirection {}
					export const FrontFaceDirectionCW: FrontFaceDirection;
					export const FrontFaceDirectionCCW: FrontFaceDirection;
					```
				**/
				// find fields who's type is an empty enum (with the same access path)
				if (symbol.isAccessibleField()) {
					var fieldType = ctx.getTsTypeOfField(symbol);
					if (fieldType.symbol != null && fieldType.symbol.flags & SymbolFlags.Enum != 0) {
						var enumTypeSymbol = fieldType.symbol;
						var enumTypeSymbolAccess = ctx.symbolAccessMap.getAccess(enumTypeSymbol).find(enumTypeAccess -> enumTypeAccess.getIndex() == access.getIndex());
						var enumTypePath = ctx.haxeTypePathMap.getTypePath(enumTypeSymbol, access, false);
						var enumMembers = tc.getExportsOfModule(enumTypeSymbol).filter(s -> s.flags & SymbolFlags.EnumMember != 0);
						var hxEnumModule = ctx.generatedModules.get(ctx.getHaxeModuleKey(enumTypePath.pack, enumTypePath.name));

						if (hxEnumModule != null && enumTypeSymbolAccess != null && enumMembers.length == 0) {
							var enumTypeChain = enumTypeSymbolAccess.getIdentifierChain().copy();
							var fieldChain = access.getIdentifierChain().copy();
							enumTypeChain.pop(); fieldChain.pop();
							if (enumTypeChain.join('.') == fieldChain.join('.')) { // matching access path
								hxEnumModule.fields.push(ctx.fieldFromSymbol(symbol.name, symbol, access, null));
							}
						}
					}
				}
			}
		}

		// iterate the generated types and resolve name collisions between fields
		for (_ => hxModule in ctx.generatedModules) {
			HaxeTools.resolveNameCollisions(hxModule.fields);
		}
	}

}