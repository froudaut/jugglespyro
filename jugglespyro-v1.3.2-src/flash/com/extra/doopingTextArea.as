/**
 * @makes it possible to do textArea.textField.styleSheet
 * @author Tim de Jong - Dooping VOF 2008 - tim -AT- dooping.nl
 * @version 001
 */

package com.extra
{
    import fl.controls.TextArea;

    public class doopingTextArea extends TextArea
    {
	public function doopingTextArea()
	{
	    super();
	}
     
	override protected function drawTextFormat():void {
	    if(!this.textField.styleSheet) super.drawTextFormat();
	    else {
		setEmbedFont();
		if(_html) textField.htmlText = _savedHTML;
	    }
	}
     
    }
}
