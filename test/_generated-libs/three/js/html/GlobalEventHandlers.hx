package js.html;
extern interface GlobalEventHandlers {
	/**
		Fires when the user aborts the download.
	**/
	var onabort : Null<(ev:UIEvent) -> Any>;
	var onanimationcancel : Null<(ev:AnimationEvent) -> Any>;
	var onanimationend : Null<(ev:AnimationEvent) -> Any>;
	var onanimationiteration : Null<(ev:AnimationEvent) -> Any>;
	var onanimationstart : Null<(ev:AnimationEvent) -> Any>;
	var onauxclick : Null<(ev:MouseEvent) -> Any>;
	/**
		Fires when the object loses the input focus.
	**/
	var onblur : Null<(ev:FocusEvent) -> Any>;
	var oncancel : Null<(ev:Event) -> Any>;
	/**
		Occurs when playback is possible, but would require further buffering.
	**/
	var oncanplay : Null<(ev:Event) -> Any>;
	var oncanplaythrough : Null<(ev:Event) -> Any>;
	/**
		Fires when the contents of the object or selection have changed.
	**/
	var onchange : Null<(ev:Event) -> Any>;
	/**
		Fires when the user clicks the left mouse button on the object
	**/
	var onclick : Null<(ev:MouseEvent) -> Any>;
	var onclose : Null<(ev:Event) -> Any>;
	/**
		Fires when the user clicks the right mouse button in the client area, opening the context menu.
	**/
	var oncontextmenu : Null<(ev:MouseEvent) -> Any>;
	var oncuechange : Null<(ev:Event) -> Any>;
	/**
		Fires when the user double-clicks the object.
	**/
	var ondblclick : Null<(ev:MouseEvent) -> Any>;
	/**
		Fires on the source object continuously during a drag operation.
	**/
	var ondrag : Null<(ev:DragEvent) -> Any>;
	/**
		Fires on the source object when the user releases the mouse at the close of a drag operation.
	**/
	var ondragend : Null<(ev:DragEvent) -> Any>;
	/**
		Fires on the target element when the user drags the object to a valid drop target.
	**/
	var ondragenter : Null<(ev:DragEvent) -> Any>;
	var ondragexit : Null<(ev:Event) -> Any>;
	/**
		Fires on the target object when the user moves the mouse out of a valid drop target during a drag operation.
	**/
	var ondragleave : Null<(ev:DragEvent) -> Any>;
	/**
		Fires on the target element continuously while the user drags the object over a valid drop target.
	**/
	var ondragover : Null<(ev:DragEvent) -> Any>;
	/**
		Fires on the source object when the user starts to drag a text selection or selected object.
	**/
	var ondragstart : Null<(ev:DragEvent) -> Any>;
	var ondrop : Null<(ev:DragEvent) -> Any>;
	/**
		Occurs when the duration attribute is updated.
	**/
	var ondurationchange : Null<(ev:Event) -> Any>;
	/**
		Occurs when the media element is reset to its initial state.
	**/
	var onemptied : Null<(ev:Event) -> Any>;
	/**
		Occurs when the end of playback is reached.
	**/
	var onended : Null<(ev:Event) -> Any>;
	/**
		Fires when an error occurs during object loading.
	**/
	var onerror : Null<OnErrorEventHandlerNonNull>;
	/**
		Fires when the object receives focus.
	**/
	var onfocus : Null<(ev:FocusEvent) -> Any>;
	var ongotpointercapture : Null<(ev:PointerEvent) -> Any>;
	var oninput : Null<(ev:Event) -> Any>;
	var oninvalid : Null<(ev:Event) -> Any>;
	/**
		Fires when the user presses a key.
	**/
	var onkeydown : Null<(ev:KeyboardEvent) -> Any>;
	/**
		Fires when the user presses an alphanumeric key.
	**/
	var onkeypress : Null<(ev:KeyboardEvent) -> Any>;
	/**
		Fires when the user releases a key.
	**/
	var onkeyup : Null<(ev:KeyboardEvent) -> Any>;
	/**
		Fires immediately after the browser loads the object.
	**/
	var onload : Null<(ev:Event) -> Any>;
	/**
		Occurs when media data is loaded at the current playback position.
	**/
	var onloadeddata : Null<(ev:Event) -> Any>;
	/**
		Occurs when the duration and dimensions of the media have been determined.
	**/
	var onloadedmetadata : Null<(ev:Event) -> Any>;
	var onloadend : Null<(ev:ProgressEvent<EventTarget>) -> Any>;
	/**
		Occurs when Internet Explorer begins looking for media data.
	**/
	var onloadstart : Null<(ev:Event) -> Any>;
	var onlostpointercapture : Null<(ev:PointerEvent) -> Any>;
	/**
		Fires when the user clicks the object with either mouse button.
	**/
	var onmousedown : Null<(ev:MouseEvent) -> Any>;
	var onmouseenter : Null<(ev:MouseEvent) -> Any>;
	var onmouseleave : Null<(ev:MouseEvent) -> Any>;
	/**
		Fires when the user moves the mouse over the object.
	**/
	var onmousemove : Null<(ev:MouseEvent) -> Any>;
	/**
		Fires when the user moves the mouse pointer outside the boundaries of the object.
	**/
	var onmouseout : Null<(ev:MouseEvent) -> Any>;
	/**
		Fires when the user moves the mouse pointer into the object.
	**/
	var onmouseover : Null<(ev:MouseEvent) -> Any>;
	/**
		Fires when the user releases a mouse button while the mouse is over the object.
	**/
	var onmouseup : Null<(ev:MouseEvent) -> Any>;
	/**
		Occurs when playback is paused.
	**/
	var onpause : Null<(ev:Event) -> Any>;
	/**
		Occurs when the play method is requested.
	**/
	var onplay : Null<(ev:Event) -> Any>;
	/**
		Occurs when the audio or video has started playing.
	**/
	var onplaying : Null<(ev:Event) -> Any>;
	var onpointercancel : Null<(ev:PointerEvent) -> Any>;
	var onpointerdown : Null<(ev:PointerEvent) -> Any>;
	var onpointerenter : Null<(ev:PointerEvent) -> Any>;
	var onpointerleave : Null<(ev:PointerEvent) -> Any>;
	var onpointermove : Null<(ev:PointerEvent) -> Any>;
	var onpointerout : Null<(ev:PointerEvent) -> Any>;
	var onpointerover : Null<(ev:PointerEvent) -> Any>;
	var onpointerup : Null<(ev:PointerEvent) -> Any>;
	/**
		Occurs to indicate progress while downloading media data.
	**/
	var onprogress : Null<(ev:ProgressEvent<EventTarget>) -> Any>;
	/**
		Occurs when the playback rate is increased or decreased.
	**/
	var onratechange : Null<(ev:Event) -> Any>;
	/**
		Fires when the user resets a form.
	**/
	var onreset : Null<(ev:Event) -> Any>;
	var onresize : Null<(ev:UIEvent) -> Any>;
	/**
		Fires when the user repositions the scroll box in the scroll bar on the object.
	**/
	var onscroll : Null<(ev:Event) -> Any>;
	var onsecuritypolicyviolation : Null<(ev:SecurityPolicyViolationEvent) -> Any>;
	/**
		Occurs when the seek operation ends.
	**/
	var onseeked : Null<(ev:Event) -> Any>;
	/**
		Occurs when the current playback position is moved.
	**/
	var onseeking : Null<(ev:Event) -> Any>;
	/**
		Fires when the current selection changes.
	**/
	var onselect : Null<(ev:Event) -> Any>;
	var onselectionchange : Null<(ev:Event) -> Any>;
	var onselectstart : Null<(ev:Event) -> Any>;
	/**
		Occurs when the download has stopped.
	**/
	var onstalled : Null<(ev:Event) -> Any>;
	var onsubmit : Null<(ev:Event) -> Any>;
	/**
		Occurs if the load operation has been intentionally halted.
	**/
	var onsuspend : Null<(ev:Event) -> Any>;
	/**
		Occurs to indicate the current playback position.
	**/
	var ontimeupdate : Null<(ev:Event) -> Any>;
	var ontoggle : Null<(ev:Event) -> Any>;
	var ontouchcancel : Null<(ev:TouchEvent) -> Any>;
	var ontouchend : Null<(ev:TouchEvent) -> Any>;
	var ontouchmove : Null<(ev:TouchEvent) -> Any>;
	var ontouchstart : Null<(ev:TouchEvent) -> Any>;
	var ontransitioncancel : Null<(ev:TransitionEvent) -> Any>;
	var ontransitionend : Null<(ev:TransitionEvent) -> Any>;
	var ontransitionrun : Null<(ev:TransitionEvent) -> Any>;
	var ontransitionstart : Null<(ev:TransitionEvent) -> Any>;
	/**
		Occurs when the volume is changed, or playback is muted or unmuted.
	**/
	var onvolumechange : Null<(ev:Event) -> Any>;
	/**
		Occurs when playback stops because the next frame of a video resource is not available.
	**/
	var onwaiting : Null<(ev:Event) -> Any>;
	var onwheel : Null<(ev:WheelEvent) -> Any>;
	@:overload(function(type:String, listener:haxe.extern.EitherType<EventListener, EventListenerObject>, ?options:haxe.extern.EitherType<Bool, AddEventListenerOptions>):Void { })
	function addEventListener<K:(String)>(type:K, listener:(ev:Any) -> Any, ?options:haxe.extern.EitherType<Bool, AddEventListenerOptions>):Void;
	@:overload(function(type:String, listener:haxe.extern.EitherType<EventListener, EventListenerObject>, ?options:haxe.extern.EitherType<Bool, EventListenerOptions>):Void { })
	function removeEventListener<K:(String)>(type:K, listener:(ev:Any) -> Any, ?options:haxe.extern.EitherType<Bool, EventListenerOptions>):Void;
}