package tool;

import haxe.ds.ReadOnlyArray;
using StringTools;

class HaxeTools {

	/**
		Convert a string to something safe to use as an identifier in haxe (a-z)
	**/
	static public function toSafeIdent(str: String) {
		// remove quotes
		str = ~/["'`]/gm.replace(str, '');

		// replace hyphens and dots with underscore
		str = ~/[-–—.]/gm.replace(str, '_');

		// replace non-ascii characters with their name (and capitalize the following)
		// replace non-a-z_ characters at the start
		// hello@world becomes helloAtWorld
		// 123lib becomes OneTwoThreeLib
		str = ~/([^0-9a-z_]|^[^a-z_]+)([a-z])?/ig.map(str, (reg) -> {
			var illegalChars = reg.matched(1);
			var followingChar = reg.matched(2);
			return
				illegalChars.split('').map(char -> {
					var charName = specialCharacterNames.get(char);
					return charName != null ? charName : '_';
				}).join('') +
				(followingChar != null ? followingChar.toUpperCase() : '');
		});

		// add underscore suffix to reserved keywords
		if (haxeReservedWords.indexOf(str) != -1) {
			str += '_';
		}

		return str;
	}

    static public function toSafeTypeName(str: String) {
        str = toSafeIdent(str);
        // capitalize
        return str.charAt(0).toUpperCase() + str.substr(1);
    }

	static public final haxeReservedWords: ReadOnlyArray<String> = [
		// see core/ast.ml
		"public", "private", "static", "override", "dynamic", "inline", "macro",
		"final", "extern", "function", "class", "static", "var", "if", "else", "while",
		"do", "for", "break", "return", "continue", "extends", "implements", "import",
		"switch", "case", "default", "private", "public", "try", "catch", "new", "this",
		"throw", "extern", "enum", "in", "interface", "untyped", "cast", "override",
		"typedef", "dynamic", "package", "inline", "using", "null", "true", "false",
		"abstract", "macro", "final", "operator", "overload", "protected",
	];

	static final specialCharacterNames = [
        '0' => 'Zero',
        '1' => 'One',
        '2' => 'Two',
        '3' => 'Three',
        '4' => 'Four',
        '5' => 'Five',
        '6' => 'Six',
        '7' => 'Seven',
        '8' => 'Eight',
        '9' => 'Nine',
        '!' => 'Bang',
        '"' => 'DoubleQuote',
        '#' => 'Hash',
        '$' => 'Dollar',
        '£' => 'Pound',
        '%' => 'Percent',
        '&' => 'Ampersand',
        '\'' => 'Quote',
        '(' => 'LeftParentheses',
        ')' => 'RightParentheses',
        '*' => 'Star',
        '+' => 'Plus',
        ',' => 'Comma',
        '-' => 'Minus',
        '.' => 'Dot',
        '/' => 'ForwardSlash',
        ':' => 'Colon',
        ';' => 'SemiColon',
        '<' => 'LessThan',
        '=' => 'Equals',
        '>' => 'GreaterThan',
        '?' => 'QuestionMark',
        '{' => 'LeftBrace',
        '|' => 'Bar',
        '}' => 'RightBrace',
        '~' => 'Tilde',
        '[' => 'LeftSquareBracket',
        '\\' => 'BackwardSlash',
        ']' => 'RightSquareBracket',
        '^' => 'Caret',
        '_' => 'Underscore',
        '@' => 'At',
    ];

}