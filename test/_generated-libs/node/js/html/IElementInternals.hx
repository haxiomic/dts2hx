package js.html;

/**
	The **`ElementInternals`** interface of the Document Object Model gives web developers a way to allow custom elements to fully participate in HTML forms.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/ElementInternals)
**/
typedef IElementInternals = {
	/**
		The **`form`** read-only property of the ElementInternals interface returns the HTMLFormElement associated with this element.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ElementInternals/form)
	**/
	final form : Null<js.html.FormElement>;
	/**
		The **`labels`** read-only property of the ElementInternals interface returns the labels associated with the element.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ElementInternals/labels)
	**/
	final labels : js.html.NodeList;
	/**
		The **`shadowRoot`** read-only property of the ElementInternals interface returns the ShadowRoot for this element.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ElementInternals/shadowRoot)
	**/
	final shadowRoot : Null<js.html.ShadowRoot>;
	/**
		The **`states`** read-only property of the ElementInternals interface returns a CustomStateSet representing the possible states of the custom element.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ElementInternals/states)
	**/
	final states : CustomStateSet;
	/**
		The **`validationMessage`** read-only property of the ElementInternals interface returns the validation message for the element.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ElementInternals/validationMessage)
	**/
	final validationMessage : String;
	/**
		The **`validity`** read-only property of the ElementInternals interface returns a ValidityState object which represents the different validity states the element can be in, with respect to constraint validation.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ElementInternals/validity)
	**/
	final validity : js.html.ValidityState;
	/**
		The **`willValidate`** read-only property of the ElementInternals interface returns `true` if the element is a submittable element that is a candidate for constraint validation.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ElementInternals/willValidate)
	**/
	final willValidate : Bool;
	/**
		The **`checkValidity()`** method of the ElementInternals interface checks if the element meets any constraint validation rules applied to it.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ElementInternals/checkValidity)
	**/
	function checkValidity():Bool;
	/**
		The **`reportValidity()`** method of the ElementInternals interface checks if the element meets any constraint validation rules applied to it.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ElementInternals/reportValidity)
	**/
	function reportValidity():Bool;
	/**
		The **`setFormValue()`** method of the ElementInternals interface sets the element's submission value and state, communicating these to the user agent.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ElementInternals/setFormValue)
	**/
	function setFormValue(value:Null<ts.AnyOf3<String, js.html.FormData, js.html.File>>, ?state:ts.AnyOf3<String, js.html.FormData, js.html.File>):Void;
	/**
		The **`setValidity()`** method of the ElementInternals interface sets the validity of the element.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ElementInternals/setValidity)
	**/
	function setValidity(?flags:ValidityStateFlags, ?message:String, ?anchor:js.html.Element):Void;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaActiveDescendantElement)
	**/
	var ariaActiveDescendantElement : Null<js.html.DOMElement>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaAtomic)
	**/
	var ariaAtomic : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaAutoComplete)
	**/
	var ariaAutoComplete : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaBrailleLabel)
	**/
	var ariaBrailleLabel : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaBrailleRoleDescription)
	**/
	var ariaBrailleRoleDescription : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaBusy)
	**/
	var ariaBusy : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaChecked)
	**/
	var ariaChecked : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaColCount)
	**/
	var ariaColCount : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaColIndex)
	**/
	var ariaColIndex : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaColIndexText)
	**/
	var ariaColIndexText : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaColSpan)
	**/
	var ariaColSpan : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaControlsElements)
	**/
	var ariaControlsElements : Null<haxe.ds.ReadOnlyArray<js.html.DOMElement>>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaCurrent)
	**/
	var ariaCurrent : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaDescribedByElements)
	**/
	var ariaDescribedByElements : Null<haxe.ds.ReadOnlyArray<js.html.DOMElement>>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaDescription)
	**/
	var ariaDescription : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaDetailsElements)
	**/
	var ariaDetailsElements : Null<haxe.ds.ReadOnlyArray<js.html.DOMElement>>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaDisabled)
	**/
	var ariaDisabled : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaErrorMessageElements)
	**/
	var ariaErrorMessageElements : Null<haxe.ds.ReadOnlyArray<js.html.DOMElement>>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaExpanded)
	**/
	var ariaExpanded : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaFlowToElements)
	**/
	var ariaFlowToElements : Null<haxe.ds.ReadOnlyArray<js.html.DOMElement>>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaHasPopup)
	**/
	var ariaHasPopup : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaHidden)
	**/
	var ariaHidden : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaInvalid)
	**/
	var ariaInvalid : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaKeyShortcuts)
	**/
	var ariaKeyShortcuts : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaLabel)
	**/
	var ariaLabel : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaLabelledByElements)
	**/
	var ariaLabelledByElements : Null<haxe.ds.ReadOnlyArray<js.html.DOMElement>>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaLevel)
	**/
	var ariaLevel : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaLive)
	**/
	var ariaLive : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaModal)
	**/
	var ariaModal : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaMultiLine)
	**/
	var ariaMultiLine : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaMultiSelectable)
	**/
	var ariaMultiSelectable : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaOrientation)
	**/
	var ariaOrientation : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaOwnsElements)
	**/
	var ariaOwnsElements : Null<haxe.ds.ReadOnlyArray<js.html.DOMElement>>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaPlaceholder)
	**/
	var ariaPlaceholder : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaPosInSet)
	**/
	var ariaPosInSet : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaPressed)
	**/
	var ariaPressed : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaReadOnly)
	**/
	var ariaReadOnly : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaRelevant)
	**/
	var ariaRelevant : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaRequired)
	**/
	var ariaRequired : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaRoleDescription)
	**/
	var ariaRoleDescription : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaRowCount)
	**/
	var ariaRowCount : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaRowIndex)
	**/
	var ariaRowIndex : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaRowIndexText)
	**/
	var ariaRowIndexText : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaRowSpan)
	**/
	var ariaRowSpan : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaSelected)
	**/
	var ariaSelected : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaSetSize)
	**/
	var ariaSetSize : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaSort)
	**/
	var ariaSort : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaValueMax)
	**/
	var ariaValueMax : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaValueMin)
	**/
	var ariaValueMin : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaValueNow)
	**/
	var ariaValueNow : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/ariaValueText)
	**/
	var ariaValueText : Null<String>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/role)
	**/
	var role : Null<String>;
};