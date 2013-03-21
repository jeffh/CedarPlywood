using namespace Cedar::Matchers;
using namespace Cedar::Doubles;

SPEC_BEGIN(CGMatchersSpec)

describe(@"CoreGraphics Matchers", ^{

    describe(@"CGRect", ^{
        CGRect rect = CGRectMake(0, 0, 10, 10);
        CGRect otherRect = CGRectMake(0, 0, 20, 20);
        CGRect equivalentRect = CGRectMake(0, 0, 10, 10);

        it(@"should be equal for equivalent rects", ^{
            rect should equal(equivalentRect);
        });

        it(@"should not be equal for other rects", ^{
            rect should_not equal(otherRect);
        });
    });

    describe(@"CGPoint", ^{
        CGPoint point = CGPointMake(1, 2);
        CGPoint otherPoint = CGPointMake(2, 2);
        CGPoint equivalentPoint = CGPointMake(1, 2);

        it(@"should be equal for equivalent points", ^{
            point should equal(equivalentPoint);
        });

        it(@"should not be equal for other points", ^{
            point should_not equal(otherPoint);
        });
    });

    describe(@"CGSize", ^{
        CGSize size = CGSizeMake(10, 10);
        CGSize otherSize = CGSizeMake(11, 10);
        CGSize equivalentSize = CGSizeMake(10, 10);

        it(@"should be equal for equivalent sizes", ^{
            size should equal(equivalentSize);
        });

        it(@"should not be equal for other sizes", ^{
            size should_not equal(otherSize);
        });
    });

    describe(@"CGAffineTransform", ^{
        CGAffineTransform transform = CGAffineTransformMake(0, 1, 2, 3, 4, 5);
        CGAffineTransform otherTransform = CGAffineTransformMake(1, 1, 2, 3, 4, 5);
        CGAffineTransform equivalentTransform = CGAffineTransformMake(0, 1, 2, 3, 4, 5);

        it(@"should be equal for equivalent insets", ^{
            NSLog(@"%@", NSStringFromCGAffineTransform(transform));
            transform should equal(equivalentTransform);
        });

        it(@"should not be equal for other insets", ^{
            transform should_not equal(otherTransform);
        });
    });
});

SPEC_END
