# HeightExpandingNSTextViewforSwiftUI
A vertically-expanding, rich-text NSTextField for Swift that isn't ugly.

Here's a demo to boost your typing ego:

https://imgur.com/a/zDvHvEs

* You can use the Binding extension to save data upon editing end to your persistent store.
* You can set the font, as can users by right clicking.

In the Coordinator class, you can 
* add an option to textView that allows importing images or adds a text editing toolbar. 
* take away spell checking and autocomplete, among other things

Bugs:
* Incompatible with NavigationView embedding or .layoutPriority being set on any parent/aunt/uncle views, even if the priority for this view is higher by a million points. Ugh. Radar filed.
* There can be a slight shudder in the render on load due to the initial value for dynamicHeight being set without perfect accuracy. Right now I'm setting it with a magic multiplier against the font size, but there's probably a better way to piece together all the padding and height dimensions. This was also an issue in Asperi's UIKit version.
