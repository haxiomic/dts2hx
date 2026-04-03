package js.html;

/**
	The `Report` interface of the Reporting API represents a single report.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/Report)
**/
typedef IReport = {
	/**
		The **`body`** read-only property of the Report interface returns the body of the report, which is a `ReportBody` object containing the detailed report information.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Report/body)
	**/
	final body : Null<ReportBody>;
	/**
		The **`type`** read-only property of the Report interface returns the type of report generated, e.g., `deprecation` or `intervention`.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Report/type)
	**/
	final type : String;
	/**
		The **`url`** read-only property of the Report interface returns the URL of the document that generated the report.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Report/url)
	**/
	final url : String;
	function toJSON():Dynamic;
};