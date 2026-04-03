package node.nodecolontest.reporters;

typedef TestEvent = ts.AnyOf12<{
	var type : String;
	var data : node.nodecolontest.test.eventdata.TestCoverage;
}, {
	var type : String;
	var data : node.nodecolontest.test.eventdata.TestComplete;
}, {
	var type : String;
	var data : node.nodecolontest.test.eventdata.TestDequeue;
}, {
	var type : String;
	var data : node.nodecolontest.test.eventdata.TestDiagnostic;
}, {
	var type : String;
	var data : node.nodecolontest.test.eventdata.TestEnqueue;
}, {
	var type : String;
	var data : node.nodecolontest.test.eventdata.TestFail;
}, {
	var type : String;
	var data : node.nodecolontest.test.eventdata.TestPass;
}, {
	var type : String;
	var data : node.nodecolontest.test.eventdata.TestPlan;
}, {
	var type : String;
	var data : node.nodecolontest.test.eventdata.TestStart;
}, {
	var type : String;
	var data : node.nodecolontest.test.eventdata.TestStderr;
}, {
	var type : String;
	var data : node.nodecolontest.test.eventdata.TestStdout;
}, {
	var type : String;
	var data : Null<Any>;
}>;