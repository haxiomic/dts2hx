package modules.ambient;

@:js.import(@default "my-library") @valueModuleOnly extern class MyLibrary {
	static function doWork(input:String):String;
	static final VERSION : String;
}