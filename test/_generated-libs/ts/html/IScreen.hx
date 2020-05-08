package ts.html;
/**
	A screen, usually the one on which the current window is being rendered, and is obtained using window.screen.
**/
typedef IScreen = {
	final availHeight : Float;
	final availWidth : Float;
	final colorDepth : Float;
	final height : Float;
	final orientation : ScreenOrientation;
	final pixelDepth : Float;
	final width : Float;
};