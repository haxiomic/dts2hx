package js.html;

/**
	The **`NavigationActivation`** interface of the Navigation API represents a recent cross-document navigation.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/NavigationActivation)
**/
typedef INavigationActivation = {
	/**
		The **`entry`** read-only property of the NavigationActivation interface contains a NavigationHistoryEntry object representing the history entry for the inbound ('to') document in the navigation.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/NavigationActivation/entry)
	**/
	final entry : NavigationHistoryEntry;
	/**
		The **`from`** read-only property of the NavigationActivation interface contains a NavigationHistoryEntry object representing the history entry for the outgoing ('from') document in the navigation.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/NavigationActivation/from)
	**/
	final from : Null<NavigationHistoryEntry>;
	/**
		The **`navigationType`** read-only property of the NavigationActivation interface contains a string indicating the type of navigation.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/NavigationActivation/navigationType)
	**/
	final navigationType : js.html.NavigationType;
};