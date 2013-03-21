CedarPlywood
=============

Custom Comparators for [Cedar][]. Why not in Cedar itself? [Cedar][] requires that only Foundation is a requirement.

To use, copy all the files from CedarPlywood/Headers/ to your own project. And add the following to your prefix.pch (or before whenever you include Cedar):

     #define CEDAR_CUSTOM_COMPARATORS "CedarPlywood.h"

Which will include all the custom matchers that Plywood provides.

Next, you'll have to add the following frameworks to Specs (if they're not already there):

* UIKit
* CoreGraphics

These are separated into specific headers if you wish to not include matchers from a particular framework.

[Cedar]: https://github.com/pivotal/cedar

Features
=========

CoreGraphics
------------

Common CoreGraphics structs can be compared using normal matchers:

* CGRect
* CGPoint
* CGSize
* CGAffineTransform

So something like this would work:

    CGRectMake(0, 0, 10, 10) should equal(CGRectMake(0, 0, 10, 10)); // => true

UIKit
-----

UIImage gains the ability to compare instances that are not the same by converting to NSData:

    UIImage *img = [UIImage imageNamed:@"foo"];
    UIImage *eqImg = [[UIImage alloc] initWithData:UIImagePNGRepresentation(img)];
    img should equal(eqImg); // => now true

This can be useful for when images are downloaded or created without using +imageNamed:

Like CoreGraphics, the following C-structs are supported:

* UIEdgeInsets
* UIOffsets
