/**
	Extend haxe syntax printer with bug-fixes and formatting tweaks
**/

import haxe.macro.Expr.Access;
import haxe.macro.Expr.Field;

@:nullSafety
class Printer extends haxe.macro.Printer {
	
	override public function printField(field: Field) {
		if (field.access != null) field.access.sort((a, b) -> {
			return accessOrder(a) - accessOrder(b);
		});
		return super.printField(field);
	}

	static function accessOrder(access: Access): Int {
		return switch access {
			case AExtern: 0;
			case AMacro: 0;
			case AStatic: 1;
			case APrivate: 2;
			case APublic: 2;
			case AOverride: 3;
			case ADynamic: 4;
			case AInline: 5;
			case AFinal: 6;
		}
	}

}