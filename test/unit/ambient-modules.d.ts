/**
 * Ambient (globally available) namespace
 */
declare namespace AmbientNamespace {
	type Num = number;
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

	}
}