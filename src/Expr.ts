// super minimal haxe.macro.Expr, just enough to help convert the typescript compiler externs
type Null<T> = T | null;
type Int = number;
type Bool = boolean;
type Expr = string; // for now just use strings for expressions
type ComplexType = string;

/**
	Represents a position in a file.
**/
type Pos = {
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
type TypeDefinition = {
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
type Field = {
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
type TypeParamDecl = {
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
enum TypeDefKind {
	/**
		Represents an enum kind.
	**/
	TDEnum,

	/**
		Represents a structure kind.
	**/
	TDStructure,

	/**
		Represents a class kind.
	**/
	// TDClass( ?superClass : TypePath, ?interfaces : Array<TypePath>, ?isInterface : Bool, ?isFinal : Bool );

	/**
		Represents an alias/type kind.
	**/
	// TDAlias( t : ComplexType ); // ignore TypeDefinition.fields

	/**
		Represents an abstract kind.
	**/
	// TDAbstract( tthis : Null<ComplexType>, ?from : Array<ComplexType>, ?to: Array<ComplexType> );
}

/**
	Represents a metadata entry in the AST.
**/
type MetadataEntry = {
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
type Metadata = Array<MetadataEntry>;

/**
	Represents an access modifier.
	@see https://haxe.org/manual/class-field-access-modifier.html
**/
enum Access {

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
enum FieldType {
	/**
		Represents a variable field type.
	**/
	// FVar( t : Null<ComplexType>, ?e : Null<Expr> );

	/**
		Represents a function field type.
	**/
	// FFun( f : Function );

	/**
		Represents a property with getter and setter field type.
	**/
	// FProp( get : string, set : string, ?t : Null<ComplexType>, ?e : Null<Expr> );
}