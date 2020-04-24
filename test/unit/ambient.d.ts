declare function globalFunction(): number;
declare const globalConst: number;

/**
 * Ambient (globally available) namespace
 */
declare namespace AmbientNamespace {
	type Num = number;
}

declare namespace AmbientValueModule {
	type Num = number;
	const value = 4;
}

/**
 * Ambient (globally available) namespace, deprecated syntax
 */
declare module AmbientNamespaceDeprecated {
	type Num = number;
}

declare module "ambient/module" {
	type Num = number;

    const ambientModuleMember: number;

	module "submodule" {

		type Str = string;
		const value = 4;

	}

	global {
        type ThisShouldBeGlobal2 = number;
    }
}

declare module "ambient-with-global-inside" {
    global {
        type ThisShouldBeGlobal = number;
    }
}