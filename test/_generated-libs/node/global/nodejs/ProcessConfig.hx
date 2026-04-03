package global.nodejs;

typedef ProcessConfig = {
	final target_defaults : {
		final cflags : Array<Dynamic>;
		final default_configuration : String;
		final defines : Array<String>;
		final include_dirs : Array<String>;
		final libraries : Array<String>;
	};
	final variables : {
		final clang : Float;
		final host_arch : String;
		final node_install_npm : Bool;
		final node_install_waf : Bool;
		final node_prefix : String;
		final node_shared_openssl : Bool;
		final node_shared_v8 : Bool;
		final node_shared_zlib : Bool;
		final node_use_dtrace : Bool;
		final node_use_etw : Bool;
		final node_use_openssl : Bool;
		final target_arch : String;
		final v8_no_strict_aliasing : Float;
		final v8_use_snapshot : Bool;
		final visibility : String;
	};
};