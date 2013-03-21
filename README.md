CedarPlywood
=============

Extra Matchers for [Cedar][]. Why not in Cedar itself? [Cedar][] requires that only Foundation is a requirement.

To use, copy all the Headers to your own project. And add the following to your prefix.pch (or before whenever you include Cedar):

     #define CEDAR_CUSTOM_COMPARATORS "CedarPlywood.h"

Which will include all the custom matchers that Plywood provides.

Next, you'll have to add the following frameworks to Specs (if they're not already there):

* UIKit
* CoreGraphics

These are separated into specific headers if you wish to not include matchers from a particular framework.

[Cedar]: https://github.com/pivotal/cedar
