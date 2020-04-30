package ts.html;
/**
	This Web Speech API interface represents a voice that the system supports. Every SpeechSynthesisVoice has its own relative speech service including information about language, name and URI.
**/
extern typedef ISpeechSynthesisVoice = {
	@:native("default")
	final default_ : Bool;
	final lang : String;
	final localService : Bool;
	final name : String;
	final voiceURI : String;
};