package node.string_decoder;
extern typedef NodeStringDecoder = {
	function write(buffer:global.IBuffer):String;
	function end(?buffer:global.IBuffer):String;
};