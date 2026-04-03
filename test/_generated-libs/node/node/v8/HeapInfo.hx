package node.v8;

typedef HeapInfo = {
	var total_heap_size : Float;
	var total_heap_size_executable : Float;
	var total_physical_size : Float;
	var total_available_size : Float;
	var used_heap_size : Float;
	var heap_size_limit : Float;
	var malloced_memory : Float;
	var peak_malloced_memory : Float;
	var does_zap_garbage : DoesZapCodeSpaceFlag;
	var number_of_native_contexts : Float;
	var number_of_detached_contexts : Float;
	var total_global_handles_size : Float;
	var used_global_handles_size : Float;
	var external_memory : Float;
};