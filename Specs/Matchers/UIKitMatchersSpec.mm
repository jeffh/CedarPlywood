#include "CedarPlywood.h"

using namespace Cedar::Matchers;
using namespace Cedar::Doubles;

SPEC_BEGIN(UIKitMatchersSpec)

describe(@"UIKit Matchers", ^{
    describe(@"UIImage", ^{
        it(@"should compare UIImage", ^{
            UIImage *image = [UIImage imageNamed:@"Default-568h@2x"];
            UIImage *otherImage = [[UIImage alloc] initWithData:UIImagePNGRepresentation(image)];
            image should equal(otherImage);
        });
    });

    describe(@"UIOffsets", ^{
        UIOffset offset = UIOffsetMake(1, 2);
        UIOffset otherOffset = UIOffsetMake(2, 2);
        UIOffset equivalentOffset = UIOffsetMake(1, 2);

        it(@"should be equal for equivalent offsets", ^{
            offset should equal(equivalentOffset);
        });

        it(@"should not be equal for other offsets", ^{
            offset should_not equal(otherOffset);
        });
    });

    describe(@"UIEdgeInsets", ^{
        UIEdgeInsets inset = UIEdgeInsetsMake(1, 1, 1, 1);
        UIEdgeInsets otherInset = UIEdgeInsetsMake(2, 1, 1, 1);
        UIEdgeInsets equivalentInset = UIEdgeInsetsMake(1, 1, 1, 1);

        it(@"should be equal for equivalent insets", ^{
            inset should equal(equivalentInset);
        });

        it(@"should not be equal for other insets", ^{
            inset should_not equal(otherInset);
        });
    });
});

SPEC_END

