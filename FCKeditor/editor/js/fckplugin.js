// Register the related command.

var DNA_LayoutFlow = function(name) 
{ 
	this.Name = name; 
	this.state = FCK_TRISTATE_OFF;
}

DNA_LayoutFlow.prototype.GetStyle = function (oElm, strCssRule){
    var strValue = "";
    if (oElm!=null || typeof(oElm)!="undefined")
    {
		if(document.defaultView && document.defaultView.getComputedStyle){
			strValue = document.defaultView.getComputedStyle(oElm, "").getPropertyValue(strCssRule);
		}
		else if(oElm.currentStyle){
			strCssRule = strCssRule.replace(/\-(\w)/g, function (strMatch, p1){
				return p1.toUpperCase();
			});
			strValue = oElm.currentStyle[strCssRule];
		}
    }
    return strValue;
}


DNA_LayoutFlow.prototype.GetBaseBlockElement = function(elm)
{
	if (this.GetStyle(elm,"display")=="block")
	{
		return elm;
	}
	else if (elm.parentElement)
	{
		return this.GetBaseBlockElement(elm.parentElement);
	}
	else
	{
		return this.GetBaseBlockElement(elm.parentNode);
	}
}

DNA_LayoutFlow.prototype.GetChildBlockElements = function(elm,elmArr)
{
	
	if (this.GetStyle(elm,"display")=="block")
	{
		elmArr.push(elm);
	}
//	if (elm)
//	{
//		
//		if (elm.parentElement)
//		{
//			
//			for (var i=0;i<elm.childElements.length;i++)
//			{
//				this.GetChildBlockElements(elm.childElements[i],elmArr);
//			}
//		}
//		else
//		{
//			
//			for (var i=0;i<elm.childNodes.length;i++)
//			{
//				alert(elm.childNodes[i]);
//				this.GetChildBlockElements(elm.childNodes[i],elmArr);
//			}
//		}
//	}
}



DNA_LayoutFlow.prototype.Execute = function() 
{
	if (FCKSelection.GetType().toLowerCase()!="none")
	{
		var elm  = FCKSelection.GetParentElement();
		elm = this.GetBaseBlockElement(elm);
		var elmBlockSiblings  = new Array()
		this.GetChildBlockElements(elm,elmBlockSiblings);
		if (this.Name=="LayoutFlowRTL")
		{
			for (var i=0;i<elmBlockSiblings.length;i++)
			{
				elmBlockSiblings[i].style.direction="rtl";
				elmBlockSiblings[i].align="right";
			}
		}
		else
		{
			for (var i=0;i<elmBlockSiblings.length;i++)
			{
				elmBlockSiblings[i].style.direction="ltr";
				elmBlockSiblings[i].align="left";
			}
		
		}
		FCK.ToolbarSet.RefreshItemsState();
	}
} 
 

DNA_LayoutFlow.prototype.GetState = function() 
{ 
  if (FCKSelection.GetType().toLowerCase()!="none")
	{
		
		var elm  = FCKSelection.GetParentElement();
		elm = this.GetBaseBlockElement(elm);
		var result = this.GetStyle(elm,"direction");
		result = result.toLowerCase();
		if (this.Name=="LayoutFlowRTL")
		{
			if (result=="rtl")
				return FCK_TRISTATE_ON;
			else
				return FCK_TRISTATE_OFF;
		}
		else
		{
			if (result=="ltr")
				return FCK_TRISTATE_ON;
			else
				return FCK_TRISTATE_OFF;
		}
	}
}


FCKCommands.RegisterCommand( 'LayoutFlowRTL', new DNA_LayoutFlow('LayoutFlowRTL'));
FCKCommands.RegisterCommand( 'LayoutFlowLTR', new DNA_LayoutFlow('LayoutFlowLTR'));


var FlowRTLToolbarItem = new FCKToolbarButton( 'LayoutFlowRTL', FCKLang.TextFlowRTL ,null, null, false, true) ;
FlowRTLToolbarItem.IconPath = FCKConfig.PluginsPath + 'TextFlow/right_to_left.gif' ;
FCKToolbarItems.RegisterItem( 'LayoutFlowRTL', FlowRTLToolbarItem ) ;
var FlowToolbarItem = new FCKToolbarButton( 'LayoutFlowLTR', FCKLang.TextFlowLTR ,null, null, false, true) ;
FlowToolbarItem.IconPath = FCKConfig.PluginsPath + 'TextFlow/left_to_right.gif' ;
FCKToolbarItems.RegisterItem( 'LayoutFlowLTR', FlowToolbarItem ) ;

