/**
 * Inaccessible and not generated
 */
// declare class ExampleClass {
// 	constructor();
// }

/**
 * Inaccessible but type-referenced
 */
// declare class InaccessibleButReferenced {
// 	constructor();
// }

// declare namespace MainExport {
// 	type MainExportSubType = InaccessibleButReferenced;
// }

/**
 * This is inaccessible and will not be generated
 */
declare module "ExportedModule" {
	namespace internal {
		class ExportEqualsClass {
			constructor();
		}
	}
	export = internal;
}

// export {ExampleClass as Renamed};

// export = MainExport;