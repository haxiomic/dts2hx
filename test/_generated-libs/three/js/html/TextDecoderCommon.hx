package js.html;
extern typedef TextDecoderCommon = { /**
		Returns encoding's name, lowercased.
	**/
	final encoding : String; /**
		Returns true if error mode is "fatal", and false otherwise.
	**/
	final fatal : Bool; /**
		Returns true if ignore BOM flag is set, and false otherwise.
	**/
	final ignoreBOM : Bool; };