package js.html;

/**
	The `ReportingObserver` interface of the Reporting API allows you to collect and access reports.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/ReportingObserver)
**/
typedef IReportingObserver = {
	/**
		The **`disconnect()`** method of the previously started observing from collecting reports.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ReportingObserver/disconnect)
	**/
	function disconnect():Void;
	/**
		The **`observe()`** method of the collecting reports in its report queue.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ReportingObserver/observe)
	**/
	function observe():Void;
	/**
		The **`takeRecords()`** method of the in the observer's report queue, and empties the queue.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ReportingObserver/takeRecords)
	**/
	function takeRecords():ReportList;
};