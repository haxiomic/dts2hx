package node.string_decoder;
extern interface NodeStringDecoder {
	function write(buffer:global.Buffer):String;
	function end(?buffer:global.Buffer):String;
}