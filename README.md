# HeightExpandingNSTextViewforSwiftUI
A vertically-expanding, rich-text NSTextField for Swift that isn't ugly.

Here's a demo to boost your typing ego:

![Demo](https://github.com/wingovers/HeightExpandingNSTextViewforSwiftUI/blob/master/typodemo.mov "Demo Video")

* You can use the Binding extension to save data upon editing end to your persistent store.
* You can set the font, as can users by right clicking.

In the Coordinator class, you can 
* add an option to textView that allows importing images or adds a text editing toolbar. 
* take away spell checking and autocomplete, among other things

Bugs:
At the moment it has a slight shudder on load because I don't have the right magic CGFloat as the dynamicHeight default value for that font. I'm trying to figure out how to set that programmatically.
