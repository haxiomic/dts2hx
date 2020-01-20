package typescript.ts;



@:native('ts.ScriptSnapshot')
final extern class ScriptSnapshot {
	static function fromString(text: String): typescript.ts.IScriptSnapshot;
}

