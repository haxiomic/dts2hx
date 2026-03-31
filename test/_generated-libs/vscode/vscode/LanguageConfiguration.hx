package vscode;

/**
	The language configuration interfaces defines the contract between extensions
	and various editor features, like automatic bracket insertion, automatic indentation etc.
**/
typedef LanguageConfiguration = {
	/**
		The language's comment settings.
	**/
	@:optional
	var comments : CommentRule;
	/**
		The language's brackets.
		This configuration implicitly affects pressing Enter around these brackets.
	**/
	@:optional
	var brackets : Array<CharacterPair>;
	/**
		The language's word definition.
		If the language supports Unicode identifiers (e.g. JavaScript), it is preferable
		to provide a word definition that uses exclusion of known separators.
		e.g.: A regex that matches anything except known separators (and dot is allowed to occur in a floating point number):
		  /(-?\d*\.\d\w*)|([^\`\~\!\@\#\%\^\&\*\(\)\-\=\+\[\{\]\}\\\|\;\:\'\"\,\.\<\>\/\?\s]+)/g
	**/
	@:optional
	var wordPattern : js.lib.RegExp;
	/**
		The language's indentation settings.
	**/
	@:optional
	var indentationRules : IndentationRule;
	/**
		The language's rules to be evaluated when pressing Enter.
	**/
	@:optional
	var onEnterRules : Array<OnEnterRule>;
	/**
		**Deprecated** Do not use.
	**/
	@:optional
	var __electricCharacterSupport : {
		/**
			This property is deprecated and will be **ignored** from
			the editor.
		**/
		@:optional
		var brackets : Dynamic;
		/**
			This property is deprecated and not fully supported anymore by
			the editor (scope and lineStart are ignored).
			Use the autoClosingPairs property in the language configuration file instead.
		**/
		@:optional
		var docComment : {
			var scope : String;
			var open : String;
			var lineStart : String;
			@:optional
			var close : String;
		};
	};
	/**
		**Deprecated** Do not use.
	**/
	@:optional
	var __characterPairSupport : {
		var autoClosingPairs : Array<{
			var open : String;
			var close : String;
			@:optional
			var notIn : Array<String>;
		}>;
	};
};