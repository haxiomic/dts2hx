export class BasicTp<T, V> {
	field: T
	field2: V
}

export type BasicTpAlias<K> = BasicTp<K, K>;

export class ExtendsTp<X, T extends BasicTp<X, T>> {
	field: T
}

// declare const x:ExtendsTp<number>;

export class ExtendsTpEnum<T extends 'a' | 'b'> {
	field: T
}

type ShadowT = number;
export class ShadowedTp<ShadowT> {
	field: ShadowT;
}

export class Object3D {

}

export class TypeParameterBug {

	/**
	 * Object3D was reported as having a type parameter
	 */
	parse<X extends string>(a: X): X;

}