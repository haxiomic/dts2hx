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

export class Object3D {}
export class TypeParameterBug {
	// Object3D was reported as having a type parameter
	parse<X extends string>(a: X): X;
}

export interface DefaultTypeParameter<DefaultBool = boolean> {
	field: DefaultBool;
	fieldUnion: string | DefaultBool;
	fieldTupleUnion: string | [DefaultBool];
	fn(optionalOverloadArg?: DefaultBool): DefaultBool;
	fn(arg: DefaultBool, argTuple: [DefaultBool], argUnion: string | DefaultBool): DefaultBool;
	
	(callSignatureArg: DefaultBool): DefaultBool;
}
export type DefaultTypeParameterUser = DefaultTypeParameter;
export type DefaultTypeParameterField = DefaultTypeParameterUser['field'];
export interface DefaultTypeParameterExtension extends DefaultTypeParameter {
	extensionField: number;
}