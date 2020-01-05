package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:4709:5
**/

typedef SolutionBuilderHostBase<T> = typescript.ts.ProgramHost<T> & {
	@:optional
	function createDirectory(path: String): Void;
	/**
	Should provide create directory and writeFile if done of invalidatedProjects is not invoked with
	writeFileCallback
	**/
	@:optional
	function writeFile(path: String, data: String, ?writeByteOrderMark: Bool): Void;
	function getModifiedTime(fileName: String): Null<js.lib.Date>;
	function setModifiedTime(fileName: String, date: js.lib.Date): Void;
	function deleteFile(fileName: String): Void;
	@:optional
	function getParsedCommandLine(fileName: String): Null<typescript.ts.ParsedCommandLine>;
	var reportDiagnostic: typescript.ts.DiagnosticReporter;
	var reportSolutionBuilderStatus: typescript.ts.DiagnosticReporter;
	@:optional
	function afterProgramEmitAndDiagnostics(program: T): Void;
}

