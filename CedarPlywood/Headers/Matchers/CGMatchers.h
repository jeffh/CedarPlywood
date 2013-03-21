#import <CoreGraphics/CoreGraphics.h>


namespace Cedar { namespace Matchers { namespace Comparators {
    template<typename U>
    bool compare_equal(const CGRect & actualValue, const U & expectedValue) {
        return CGRectEqualToRect(actualValue, expectedValue);
    }

    template<typename U>
    bool compare_equal(const CGPoint & actualValue, const U & expectedValue) {
        return CGPointEqualToPoint(actualValue, expectedValue);
    }

    template<typename U>
    bool compare_equal(const CGSize & actualValue, const U & expectedValue) {
        return CGSizeEqualToSize(actualValue, expectedValue);
    }

    template<typename U>
    bool compare_equal(const CGAffineTransform & actualValue, const U & expectedValue) {
        return CGAffineTransformEqualToTransform(actualValue, expectedValue);
    }
}}}

namespace Cedar { namespace Matchers { namespace Stringifiers {
    inline NSString * string_for(const CGRect & value) {
        return NSStringFromCGRect(value);
    }

    inline NSString * string_for(const CGPoint & value) {
        return NSStringFromCGPoint(value);
    }

    inline NSString * string_for(const CGSize & value) {
        return NSStringFromCGSize(value);
    }

    inline NSString * string_for(const CGAffineTransform & value) {
        return NSStringFromCGAffineTransform(value);
    }
}}}