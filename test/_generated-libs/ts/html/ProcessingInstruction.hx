package ts.html;
/**
	A processing instruction embeds application-specific instructions in XML which can be ignored by other applications that don't recognize them.
**/
@:native("ProcessingInstruction") extern class ProcessingInstruction {
	function new();
	final target : String;
	static var prototype : IProcessingInstruction;
}