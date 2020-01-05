// super minimal haxe.macro.Expr, just enough to help convert the typescript compiler externs
export type Null<T> = T | null;
export type Int = number;
export type Bool = boolean;
// fake haxe ADT enums
class ADTEnum<T = any> {
	constructor(readonly enumId: T) { }
}

export type Expr = string; // for now just use strings for expressions
export type ComplexType = string;

/**
	Represents a position in a file.
**/
export type Pos = {
	/**
		Reference to the filename.
	**/
    file : string;

	/**
		Position of the first character.
	**/
    min : Int;

	/**
		Position of the last character.
	**/
    max : Int;
}

/**
	Represents a type definition.
**/
export type TypeDefinition = {
	/**
		The package of the type definition.
	**/
    pack : Array<string>;

	/**
		The name of the type definition.
	**/
	name : string;

	/**
		The documentation of the type, if available. If the type has no
		documentation, the value is `null`.
	**/
    doc? : Null<string>;

	/**
		The position to the type definition.
	**/
	pos : Pos;

	/**
		The optional metadata of the type definition.
	**/
    meta? : Metadata;

	/**
		The parameter type declarations of the type definition.
	**/
    params? : Array<TypeParamDecl>;

	/**
		Whether or not the type is extern.
	**/
	isExtern? : Bool;

	/**
		The kind of the type definition.
	**/
    kind : TypeDefKind;

	/**
		The fields of the type definition.
	**/
    fields : Array<Field>;
}

/**
	Represents a field in the AST.
**/
export type Field = {
	/**
		The name of the field.
	**/
    name?: string;

	/**
		The documentation of the field, if available. If the field has no
		documentation, the value is `null`.
	**/
    doc?: Null<string>;

	/**
		The access modifiers of the field. By default fields have private access.
		@see https://haxe.org/manual/class-field-access-modifier.html
	**/
    access?: Array<Access>;

	/**
		The kind of the field.
	**/
    kind?: FieldType;

	/**
		The position of the field.
	**/
    pos?: Pos;

	/**
		The optional metadata of the field.
	**/
    meta?: Metadata;
}

/**
	Represents a type parameter declaration in the AST.
**/
export type TypeParamDecl = {
	/**
		The name of the type parameter.
	**/
    name?: string;

	/**
		The optional constraints of the type parameter.
	**/
    constraints?: Array<ComplexType>;

	/**
		The optional parameters of the type parameter.
	**/
    params?: Array<TypeParamDecl>;

	/**
		The metadata of the type parameter.
	**/
    meta?: Metadata;
}

/**
	Represents a type definition kind.
**/

export class TypeDefKind extends ADTEnum<
	'TDEnum'
	| 'TDStructure'
	| 'TDClass'
	| 'TDAlias'
	| 'TDAbstract'
> { }
export class TDEnum extends TypeDefKind {
	constructor() { super('TDEnum') }
}
export class TDStructure extends TypeDefKind {
	constructor() { super('TDStructure') }
}
export class TDClass extends TypeDefKind {
	constructor(
		readonly superClass?: TypePath, readonly interfaces?: Array<TypePath>, readonly isInterface?: Bool, readonly isFinal?: Bool
	) { super('TDClass') }
}
export class TDAlias extends TypeDefKind {
	constructor( readonly t : ComplexType ) { super('TDAlias') }
}
export class TDAbstract extends TypeDefKind {
	constructor(readonly tthis: Null<ComplexType>, readonly from?: Array<ComplexType>, readonly to?: Array<ComplexType> ) { super('TDAbstract') }
}

/**
	Represents a metadata entry in the AST.
**/
export type MetadataEntry = {
	/**
		The name of the metadata entry.
	**/
    name?: string;

	/**
		The optional parameters of the metadata entry.
	**/
    params?: Array<Expr>;

	/**
		The position of the metadata entry.
	**/
    pos?: Pos;
}

/**
	Represents metadata in the AST.
**/
export type Metadata = Array<MetadataEntry>;

/**
	Represents an access modifier.
	@see https://haxe.org/manual/class-field-access-modifier.html
**/
export enum Access {

