package chart_js;

typedef TooltipModel<TType:(String)> = {
	var dataPoints : Array<TooltipItem<TType>>;
	var xAlign : TooltipXAlignment;
	var yAlign : TooltipYAlignment;
	var x : Float;
	var y : Float;
	var width : Float;
	var height : Float;
	var caretX : Float;
	var caretY : Float;
	var body : Array<{
		var before : Array<String>;
		var lines : Array<String>;
		var after : Array<String>;
	}>;
	var beforeBody : Array<String>;
	var afterBody : Array<String>;
	var title : Array<String>;
	var footer : Array<String>;
	var labelColors : Array<TooltipLabelStyle>;
	var labelTextColors : Array<Color>;
	var labelPointStyles : Array<{
		var pointStyle : PointStyle;
		var rotation : Float;
	}>;
	var opacity : Float;
	var options : TooltipOptions<TType>;
};