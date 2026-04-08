package chart_js;

typedef TooltipOptions<TType:(String)> = {
	/**
		Are on-canvas tooltips enabled?
	**/
	var enabled : Scriptable<Bool, ScriptableTooltipContext<TType>>;
	/**
		See external tooltip section.
	**/
	function external(args:{ var chart : Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>; var tooltip : TooltipModel<TType>; }):Void;
	/**
		The mode for positioning the tooltip
	**/
	var position : Scriptable<String, ScriptableTooltipContext<TType>>;
	/**
		Override the tooltip alignment calculations
	**/
	var xAlign : Scriptable<TooltipXAlignment, ScriptableTooltipContext<TType>>;
	var yAlign : Scriptable<TooltipYAlignment, ScriptableTooltipContext<TType>>;
	/**
		Sort tooltip items.
	**/
	dynamic function itemSort(a:TooltipItem<String>, b:TooltipItem<String>, data:ChartData<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>):Float;
	dynamic function filter(e:TooltipItem<String>, index:Float, array:Array<TooltipItem<String>>, data:ChartData<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>):Bool;
	/**
		Background color of the tooltip.
	**/
	var backgroundColor : Scriptable<Color, ScriptableTooltipContext<TType>>;
	/**
		Color of title
	**/
	var titleColor : Scriptable<Color, ScriptableTooltipContext<TType>>;
	/**
		See Fonts
	**/
	var titleFont : Scriptable<FontSpec, ScriptableTooltipContext<TType>>;
	/**
		Spacing to add to top and bottom of each title line.
	**/
	var titleSpacing : Scriptable<Float, ScriptableTooltipContext<TType>>;
	/**
		Margin to add on bottom of title section.
	**/
	var titleMarginBottom : Scriptable<Float, ScriptableTooltipContext<TType>>;
	/**
		Horizontal alignment of the title text lines.
	**/
	var titleAlign : Scriptable<TextAlign, ScriptableTooltipContext<TType>>;
	/**
		Spacing to add to top and bottom of each tooltip item.
	**/
	var bodySpacing : Scriptable<Float, ScriptableTooltipContext<TType>>;
	/**
		Color of body
	**/
	var bodyColor : Scriptable<Color, ScriptableTooltipContext<TType>>;
	/**
		See Fonts.
	**/
	var bodyFont : Scriptable<FontSpec, ScriptableTooltipContext<TType>>;
	/**
		Horizontal alignment of the body text lines.
	**/
	var bodyAlign : Scriptable<TextAlign, ScriptableTooltipContext<TType>>;
	/**
		Spacing to add to top and bottom of each footer line.
	**/
	var footerSpacing : Scriptable<Float, ScriptableTooltipContext<TType>>;
	/**
		Margin to add before drawing the footer.
	**/
	var footerMarginTop : Scriptable<Float, ScriptableTooltipContext<TType>>;
	/**
		Color of footer
	**/
	var footerColor : Scriptable<Color, ScriptableTooltipContext<TType>>;
	/**
		See Fonts
	**/
	var footerFont : Scriptable<FontSpec, ScriptableTooltipContext<TType>>;
	/**
		Horizontal alignment of the footer text lines.
	**/
	var footerAlign : Scriptable<TextAlign, ScriptableTooltipContext<TType>>;
	/**
		Padding to add to the tooltip
	**/
	var padding : Scriptable<ts.AnyOf2<Float, ChartArea>, ScriptableTooltipContext<TType>>;
	/**
		Extra distance to move the end of the tooltip arrow away from the tooltip point.
	**/
	var caretPadding : Scriptable<Float, ScriptableTooltipContext<TType>>;
	/**
		Size, in px, of the tooltip arrow.
	**/
	var caretSize : Scriptable<Float, ScriptableTooltipContext<TType>>;
	/**
		Radius of tooltip corner curves.
	**/
	var cornerRadius : Scriptable<Float, ScriptableTooltipContext<TType>>;
	/**
		Color to draw behind the colored boxes when multiple items are in the tooltip.
	**/
	var multiKeyBackground : Scriptable<Color, ScriptableTooltipContext<TType>>;
	/**
		If true, color boxes are shown in the tooltip.
	**/
	var displayColors : Scriptable<Bool, ScriptableTooltipContext<TType>>;
	/**
		Width of the color box if displayColors is true.
	**/
	var boxWidth : Scriptable<Float, ScriptableTooltipContext<TType>>;
	/**
		Height of the color box if displayColors is true.
	**/
	var boxHeight : Scriptable<Float, ScriptableTooltipContext<TType>>;
	/**
		Use the corresponding point style (from dataset options) instead of color boxes, ex: star, triangle etc. (size is based on the minimum value between boxWidth and boxHeight)
	**/
	var usePointStyle : Scriptable<Bool, ScriptableTooltipContext<TType>>;
	/**
		Color of the border.
	**/
	var borderColor : Scriptable<Color, ScriptableTooltipContext<TType>>;
	/**
		Size of the border.
	**/
	var borderWidth : Scriptable<Float, ScriptableTooltipContext<TType>>;
	/**
		true for rendering the legends from right to left.
	**/
	var rtl : Scriptable<Bool, ScriptableTooltipContext<TType>>;
	/**
		This will force the text direction 'rtl' or 'ltr on the canvas for rendering the tooltips, regardless of the css specified on the canvas
	**/
	var textDirection : Scriptable<String, ScriptableTooltipContext<TType>>;
	var animation : AnimationSpec<TType>;
	var animations : AnimationsSpec<TType>;
	var callbacks : TooltipCallbacks<TType, TooltipModel<TType>, TooltipItem<TType>>;
	/**
		Sets which elements appear in the tooltip. See Interaction Modes for details.
	**/
	var mode : String;
	/**
		if true, the hover mode only applies when the mouse position intersects an item on the chart.
	**/
	var intersect : Bool;
	/**
		Can be set to 'x', 'y', or 'xy' to define which directions are used in calculating distances. Defaults to 'x' for 'index' mode and 'xy' in dataset and 'nearest' modes.
	**/
	var axis : String;
};