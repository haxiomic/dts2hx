package ts.html;
/**
	Corresponds to the preserveAspectRatio attribute, which is available for some of SVG's elements.
**/
extern typedef ISVGPreserveAspectRatio = {
	var align : Float;
	var meetOrSlice : Float;
	final SVG_MEETORSLICE_MEET : Float;
	final SVG_MEETORSLICE_SLICE : Float;
	final SVG_MEETORSLICE_UNKNOWN : Float;
	final SVG_PRESERVEASPECTRATIO_NONE : Float;
	final SVG_PRESERVEASPECTRATIO_UNKNOWN : Float;
	final SVG_PRESERVEASPECTRATIO_XMAXYMAX : Float;
	final SVG_PRESERVEASPECTRATIO_XMAXYMID : Float;
	final SVG_PRESERVEASPECTRATIO_XMAXYMIN : Float;
	final SVG_PRESERVEASPECTRATIO_XMIDYMAX : Float;
	final SVG_PRESERVEASPECTRATIO_XMIDYMID : Float;
	final SVG_PRESERVEASPECTRATIO_XMIDYMIN : Float;
	final SVG_PRESERVEASPECTRATIO_XMINYMAX : Float;
	final SVG_PRESERVEASPECTRATIO_XMINYMID : Float;
	final SVG_PRESERVEASPECTRATIO_XMINYMIN : Float;
};