	/**
		Public access modifier, grants access from anywhere.
		@see https://haxe.org/manual/class-field-visibility.html
	**/
    APublic,

	/**
		Private access modifier, grants access to class and its sub-classes
		only.
		@see https://haxe.org/manual/class-field-visibility.html
	**/
    APrivate,

	/**
		Static access modifier.
	**/
    AStatic,

	/**
		Override access modifier.
		@see https://haxe.org/manual/class-field-override.html
	**/
    AOverride,

	/**
		Dynamic (re-)bindable access modifier.
		@see https://haxe.org/manual/class-field-dynamic.html
	**/
    ADynamic,

	/**
		Inline access modifier. Allows expressions to be directly inserted in
		place of calls to them.
		@see https://haxe.org/manual/class-field-inline.html
	**/
    AInline,

	/**
		Macros access modifier. Allows expression macro functions. These are
		normal functions which are executed as soon as they are typed.
	**/
    AMacro,

	/**
		Final access modifier. For functions, they can not be overridden. For
		variables, it means they can be assigned to only once.
	**/
    AFinal,

	/**
		Extern access modifier.
	**/
    AExtern,
}

/**
	Represents the field type in the AST.
**/
export class FieldType extends ADTEnum<
	 'FVar'
	| 'FFun'
	| 'FProp'
> { }
/**
	Represents a variable field type.
**/
export class FVar extends FieldType {
	constructor(readonly t: Null<ComplexType>, readonly e? : Null<Expr> ) { super('FVar'); }
}
/**
	Represents a function field type.
**/	
export class FFun extends FieldType {
	constructor(readonly f : HxFunction ) { super('FFun'); }
}
/**
	Represents a property with getter and setter field type.
**/
export class FProp extends FieldType {
	constructor(readonly get: string, readonly set: string, readonly t?: Null<ComplexType>, readonly e? : Null<Expr> ) { super('FProp'); }
}

/**
	Represents a function in the AST.
**/
export type HxFunction = {
	/**
		A list of function arguments.
	**/
	args: Array<FunctionArg>;

	/**
		The return type-hint of the function, if available.
	**/
	ret: Null<ComplexType>;

	/**
		The expression of the function body, if available.
	**/
	expr: Null<Expr>;

	/**
		An optional list of function parameter type declarations.
	**/
	params?: Array<TypeParamDecl>;
}

/**
	Represents a function argument in the AST.
**/
export type FunctionArg = string;
// {
// 	/**
// 		The name of the function argument.
// 	**/
// 	name: String;

// 	/**
// 		Whether or not the function argument is optional.
// 	**/
// 	opt?: Bool;

// 	/**
// 		The type-hint of the function argument, if available.
// 	**/
// 	type: Null<ComplexType>;

// 	/**
// 		The optional value of the function argument, if available.
// 	**/
// 	value?: Null<Expr>;

// 	/**
// 		The metadata of the function argument.
// 	**/
// 	meta?: Metadata;
// }


/**
	Represents a type path in the AST.
**/
export type TypePath = string;
// export type TypePath = {
// 	/**
// 		Represents the package of the type path.
// 	**/
// 	pack?: Array<string>;

// 	/**
// 		The name of the type path.
// 	**/
// 	name?: string;

// 	/**
// 		Optional parameters of the type path.
// 	**/
// 	params?: Array<TypeParam>;

// 	/**
// 		Sub is set on module sub-type access:
// 		`pack.Module.Type` has name = Module, sub = Type, if available.
// 	**/
// 	sub?: Null<string>;
// }

/**
	Represents a concrete type parameter in the AST.

	Haxe allows expressions in concrete type parameters, e.g.
	`new YourType<["hello", "world"]>`. In that case the value is `TPExpr` while
	in the normal case it's `TPType`.
**/
export class TypeParam extends ADTEnum<
      'TPType'
	| 'TPExpr'
> {}
export class TPType extends TypeParam {
	constructor(readonly t: ComplexType) { super('TPType') }
}
export class TPExpr extends TypeParam {
	constructor(readonly e: Expr) { super('TPExpr') }
}