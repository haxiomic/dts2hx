package chart_js;

typedef AnimationOptions<TType:(String)> = {
	var animation : ts.AnyOf2<Bool, AnimationSpec<TType> & {
		/**
			Callback called on each step of an animation.
		**/
		@:optional
		dynamic function onProgress(event:AnimationEvent):Void;
		/**
			Callback called when all animations are completed.
		**/
		@:optional
		dynamic function onComplete(event:AnimationEvent):Void;
	}>;
	var animations : AnimationsSpec<TType>;
	var transitions : TransitionsSpec<TType>;
};