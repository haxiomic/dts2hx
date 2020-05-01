package node.string_decoder;
typedef NodeStringDecoder = {
	function write(buffer:global.IBuffer):String;
	function end(?buffer:global.IBuffer):String;
};