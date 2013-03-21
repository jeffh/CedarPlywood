#import <UIKit/UIKit.h>

namespace Cedar { namespace Matchers { namespace Comparators {
    bool compare_equal(UIImage *actualValue, UIImage *expectedValue) {
        return [actualValue isEqual:expectedValue] || [UIImagePNGRepresentation(actualValue) isEqual:UIImagePNGRepresentation(expectedValue)];
    }

    template<typename U>
    bool compare_equal(const UIEdgeInsets & actualValue, const U & expectedValue) {
        return UIEdgeInsetsEqualToEdgeInsets(actualValue, expectedValue);
    }

    template<typename U>
    bool compare_equal(const UIOffset & actualValue, const U & expectedValue) {
        return UIOffsetEqualToOffset(actualValue, expectedValue);
    }
}}}

namespace Cedar { namespace Matchers { namespace Stringifiers {
    inline NSString * string_for(const UIEdgeInsets & value) {
        return NSStringFromUIEdgeInsets(value);
    }

    inline NSString * string_for(const UIOffset & value) {
        return NSStringFromUIOffset(value);
    }
}}}