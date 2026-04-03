package js.html;

/**
	The **`UserActivation`** interface provides information about whether a user is currently interacting with the page, or has completed an interaction since page load.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/UserActivation)
**/
typedef IUserActivation = {
	/**
		The read-only **`hasBeenActive`** property of the UserActivation interface indicates whether the current window has sticky activation.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/UserActivation/hasBeenActive)
	**/
	final hasBeenActive : Bool;
	/**
		The read-only **`isActive`** property of the UserActivation interface indicates whether the current window has transient activation.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/UserActivation/isActive)
	**/
	final isActive : Bool;
};