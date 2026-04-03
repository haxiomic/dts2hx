package js.html;

/**
	The **`GamepadHapticActuator`** interface of the Gamepad API represents hardware in the controller designed to provide haptic feedback to the user (if available), most commonly vibration hardware.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/GamepadHapticActuator)
**/
typedef IGamepadHapticActuator = {
	/**
		The **`playEffect()`** method of the GamepadHapticActuator interface causes the hardware to play a specific vibration effect.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/GamepadHapticActuator/playEffect)
	**/
	function playEffect(type:GamepadHapticEffectType, ?params:GamepadEffectParameters):js.lib.Promise<GamepadHapticsResult>;
	/**
		The **`reset()`** method of the GamepadHapticActuator interface stops the hardware from playing an active vibration effect.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/GamepadHapticActuator/reset)
	**/
	function reset():js.lib.Promise<GamepadHapticsResult>;
};