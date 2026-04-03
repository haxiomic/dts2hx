package js.html;

/**
	The **`ReportBody`** interface of the Reporting API represents the body of a report.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/ReportBody)
**/
@:native("ReportBody") extern class ReportBody {
	function new();
	/**
		The **`toJSON()`** method of the ReportBody interface is a _serializer_, and returns a JSON representation of the `ReportBody` object.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ReportBody/toJSON)
	**/
	function toJSON():Dynamic;
	static var prototype : ReportBody;
}