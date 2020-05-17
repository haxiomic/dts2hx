package node.string_decoder;

typedef NodeStringDecoder = {
	function write(buffer:global.Buffer):String;
	function end(?buffer:global.Buffer):String;
};