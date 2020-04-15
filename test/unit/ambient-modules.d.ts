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

declare module "example/module" {
	type Num = number;

	module "submodule" {

		type Str = string;
		const value = 4;

	}
}