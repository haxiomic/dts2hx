package ts.html;
typedef IRandomSource = {
	function getRandomValues<T>(array:T):T;
};