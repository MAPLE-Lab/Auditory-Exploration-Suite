(
~inspectorWindow = Window.new(
	"Inspector",
	Rect(
		/*Window.screenBounds.width/2-150*/0,
		Window.screenBounds.height/2-150+0,
		300,
		200)).front;

~internalText = StaticText(~inspectorWindow,Rect(10,15,280,280))
	.string_("
WIP Version 2017-05-30-1400
Towards: Pre-release v0.1.3-beta
")
.font_(Font("Helvetica", 12, false, true))
.align_(\topLeft)
.background_(Color(1,1,1,0))
.stringColor_(Color(0.2510,0.2510,0.2510,1));

~internalText = StaticText(~inspectorWindow,Rect(10,10,280,280))
.string_("Inspector")
.font_(Font("Helvetica", 14, true))
.align_(\topLeft)
.background_(Color(1,1,1,0))
.stringColor_(Color(0.2510,0.2510,0.2510,1));

~inspectorText = StaticText(~inspectorWindow,Rect(10,70,280,210))
.string_("Hover over an object to get information.")
.font_(Font("Helvetica", 12, false))
.align_(\topLeft)
.background_(Color(1,1,1,0))
.stringColor_(Color(0.2510,0.2510,0.2510,1));

~inspectorError = StaticText(~inspectorWindow,Rect(10,140,280,210))
.string_("Errors posted here.")
.font_(Font("Helvetica", 12, false, true))
.align_(\topLeft)
.background_(Color(1,1,1,0))
.stringColor_(Color(0.8,0,0,1));

~inspectorExists = 1;
);


//Add the following code after the variable name of any object, but edit the section worded TEXTHERE:
/*
.mouseOverAction_({
	if(~inspectorExists == 1, {
		~inspectorText.string_("TEXTHERE")
});})
.mouseLeaveAction_({
	if(~inspectorExists == 1, {
		~inspectorText.string_(" ")
});});
*/

//For error messages, replace ERRORHERE:
/*
if(~inspectorExists == 1, {
								~inspectorError.string_("ERRORHERE");
							});
*/