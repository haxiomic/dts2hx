package ts.html;
/**
	The dimensions of a piece of text in the canvas, as created by the CanvasRenderingContext2D.measureText() method.
**/
typedef ITextMetrics = {
	/**
		Returns the measurement described below.
	**/
	final actualBoundingBoxAscent : Float;
	/**
		Returns the measurement described below.
	**/
	final actualBoundingBoxDescent : Float;
	/**
		Returns the measurement described below.
	**/
	final actualBoundingBoxLeft : Float;
	/**
		Returns the measurement described below.
	**/
	final actualBoundingBoxRight : Float;
	/**
		Returns the measurement described below.
	**/
	final alphabeticBaseline : Float;
	/**
		Returns the measurement described below.
	**/
	final emHeightAscent : Float;
	/**
		Returns the measurement described below.
	**/
	final emHeightDescent : Float;
	/**
		Returns the measurement described below.
	**/
	final fontBoundingBoxAscent : Float;
	/**
		Returns the measurement described below.
	**/
	final fontBoundingBoxDescent : Float;
	/**
		Returns the measurement described below.
	**/
	final hangingBaseline : Float;
	/**
		Returns the measurement described below.
	**/
	final ideographicBaseline : Float;
	/**
		Returns the measurement described below.
	**/
	final width : Float;
};