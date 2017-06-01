//
//  LoveView.m
//  Exported from Kite Compositor for Mac 1.4
//
//  Created on 5/30/17, 6:21 PM.
//


#import "LoveView.h"

@interface LoveView ()

@property (nonatomic) CALayer *faceLayer;
@property (nonatomic) CAShapeLayer *leftHeartLayer;
@property (nonatomic) CAShapeLayer *rightHeartLayer;
@property (nonatomic) CAShapeLayer *leftEyebrowLayer;
@property (nonatomic) CAShapeLayer *rightEyebrowLayer;
@property (nonatomic) CAShapeLayer *leftEyeLayer;
@property (nonatomic) CAShapeLayer *rightEyeLayer;
@property (nonatomic) CAShapeLayer *mouthLayer;
@property (nonatomic) CAKeyframeAnimation *sublayertransformAnimation;
@property (nonatomic) CAKeyframeAnimation *pathAnimation;
@property (nonatomic) CAKeyframeAnimation *transformAnimation;
@property (nonatomic) CABasicAnimation *blinkTransformScaleYAnimation;
@property (nonatomic) CABasicAnimation *blinkTransformScaleYAnimation1;
@property (nonatomic) CAKeyframeAnimation *opacityAnimation;
@property (nonatomic) CASpringAnimation *transformTranslationYAnimation;
@property (nonatomic) CABasicAnimation *transformTranslationYAnimation1;
@property (nonatomic) CAKeyframeAnimation *opacityAnimation1;
@property (nonatomic) CASpringAnimation *transformTranslationYAnimation2;
@property (nonatomic) CABasicAnimation *transformTranslationYAnimation3;
@property (nonatomic) CAKeyframeAnimation *opacityAnimation2;
@property (nonatomic) CAKeyframeAnimation *transformRotationZAnimation;
@property (nonatomic) CASpringAnimation *transformScaleAnimation;
@property (nonatomic) CABasicAnimation *transformScaleAnimation1;
@property (nonatomic) CAKeyframeAnimation *opacityAnimation3;
@property (nonatomic) CAKeyframeAnimation *transformRotationZAnimation1;
@property (nonatomic) CASpringAnimation *transformScaleAnimation2;
@property (nonatomic) CABasicAnimation *transformScaleAnimation3;

@end

@implementation LoveView

#pragma mark - Initialization

- (instancetype)init
{
    self = [super initWithFrame:CGRectMake(0, 0, 112.0, 112.0)];

    if (self)
    {
        [self setupLayers];
    }

    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];

    if (self)
    {
        [self setupLayers];
    }

    return self;
}

#pragma mark - Setup Layers

- (void)setupLayers
{
    // Colors
    //
    UIColor *backgroundcolor = [UIColor colorWithRed:0.978350903614458 green:0.845155073486897 blue:0.373646888348936 alpha:1.0];
    UIColor *backgroundcolor1 = [UIColor colorWithRed:1.0 green:0.863856792449951 blue:0.381915003061295 alpha:1.0];
    UIColor *bordercolor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
    UIColor *bordercolor1 = [UIColor colorWithRed:0.79525351524353 green:0.79525351524353 blue:0.79525351524353 alpha:1.0];
    UIColor *fillcolor = [UIColor colorWithRed:0.15319812297821 green:0.131801009178162 blue:0.198020696640015 alpha:1.0];
    UIColor *strokecolor = [UIColor colorWithRed:0.572306752204895 green:0.572306752204895 blue:0.572306752204895 alpha:1.0];
    UIColor *fillcolor1 = [UIColor colorWithRed:0.152941176470588 green:0.133333333333333 blue:0.196078431372549 alpha:1.0];
    UIColor *strokecolor1 = [UIColor colorWithRed:0.125490196078431 green:0.0352941176470588 blue:0.0 alpha:1.0];
    UIColor *fillcolor2 = [UIColor colorWithRed:0.917507827281952 green:0.561482727527618 blue:0.562848150730133 alpha:1.0];
    UIColor *fillcolor3 = [UIColor colorWithRed:0.890196078431372 green:0.282352941176471 blue:0.270588235294118 alpha:1.0];

    // Paths
    //
    CGMutablePathRef pathPath = CGPathCreateMutable();
    CGPathMoveToPoint(pathPath, NULL, 0.0, 0.0);
    CGPathAddCurveToPoint(pathPath, NULL, -1.0, 1.0, 8.7819995880127, 15.4659996032715, 24.8419990539551, 15.4659996032715);
    CGPathAddCurveToPoint(pathPath, NULL, 40.9020004272461, 15.4659996032715, 49.2779998779297, 2.0, 49.2779998779297, 0.0);
    CGPathAddCurveToPoint(pathPath, NULL, 49.2779998779297, -2.0, 42.8419990539551, 5.37599992752075, 24.8419990539551, 5.37599992752075);
    CGPathAddCurveToPoint(pathPath, NULL, 6.84200000762939, 5.37599992752075, 0.593999981880188, -1.18799996376038, 0.0, 0.0);
    CGPathCloseSubpath(pathPath);
    CGPathMoveToPoint(pathPath, NULL, 0.0, 0.0);
    CFAutorelease(pathPath);

    CGMutablePathRef pathPath1 = CGPathCreateMutable();
    CGPathMoveToPoint(pathPath1, NULL, 0.0, 0.0);
    CGPathAddCurveToPoint(pathPath1, NULL, -1.0, 1.0, 7.0, 22.0, 29.0, 22.0);
    CGPathAddCurveToPoint(pathPath1, NULL, 51.0, 22.0, 57.0, 2.0, 57.0, 0.0);
    CGPathAddCurveToPoint(pathPath1, NULL, 57.0, -2.0, 47.0, 3.0, 29.0, 3.0);
    CGPathAddCurveToPoint(pathPath1, NULL, 11.0, 3.0, 0.0, 0.0, 0.0, 0.0);
    CGPathCloseSubpath(pathPath1);
    CGPathMoveToPoint(pathPath1, NULL, 0.0, 0.0);
    CFAutorelease(pathPath1);

    CGMutablePathRef pathPath2 = CGPathCreateMutable();
    CGPathMoveToPoint(pathPath2, NULL, 0.0, 0.0);
    CGPathAddCurveToPoint(pathPath2, NULL, -1.0, 1.0, 7.0, 22.0, 29.0, 22.0);
    CGPathAddCurveToPoint(pathPath2, NULL, 51.0, 22.0, 57.0, 2.0, 57.0, 0.0);
    CGPathAddCurveToPoint(pathPath2, NULL, 57.0, -2.0, 47.0, 3.0, 29.0, 3.0);
    CGPathAddCurveToPoint(pathPath2, NULL, 11.0, 3.0, 0.0, 0.0, 0.0, 0.0);
    CGPathCloseSubpath(pathPath2);
    CGPathMoveToPoint(pathPath2, NULL, 0.0, 0.0);
    CFAutorelease(pathPath2);

    CGMutablePathRef pathPath3 = CGPathCreateMutable();
    CGPathMoveToPoint(pathPath3, NULL, 0.0, 0.0);
    CGPathAddCurveToPoint(pathPath3, NULL, -1.0, 1.0, 8.7819995880127, 15.4659996032715, 24.8419990539551, 15.4659996032715);
    CGPathAddCurveToPoint(pathPath3, NULL, 40.9020004272461, 15.4659996032715, 49.2779998779297, 2.0, 49.2779998779297, 0.0);
    CGPathAddCurveToPoint(pathPath3, NULL, 49.2779998779297, -2.0, 42.8419990539551, 5.37599992752075, 24.8419990539551, 5.37599992752075);
    CGPathAddCurveToPoint(pathPath3, NULL, 6.84200000762939, 5.37599992752075, 0.593999981880188, -1.18799996376038, 0.0, 0.0);
    CGPathCloseSubpath(pathPath3);
    CGPathMoveToPoint(pathPath3, NULL, 0.0, 0.0);
    CFAutorelease(pathPath3);

    CGMutablePathRef mouthPath = CGPathCreateMutable();
    CGPathMoveToPoint(mouthPath, NULL, 0.0, 0.0);
    CGPathAddCurveToPoint(mouthPath, NULL, -1.0, 1.0, 8.7819995880127, 15.4659996032715, 24.8419990539551, 15.4659996032715);
    CGPathAddCurveToPoint(mouthPath, NULL, 40.9020004272461, 15.4659996032715, 49.2779998779297, 2.0, 49.2779998779297, 0.0);
    CGPathAddCurveToPoint(mouthPath, NULL, 49.2779998779297, -2.0, 42.8419990539551, 5.37599992752075, 24.8419990539551, 5.37599992752075);
    CGPathAddCurveToPoint(mouthPath, NULL, 6.84200000762939, 5.37599992752075, 0.593999981880188, -1.18799996376038, 0.0, 0.0);
    CGPathCloseSubpath(mouthPath);
    CGPathMoveToPoint(mouthPath, NULL, 0.0, 0.0);
    CFAutorelease(mouthPath);

    CGMutablePathRef rightEyePath = CGPathCreateMutable();
    CGPathMoveToPoint(rightEyePath, NULL, 8.0, 24.0);
    CGPathAddCurveToPoint(rightEyePath, NULL, 12.4180002212524, 24.0, 16.0, 18.6270008087158, 16.0, 12.0);
    CGPathAddCurveToPoint(rightEyePath, NULL, 16.0, 5.3730001449585, 12.4180002212524, 0.0, 8.0, 0.0);
    CGPathAddCurveToPoint(rightEyePath, NULL, 3.58200001716614, 0.0, 0.0, 5.3730001449585, 0.0, 12.0);
    CGPathAddCurveToPoint(rightEyePath, NULL, 0.0, 18.6270008087158, 3.58200001716614, 24.0, 8.0, 24.0);
    CGPathCloseSubpath(rightEyePath);
    CGPathMoveToPoint(rightEyePath, NULL, 8.0, 24.0);
    CFAutorelease(rightEyePath);

    CGMutablePathRef leftEyePath = CGPathCreateMutable();
    CGPathMoveToPoint(leftEyePath, NULL, 8.0, 24.0);
    CGPathAddCurveToPoint(leftEyePath, NULL, 12.4180002212524, 24.0, 16.0, 18.6270008087158, 16.0, 12.0);
    CGPathAddCurveToPoint(leftEyePath, NULL, 16.0, 5.3730001449585, 12.4180002212524, 0.0, 8.0, 0.0);
    CGPathAddCurveToPoint(leftEyePath, NULL, 3.58200001716614, 0.0, 0.0, 5.3730001449585, 0.0, 12.0);
    CGPathAddCurveToPoint(leftEyePath, NULL, 0.0, 18.6270008087158, 3.58200001716614, 24.0, 8.0, 24.0);
    CGPathCloseSubpath(leftEyePath);
    CGPathMoveToPoint(leftEyePath, NULL, 8.0, 24.0);
    CFAutorelease(leftEyePath);

    CGMutablePathRef rightEyebrowPath = CGPathCreateMutable();
    CGPathMoveToPoint(rightEyebrowPath, NULL, 18.5, 4.5);
    CGPathAddCurveToPoint(rightEyebrowPath, NULL, 16.5170001983643, 3.35700011253357, 14.7550001144409, 2.5, 12.5, 2.5);
    CGPathAddCurveToPoint(rightEyebrowPath, NULL, 8.30000019073486, 2.5, 4.80999994277954, 4.05700016021729, 2.5, 6.5);
    CFAutorelease(rightEyebrowPath);

    CGMutablePathRef leftEyebrowPath = CGPathCreateMutable();
    CGPathMoveToPoint(leftEyebrowPath, NULL, 18.5, 4.5);
    CGPathAddCurveToPoint(leftEyebrowPath, NULL, 16.5160007476807, 3.35700011253357, 14.7550001144409, 2.5, 12.5, 2.5);
    CGPathAddCurveToPoint(leftEyebrowPath, NULL, 8.29899978637695, 2.5, 4.80999994277954, 4.05700016021729, 2.5, 6.5);
    CFAutorelease(leftEyebrowPath);

    CGMutablePathRef fillPath = CGPathCreateMutable();
    CGPathMoveToPoint(fillPath, NULL, 7.0479998588562, 1.14900004863739);
    CGPathAddCurveToPoint(fillPath, NULL, 8.12100028991699, 2.59400010108948, 7.53299999237061, 4.84499979019165, 5.7350001335144, 6.17399978637695);
    CGPathAddCurveToPoint(fillPath, NULL, 3.93700003623962, 7.50600004196167, 1.61000001430511, 7.41099977493286, 0.537999987602234, 5.96400022506714);
    CGPathAddCurveToPoint(fillPath, NULL, -0.537000000476837, 4.51700019836426, 0.0489999987185001, 2.26399993896484, 1.84700000286102, 0.939000010490417);
    CGPathAddCurveToPoint(fillPath, NULL, 3.64599990844727, -0.389999985694885, 5.97399997711182, -0.298000007867813, 7.0479998588562, 1.14900004863739);
    CFAutorelease(fillPath);

    CGMutablePathRef leftHeartPath = CGPathCreateMutable();
    CGPathMoveToPoint(leftHeartPath, NULL, 42.0390014648438, 12.6929998397827);
    CGPathAddCurveToPoint(leftHeartPath, NULL, 46.3310012817383, 6.29500007629395, 53.3499984741211, 0.244000002741814, 64.1500015258789, 1.14800000190735);
    CGPathAddCurveToPoint(leftHeartPath, NULL, 76.088996887207, 2.15000009536743, 85.0139999389648, 11.3339996337891, 83.8840026855469, 24.3640003204346);
    CGPathAddCurveToPoint(leftHeartPath, NULL, 82.8030014038086, 36.9780006408691, 74.4700012207031, 45.5400009155273, 66.3899993896484, 52.5929985046387);
    CGPathAddCurveToPoint(leftHeartPath, NULL, 58.023998260498, 59.8790016174316, 49.1959991455078, 65.8349990844727, 40.8950004577637, 72.2389984130859);
    CGPathAddCurveToPoint(leftHeartPath, NULL, 29.2140007019043, 62.1310005187988, 13.2779998779297, 52.140998840332, 4.84800004959106, 37.625);
    CGPathAddCurveToPoint(leftHeartPath, NULL, 2.09200000762939, 32.8699989318848, -0.546000003814697, 26.1900005340576, 0.0979999974370003, 19.2590007781982);
    CGPathAddCurveToPoint(leftHeartPath, NULL, 0.555999994277954, 14.2919998168945, 2.82299995422363, 9.76399993896484, 5.44299983978271, 6.91900014877319);
    CGPathAddCurveToPoint(leftHeartPath, NULL, 8.48600006103516, 3.63599991798401, 13.7360000610352, 0.386000007390976, 20.3549995422363, 0.0399999991059303);
    CGPathAddCurveToPoint(leftHeartPath, NULL, 31.7080001831055, -0.554000020027161, 38.1990013122559, 5.60699987411499, 42.0390014648438, 12.6929998397827);
    CFAutorelease(leftHeartPath);

    CGMutablePathRef fillPath1 = CGPathCreateMutable();
    CGPathMoveToPoint(fillPath1, NULL, 7.0479998588562, 1.14900004863739);
    CGPathAddCurveToPoint(fillPath1, NULL, 8.12100028991699, 2.59400010108948, 7.53299999237061, 4.84499979019165, 5.7350001335144, 6.17399978637695);
    CGPathAddCurveToPoint(fillPath1, NULL, 3.93700003623962, 7.50600004196167, 1.61000001430511, 7.41099977493286, 0.537999987602234, 5.96400022506714);
    CGPathAddCurveToPoint(fillPath1, NULL, -0.537000000476837, 4.51700019836426, 0.0489999987185001, 2.26399993896484, 1.84700000286102, 0.939000010490417);
    CGPathAddCurveToPoint(fillPath1, NULL, 3.64599990844727, -0.389999985694885, 5.97399997711182, -0.298000007867813, 7.0479998588562, 1.14900004863739);
    CFAutorelease(fillPath1);

    CGMutablePathRef rightHeartPath = CGPathCreateMutable();
    CGPathMoveToPoint(rightHeartPath, NULL, 42.0390014648438, 12.6929998397827);
    CGPathAddCurveToPoint(rightHeartPath, NULL, 46.3310012817383, 6.29500007629395, 53.3499984741211, 0.244000002741814, 64.1500015258789, 1.14800000190735);
    CGPathAddCurveToPoint(rightHeartPath, NULL, 76.088996887207, 2.15000009536743, 85.0139999389648, 11.3339996337891, 83.8840026855469, 24.3640003204346);
    CGPathAddCurveToPoint(rightHeartPath, NULL, 82.8030014038086, 36.9780006408691, 74.4700012207031, 45.5400009155273, 66.3899993896484, 52.5929985046387);
    CGPathAddCurveToPoint(rightHeartPath, NULL, 58.023998260498, 59.8790016174316, 49.1959991455078, 65.8349990844727, 40.8950004577637, 72.2389984130859);
    CGPathAddCurveToPoint(rightHeartPath, NULL, 29.2140007019043, 62.1310005187988, 13.2779998779297, 52.140998840332, 4.84800004959106, 37.625);
    CGPathAddCurveToPoint(rightHeartPath, NULL, 2.09200000762939, 32.8699989318848, -0.546000003814697, 26.1900005340576, 0.0979999974370003, 19.2590007781982);
    CGPathAddCurveToPoint(rightHeartPath, NULL, 0.555999994277954, 14.2919998168945, 2.82299995422363, 9.76399993896484, 5.44299983978271, 6.91900014877319);
    CGPathAddCurveToPoint(rightHeartPath, NULL, 8.48600006103516, 3.63599991798401, 13.7360000610352, 0.386000007390976, 20.3549995422363, 0.0399999991059303);
    CGPathAddCurveToPoint(rightHeartPath, NULL, 31.7080001831055, -0.554000020027161, 38.1990013122559, 5.60699987411499, 42.0390014648438, 12.6929998397827);
    CFAutorelease(rightHeartPath);

    // Love
    //
    CALayer *loveLayer = [CALayer layer];
    loveLayer.name = @"Love";
    loveLayer.bounds = CGRectMake(0.0, 0.0, 112.0, 112.0);
    loveLayer.position = CGPointMake(0.0, 0.0);
    loveLayer.anchorPoint = CGPointMake(0.0, 0.0);
    loveLayer.contentsGravity = kCAGravityCenter;
    loveLayer.backgroundColor = backgroundcolor.CGColor;
    loveLayer.cornerRadius = 56.0;

        // Love Sublayers
        //

        // Face
        //
        CALayer *faceLayer = [CALayer layer];
        faceLayer.name = @"Face";
        faceLayer.bounds = CGRectMake(0.0, 0.0, 100.0, 100.0);
        faceLayer.position = CGPointMake(56.0, 56.0);
        faceLayer.contentsGravity = kCAGravityCenter;
        faceLayer.backgroundColor = backgroundcolor1.CGColor;
        faceLayer.cornerRadius = 50.0;
        faceLayer.borderColor = bordercolor.CGColor;
        faceLayer.shadowOffset = CGSizeMake(0.0, 1.0);
        faceLayer.fillMode = kCAFillModeForwards;

            // Face Animations
            //

            // sublayerTransform
            //
            CAKeyframeAnimation *sublayertransformAnimation = [CAKeyframeAnimation animation];
            sublayertransformAnimation.beginTime = 0.75;
            sublayertransformAnimation.duration = 2.25;
            sublayertransformAnimation.fillMode = kCAFillModeForwards;
            sublayertransformAnimation.removedOnCompletion = NO;
            sublayertransformAnimation.keyPath = @"sublayerTransform";
            sublayertransformAnimation.values = @[ [NSValue valueWithCATransform3D:CATransform3DIdentity], [NSValue valueWithCATransform3D:(CATransform3D) { .m11 = 0.996195018291473, .m12 = 0.0871559977531433, .m13 = 0.0, .m14 = 0.0, .m21 = -0.0871559977531433, .m22 = 0.996195018291473, .m23 = 0.0, .m24 = 0.0, .m31 = 0.0, .m32 = 0.0, .m33 = 1.0, .m34 = 0.0, .m41 = 0.0, .m42 = 1.60000002384186, .m43 = 0.0, .m44 = 1.0 }], [NSValue valueWithCATransform3D:(CATransform3D) { .m11 = 0.996195018291473, .m12 = 0.0871559977531433, .m13 = 0.0, .m14 = 0.0, .m21 = -0.0871559977531433, .m22 = 0.996195018291473, .m23 = 0.0, .m24 = 0.0, .m31 = 0.0, .m32 = 0.0, .m33 = 1.0, .m34 = 0.0, .m41 = 0.0, .m42 = 1.60000002384186, .m43 = 0.0, .m44 = 1.0 }], [NSValue valueWithCATransform3D:(CATransform3D) { .m11 = 0.984808027744293, .m12 = -0.173647999763489, .m13 = 0.0, .m14 = 0.0, .m21 = 0.173647999763489, .m22 = 0.984808027744293, .m23 = 0.0, .m24 = 0.0, .m31 = 0.0, .m32 = 0.0, .m33 = 1.0, .m34 = 0.0, .m41 = 0.0, .m42 = 1.60000002384186, .m43 = 0.0, .m44 = 1.0 }], [NSValue valueWithCATransform3D:(CATransform3D) { .m11 = 0.984808027744293, .m12 = -0.173647999763489, .m13 = 0.0, .m14 = 0.0, .m21 = 0.173647999763489, .m22 = 0.984808027744293, .m23 = 0.0, .m24 = 0.0, .m31 = 0.0, .m32 = 0.0, .m33 = 1.0, .m34 = 0.0, .m41 = 0.0, .m42 = 1.60000002384186, .m43 = 0.0, .m44 = 1.0 }], [NSValue valueWithCATransform3D:CATransform3DIdentity] ];
            sublayertransformAnimation.timingFunctions = @[ [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut], [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut], [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut], [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut], [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut] ];
            sublayertransformAnimation.calculationMode = kCAAnimationLinear;


            // Face Sublayers
            //

            // Mouth
            //
            CAShapeLayer *mouthLayer = [CAShapeLayer layer];
            mouthLayer.name = @"Mouth";
            mouthLayer.bounds = CGRectMake(0.0, 0.0, 58.0, 23.0);
            mouthLayer.position = CGPointMake(56.0, 78.5);
            mouthLayer.contentsGravity = kCAGravityCenter;
            mouthLayer.borderColor = bordercolor1.CGColor;
            mouthLayer.shadowOffset = CGSizeMake(0.0, 1.0);
            mouthLayer.fillMode = kCAFillModeForwards;

                // Mouth Animations
                //

                // path
                //
                CAKeyframeAnimation *pathAnimation = [CAKeyframeAnimation animation];
                pathAnimation.beginTime = 0.75;
                pathAnimation.duration = 2.25;
                pathAnimation.fillMode = kCAFillModeForwards;
                pathAnimation.removedOnCompletion = NO;
                pathAnimation.keyPath = @"path";
                pathAnimation.values = @[ (__bridge id) pathPath, (__bridge id) pathPath1, (__bridge id) pathPath2, (__bridge id) pathPath3 ];
                pathAnimation.keyTimes = @[ @(0), @(0.2499998124999531), @(0.93), @(1) ];
                pathAnimation.timingFunctions = @[ [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut], [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut], [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut] ];
                pathAnimation.calculationMode = kCAAnimationLinear;


                // transform
                //
                CAKeyframeAnimation *transformAnimation = [CAKeyframeAnimation animation];
                transformAnimation.beginTime = 0.75;
                transformAnimation.duration = 2.25;
                transformAnimation.fillMode = kCAFillModeForwards;
                transformAnimation.removedOnCompletion = NO;
                transformAnimation.keyPath = @"transform";
                transformAnimation.values = @[ [NSValue valueWithCATransform3D:CATransform3DIdentity], [NSValue valueWithCATransform3D:(CATransform3D) { .m11 = 1.10000002384186, .m12 = 0.0, .m13 = 0.0, .m14 = 0.0, .m21 = 0.0, .m22 = 1.29999995231628, .m23 = 0.0, .m24 = 0.0, .m31 = 0.0, .m32 = 0.0, .m33 = 1.0, .m34 = 0.0, .m41 = -5.0, .m42 = 3.0, .m43 = 0.0, .m44 = 1.0 }], [NSValue valueWithCATransform3D:(CATransform3D) { .m11 = 1.10000002384186, .m12 = 0.0, .m13 = 0.0, .m14 = 0.0, .m21 = 0.0, .m22 = 1.29999995231628, .m23 = 0.0, .m24 = 0.0, .m31 = 0.0, .m32 = 0.0, .m33 = 1.0, .m34 = 0.0, .m41 = -5.0, .m42 = 3.0, .m43 = 0.0, .m44 = 1.0 }], [NSValue valueWithCATransform3D:CATransform3DIdentity] ];
                transformAnimation.keyTimes = @[ @(0), @(0.2499998124999531), @(0.9268616838430805), @(1) ];
                transformAnimation.timingFunctions = @[ [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut], [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut], [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut] ];
                transformAnimation.calculationMode = kCAAnimationLinear;

            mouthLayer.path = mouthPath;
            mouthLayer.fillColor = fillcolor.CGColor;
            mouthLayer.strokeColor = strokecolor.CGColor;
            mouthLayer.lineWidth = 0.0;

            [faceLayer addSublayer:mouthLayer];

            // Right Eye
            //
            CAShapeLayer *rightEyeLayer = [CAShapeLayer layer];
            rightEyeLayer.name = @"Right Eye";
            rightEyeLayer.bounds = CGRectMake(0.0, 0.0, 16.0, 24.0);
            rightEyeLayer.position = CGPointMake(74.0, 38.0);
            rightEyeLayer.contentsGravity = kCAGravityCenter;
            rightEyeLayer.transform = (CATransform3D) { .m11 = 0.699999988079071, .m12 = 0.0, .m13 = 0.0, .m14 = 0.0,
                                                .m21 = 0.0, .m22 = 0.699999988079071, .m23 = 0.0, .m24 = 0.0,
                                                .m31 = 0.0, .m32 = 0.0, .m33 = 1.0, .m34 = 0.0,
                                                .m41 = 0.0, .m42 = 0.0, .m43 = 0.0, .m44 = 1.0 };

                // Right Eye Animations
                //

                // Blink transform.scale.y
                //
                CABasicAnimation *blinkTransformScaleYAnimation = [CABasicAnimation animation];
                blinkTransformScaleYAnimation.beginTime = 1e-06;
                blinkTransformScaleYAnimation.duration = 0.100364613495278;
                blinkTransformScaleYAnimation.repeatCount = 2.0;
                blinkTransformScaleYAnimation.autoreverses = YES;
                blinkTransformScaleYAnimation.fillMode = kCAFillModeForwards;
                blinkTransformScaleYAnimation.removedOnCompletion = NO;
                blinkTransformScaleYAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
                blinkTransformScaleYAnimation.keyPath = @"transform.scale.y";
                blinkTransformScaleYAnimation.toValue = @(0);

            rightEyeLayer.path = rightEyePath;
            rightEyeLayer.fillColor = fillcolor1.CGColor;
            rightEyeLayer.strokeColor = bordercolor.CGColor;
            rightEyeLayer.fillRule = kCAFillRuleEvenOdd;
            rightEyeLayer.lineWidth = 0.0;

            [faceLayer addSublayer:rightEyeLayer];

            // Left Eye
            //
            CAShapeLayer *leftEyeLayer = [CAShapeLayer layer];
            leftEyeLayer.name = @"Left Eye";
            leftEyeLayer.bounds = CGRectMake(0.0, 0.0, 16.0, 24.0);
            leftEyeLayer.position = CGPointMake(28.5971986660079, 38.0);
            leftEyeLayer.contentsGravity = kCAGravityCenter;
            leftEyeLayer.transform = (CATransform3D) { .m11 = 0.699999988079071, .m12 = 0.0, .m13 = 0.0, .m14 = 0.0,
                                               .m21 = 0.0, .m22 = 0.699999988079071, .m23 = 0.0, .m24 = 0.0,
                                               .m31 = 0.0, .m32 = 0.0, .m33 = 1.0, .m34 = 0.0,
                                               .m41 = 0.0, .m42 = 0.0, .m43 = 0.0, .m44 = 1.0 };

                // Left Eye Animations
                //

                // Blink transform.scale.y
                //
                CABasicAnimation *blinkTransformScaleYAnimation1 = [CABasicAnimation animation];
                blinkTransformScaleYAnimation1.beginTime = 1e-06;
                blinkTransformScaleYAnimation1.duration = 0.100364613495278;
                blinkTransformScaleYAnimation1.repeatCount = 2.0;
                blinkTransformScaleYAnimation1.autoreverses = YES;
                blinkTransformScaleYAnimation1.fillMode = kCAFillModeForwards;
                blinkTransformScaleYAnimation1.removedOnCompletion = NO;
                blinkTransformScaleYAnimation1.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
                blinkTransformScaleYAnimation1.keyPath = @"transform.scale.y";
                blinkTransformScaleYAnimation1.toValue = @(0);

            leftEyeLayer.path = leftEyePath;
            leftEyeLayer.fillColor = fillcolor1.CGColor;
            leftEyeLayer.strokeColor = bordercolor.CGColor;
            leftEyeLayer.fillRule = kCAFillRuleEvenOdd;
            leftEyeLayer.lineWidth = 0.0;

            [faceLayer addSublayer:leftEyeLayer];

            // Right Eyebrow
            //
            CAShapeLayer *rightEyebrowLayer = [CAShapeLayer layer];
            rightEyebrowLayer.name = @"Right Eyebrow";
            rightEyebrowLayer.bounds = CGRectMake(0.0, 0.0, 21.0, 10.0);
            rightEyebrowLayer.position = CGPointMake(64.0, 12.0);
            rightEyebrowLayer.anchorPoint = CGPointMake(0.0, 0.0);
            rightEyebrowLayer.contentsGravity = kCAGravityCenter;
            rightEyebrowLayer.opacity = 0.0;
            rightEyebrowLayer.transform = (CATransform3D) { .m11 = 0.939692974090576, .m12 = 0.342020004987717, .m13 = 0.0, .m14 = 0.0,
                                                    .m21 = -0.342020004987717, .m22 = 0.939692974090576, .m23 = 0.0, .m24 = 0.0,
                                                    .m31 = 0.0, .m32 = 0.0, .m33 = 1.0, .m34 = 0.0,
                                                    .m41 = 2.0, .m42 = 0.0, .m43 = 0.0, .m44 = 1.0 };

                // Right Eyebrow Animations
                //

                // opacity
                //
                CAKeyframeAnimation *opacityAnimation = [CAKeyframeAnimation animation];
                opacityAnimation.beginTime = 0.750000000000003;
                opacityAnimation.duration = 2.25;
                opacityAnimation.fillMode = kCAFillModeForwards;
                opacityAnimation.removedOnCompletion = NO;
                opacityAnimation.keyPath = @"opacity";
                opacityAnimation.values = @[ @(0), @(1), @(1), @(1), @(0), @(0) ];
                opacityAnimation.keyTimes = @[ @(0), @(0.07092198581560284), @(0.5600000000000001), @(0.8829787234042553), @(0.93), @(1) ];
                opacityAnimation.timingFunctions = @[ [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut], [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut], [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut], [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut], [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut] ];
                opacityAnimation.calculationMode = kCAAnimationLinear;


                // transform.translation.y
                //
                CASpringAnimation *transformTranslationYAnimation = [CASpringAnimation animation];
                transformTranslationYAnimation.beginTime = 0.75;
                transformTranslationYAnimation.duration = 1.22676716909215;
                transformTranslationYAnimation.fillMode = kCAFillModeForwards;
                transformTranslationYAnimation.removedOnCompletion = NO;
                transformTranslationYAnimation.keyPath = @"transform.translation.y";
                transformTranslationYAnimation.toValue = @(-14);
                transformTranslationYAnimation.fromValue = @(0);
                transformTranslationYAnimation.stiffness = 200.0;
                transformTranslationYAnimation.damping = 8.0;
                transformTranslationYAnimation.mass = 0.699999988079071;
                transformTranslationYAnimation.initialVelocity = 4.0;


                // transform.translation.y
                //
                CABasicAnimation *transformTranslationYAnimation1 = [CABasicAnimation animation];
                transformTranslationYAnimation1.beginTime = 2.548;
                transformTranslationYAnimation1.duration = 0.264886701234909;
                transformTranslationYAnimation1.fillMode = kCAFillModeForwards;
                transformTranslationYAnimation1.removedOnCompletion = NO;
                transformTranslationYAnimation1.timingFunction = [CAMediaTimingFunction functionWithControlPoints:0.58505 :-0.483842 :1.0 :1.0];
                transformTranslationYAnimation1.keyPath = @"transform.translation.y";
                transformTranslationYAnimation1.toValue = @(0);

            rightEyebrowLayer.path = rightEyebrowPath;
            rightEyebrowLayer.fillColor = bordercolor.CGColor;
            rightEyebrowLayer.strokeColor = strokecolor1.CGColor;
            rightEyebrowLayer.fillRule = kCAFillRuleEvenOdd;
            rightEyebrowLayer.lineCap = kCALineCapRound;
            rightEyebrowLayer.lineJoin = kCALineJoinRound;
            rightEyebrowLayer.lineWidth = 5.0;

            [faceLayer addSublayer:rightEyebrowLayer];

            // Left Eyebrow
            //
            CAShapeLayer *leftEyebrowLayer = [CAShapeLayer layer];
            leftEyebrowLayer.name = @"Left Eyebrow";
            leftEyebrowLayer.bounds = CGRectMake(0.0, 0.0, 21.0, 10.0);
            leftEyebrowLayer.position = CGPointMake(16.0, 14.0);
            leftEyebrowLayer.anchorPoint = CGPointMake(0.0, 0.0);
            leftEyebrowLayer.contentsGravity = kCAGravityCenter;
            leftEyebrowLayer.opacity = 0.0;
            leftEyebrowLayer.transform = (CATransform3D) { .m11 = 0.984808027744293, .m12 = -0.173647999763489, .m13 = 0.0, .m14 = 0.0,
                                                   .m21 = 0.173647999763489, .m22 = 0.984808027744293, .m23 = 0.0, .m24 = 0.0,
                                                   .m31 = 0.0, .m32 = 0.0, .m33 = 1.0, .m34 = 0.0,
                                                   .m41 = -1.10000002384186, .m42 = 0.0, .m43 = 0.0, .m44 = 1.0 };

                // Left Eyebrow Animations
                //

                // opacity
                //
                CAKeyframeAnimation *opacityAnimation1 = [CAKeyframeAnimation animation];
                opacityAnimation1.beginTime = 0.75;
                opacityAnimation1.duration = 2.25;
                opacityAnimation1.fillMode = kCAFillModeForwards;
                opacityAnimation1.removedOnCompletion = NO;
                opacityAnimation1.keyPath = @"opacity";
                opacityAnimation1.values = @[ @(0), @(1), @(1), @(1), @(0), @(0) ];
                opacityAnimation1.keyTimes = @[ @(0), @(0.07092198581560284), @(0.5600000000000001), @(0.8829787234042553), @(0.93), @(1) ];
                opacityAnimation1.timingFunctions = @[ [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut], [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut], [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut], [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut], [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut] ];
                opacityAnimation1.calculationMode = kCAAnimationLinear;


                // transform.translation.y
                //
                CASpringAnimation *transformTranslationYAnimation2 = [CASpringAnimation animation];
                transformTranslationYAnimation2.beginTime = 0.750000000000003;
                transformTranslationYAnimation2.duration = 1.22676716909215;
                transformTranslationYAnimation2.fillMode = kCAFillModeForwards;
                transformTranslationYAnimation2.removedOnCompletion = NO;
                transformTranslationYAnimation2.keyPath = @"transform.translation.y";
                transformTranslationYAnimation2.toValue = @(-9);
                transformTranslationYAnimation2.fromValue = @(0);
                transformTranslationYAnimation2.stiffness = 200.0;
                transformTranslationYAnimation2.damping = 8.0;
                transformTranslationYAnimation2.mass = 0.699999988079071;
                transformTranslationYAnimation2.initialVelocity = 4.0;


                // transform.translation.y
                //
                CABasicAnimation *transformTranslationYAnimation3 = [CABasicAnimation animation];
                transformTranslationYAnimation3.beginTime = 2.548;
                transformTranslationYAnimation3.duration = 0.264886701234909;
                transformTranslationYAnimation3.fillMode = kCAFillModeForwards;
                transformTranslationYAnimation3.removedOnCompletion = NO;
                transformTranslationYAnimation3.timingFunction = [CAMediaTimingFunction functionWithControlPoints:0.58505 :-0.483842 :1.0 :1.0];
                transformTranslationYAnimation3.keyPath = @"transform.translation.y";
                transformTranslationYAnimation3.toValue = @(0);

            leftEyebrowLayer.path = leftEyebrowPath;
            leftEyebrowLayer.fillColor = bordercolor.CGColor;
            leftEyebrowLayer.strokeColor = strokecolor1.CGColor;
            leftEyebrowLayer.fillRule = kCAFillRuleEvenOdd;
            leftEyebrowLayer.lineCap = kCALineCapRound;
            leftEyebrowLayer.lineJoin = kCALineJoinRound;
            leftEyebrowLayer.lineWidth = 5.0;

            [faceLayer addSublayer:leftEyebrowLayer];

            // Left Heart
            //
            CAShapeLayer *leftHeartLayer = [CAShapeLayer layer];
            leftHeartLayer.name = @"Left Heart";
            leftHeartLayer.bounds = CGRectMake(0.0, 0.0, 83.9807596616786, 72.23887155144);
            leftHeartLayer.position = CGPointMake(28.6540572427286, 37.8605761735339);
            leftHeartLayer.contentsGravity = kCAGravityCenter;
            leftHeartLayer.opacity = 0.0;
            leftHeartLayer.transform = (CATransform3D) { .m11 = 0.5, .m12 = 0.0, .m13 = 0.0, .m14 = 0.0,
                                                 .m21 = 0.0, .m22 = 0.5, .m23 = 0.0, .m24 = 0.0,
                                                 .m31 = 0.0, .m32 = 0.0, .m33 = 1.0, .m34 = 0.0,
                                                 .m41 = 0.0, .m42 = 0.0, .m43 = 0.0, .m44 = 1.0 };

                // Left Heart Animations
                //

                // opacity
                //
                CAKeyframeAnimation *opacityAnimation2 = [CAKeyframeAnimation animation];
                opacityAnimation2.beginTime = 0.75;
                opacityAnimation2.duration = 2.25;
                opacityAnimation2.fillMode = kCAFillModeForwards;
                opacityAnimation2.removedOnCompletion = NO;
                opacityAnimation2.keyPath = @"opacity";
                opacityAnimation2.values = @[ @(0), @(1), @(1), @(0) ];
                opacityAnimation2.keyTimes = @[ @(0), @(0.01), @(0.97), @(1) ];
                opacityAnimation2.timingFunctions = @[ [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut], [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut], [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut] ];
                opacityAnimation2.calculationMode = kCAAnimationLinear;


                // transform.rotation.z
                //
                CAKeyframeAnimation *transformRotationZAnimation = [CAKeyframeAnimation animation];
                transformRotationZAnimation.beginTime = 0.75;
                transformRotationZAnimation.duration = 1.22676716909215;
                transformRotationZAnimation.fillMode = kCAFillModeForwards;
                transformRotationZAnimation.removedOnCompletion = NO;
                transformRotationZAnimation.keyPath = @"transform.rotation.z";
                transformRotationZAnimation.values = @[ @(0), @(-0.1), @(0.1), @(0) ];
                transformRotationZAnimation.timingFunctions = @[ [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut], [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut], [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut] ];
                transformRotationZAnimation.calculationMode = kCAAnimationLinear;


                // transform.scale
                //
                CASpringAnimation *transformScaleAnimation = [CASpringAnimation animation];
                transformScaleAnimation.beginTime = 0.75;
                transformScaleAnimation.duration = 1.22676716909215;
                transformScaleAnimation.fillMode = kCAFillModeForwards;
                transformScaleAnimation.removedOnCompletion = NO;
                transformScaleAnimation.keyPath = @"transform.scale";
                transformScaleAnimation.toValue = @(0.5);
                transformScaleAnimation.fromValue = @(0);
                transformScaleAnimation.stiffness = 200.0;
                transformScaleAnimation.damping = 8.0;
                transformScaleAnimation.mass = 0.699999988079071;
                transformScaleAnimation.initialVelocity = 4.0;


                // transform.scale
                //
                CABasicAnimation *transformScaleAnimation1 = [CABasicAnimation animation];
                transformScaleAnimation1.beginTime = 2.548;
                transformScaleAnimation1.duration = 0.452000000000003;
                transformScaleAnimation1.fillMode = kCAFillModeForwards;
                transformScaleAnimation1.removedOnCompletion = NO;
                transformScaleAnimation1.timingFunction = [CAMediaTimingFunction functionWithControlPoints:0.58505 :-0.483842 :1.0 :1.0];
                transformScaleAnimation1.keyPath = @"transform.scale";
                transformScaleAnimation1.toValue = @(0);
                transformScaleAnimation1.fromValue = @(0.6);


                // Left Heart Sublayers
                //

                // Fill 9
                //
                CAShapeLayer *fillLayer = [CAShapeLayer layer];
                fillLayer.name = @"Fill 9";
                fillLayer.bounds = CGRectMake(0.0, 0.0, 7.58431748124914, 7.11408968650033);
                fillLayer.position = CGPointMake(8.50304567152205, 11.8585689532238);
                fillLayer.anchorPoint = CGPointMake(0.0, 0.0);
                fillLayer.contentsGravity = kCAGravityCenter;
                fillLayer.path = fillPath;
                fillLayer.fillColor = fillcolor2.CGColor;
                fillLayer.strokeColor = bordercolor.CGColor;
                fillLayer.fillRule = kCAFillRuleEvenOdd;
                fillLayer.lineWidth = 0.0;

                [leftHeartLayer addSublayer:fillLayer];
            leftHeartLayer.path = leftHeartPath;
            leftHeartLayer.fillColor = fillcolor3.CGColor;
            leftHeartLayer.strokeColor = bordercolor.CGColor;
            leftHeartLayer.fillRule = kCAFillRuleEvenOdd;
            leftHeartLayer.lineWidth = 0.0;

            [faceLayer addSublayer:leftHeartLayer];

            // Right Heart
            //
            CAShapeLayer *rightHeartLayer = [CAShapeLayer layer];
            rightHeartLayer.name = @"Right Heart";
            rightHeartLayer.bounds = CGRectMake(0.0, 0.0, 83.9807596616786, 72.23887155144);
            rightHeartLayer.position = CGPointMake(74.6540572427286, 37.8605761735339);
            rightHeartLayer.contentsGravity = kCAGravityCenter;
            rightHeartLayer.opacity = 0.0;
            rightHeartLayer.transform = (CATransform3D) { .m11 = 0.5, .m12 = 0.0, .m13 = 0.0, .m14 = 0.0,
                                                  .m21 = 0.0, .m22 = 0.5, .m23 = 0.0, .m24 = 0.0,
                                                  .m31 = 0.0, .m32 = 0.0, .m33 = 1.0, .m34 = 0.0,
                                                  .m41 = 0.0, .m42 = 0.0, .m43 = 0.0, .m44 = 1.0 };

                // Right Heart Animations
                //

                // opacity
                //
                CAKeyframeAnimation *opacityAnimation3 = [CAKeyframeAnimation animation];
                opacityAnimation3.beginTime = 0.75;
                opacityAnimation3.duration = 2.25;
                opacityAnimation3.fillMode = kCAFillModeForwards;
                opacityAnimation3.removedOnCompletion = NO;
                opacityAnimation3.keyPath = @"opacity";
                opacityAnimation3.values = @[ @(0), @(1), @(1), @(0) ];
                opacityAnimation3.keyTimes = @[ @(0), @(0.01), @(0.97), @(1) ];
                opacityAnimation3.timingFunctions = @[ [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut], [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut], [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut] ];
                opacityAnimation3.calculationMode = kCAAnimationLinear;


                // transform.rotation.z
                //
                CAKeyframeAnimation *transformRotationZAnimation1 = [CAKeyframeAnimation animation];
                transformRotationZAnimation1.beginTime = 0.75;
                transformRotationZAnimation1.duration = 1.22676716909215;
                transformRotationZAnimation1.fillMode = kCAFillModeForwards;
                transformRotationZAnimation1.removedOnCompletion = NO;
                transformRotationZAnimation1.keyPath = @"transform.rotation.z";
                transformRotationZAnimation1.values = @[ @(0), @(-0.1), @(0.1), @(0) ];
                transformRotationZAnimation1.timingFunctions = @[ [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut], [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut], [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut] ];
                transformRotationZAnimation1.calculationMode = kCAAnimationLinear;


                // transform.scale
                //
                CASpringAnimation *transformScaleAnimation2 = [CASpringAnimation animation];
                transformScaleAnimation2.beginTime = 0.75;
                transformScaleAnimation2.duration = 1.22676716909215;
                transformScaleAnimation2.fillMode = kCAFillModeForwards;
                transformScaleAnimation2.removedOnCompletion = NO;
                transformScaleAnimation2.keyPath = @"transform.scale";
                transformScaleAnimation2.toValue = @(0.5);
                transformScaleAnimation2.fromValue = @(0);
                transformScaleAnimation2.stiffness = 200.0;
                transformScaleAnimation2.damping = 8.0;
                transformScaleAnimation2.mass = 0.699999988079071;
                transformScaleAnimation2.initialVelocity = 4.0;


                // transform.scale
                //
                CABasicAnimation *transformScaleAnimation3 = [CABasicAnimation animation];
                transformScaleAnimation3.beginTime = 2.548;
                transformScaleAnimation3.duration = 0.452000000000003;
                transformScaleAnimation3.fillMode = kCAFillModeForwards;
                transformScaleAnimation3.removedOnCompletion = NO;
                transformScaleAnimation3.timingFunction = [CAMediaTimingFunction functionWithControlPoints:0.58505 :-0.483842 :1.0 :1.0];
                transformScaleAnimation3.keyPath = @"transform.scale";
                transformScaleAnimation3.toValue = @(0);
                transformScaleAnimation3.fromValue = @(0.6);


                // Right Heart Sublayers
                //

                // Fill 9
                //
                CAShapeLayer *fillLayer1 = [CAShapeLayer layer];
                fillLayer1.name = @"Fill 9";
                fillLayer1.bounds = CGRectMake(0.0, 0.0, 7.58431748124914, 7.11408968650033);
                fillLayer1.position = CGPointMake(8.50304567152205, 11.8585689532238);
                fillLayer1.anchorPoint = CGPointMake(0.0, 0.0);
                fillLayer1.contentsGravity = kCAGravityCenter;
                fillLayer1.path = fillPath1;
                fillLayer1.fillColor = fillcolor2.CGColor;
                fillLayer1.strokeColor = bordercolor.CGColor;
                fillLayer1.fillRule = kCAFillRuleEvenOdd;
                fillLayer1.lineWidth = 0.0;

                [rightHeartLayer addSublayer:fillLayer1];
            rightHeartLayer.path = rightHeartPath;
            rightHeartLayer.fillColor = fillcolor3.CGColor;
            rightHeartLayer.strokeColor = bordercolor.CGColor;
            rightHeartLayer.fillRule = kCAFillRuleEvenOdd;
            rightHeartLayer.lineWidth = 0.0;

            [faceLayer addSublayer:rightHeartLayer];

        [loveLayer addSublayer:faceLayer];

    [self.layer addSublayer:loveLayer];
    // Layer Instance Assignments
    //
    self.faceLayer = faceLayer;
    self.leftHeartLayer = leftHeartLayer;
    self.rightHeartLayer = rightHeartLayer;
    self.leftEyebrowLayer = leftEyebrowLayer;
    self.rightEyebrowLayer = rightEyebrowLayer;
    self.leftEyeLayer = leftEyeLayer;
    self.rightEyeLayer = rightEyeLayer;
    self.mouthLayer = mouthLayer;
    // Animation Instance Assignments
    //
    self.sublayertransformAnimation = sublayertransformAnimation;
    self.pathAnimation = pathAnimation;
    self.transformAnimation = transformAnimation;
    self.blinkTransformScaleYAnimation = blinkTransformScaleYAnimation;
    self.blinkTransformScaleYAnimation1 = blinkTransformScaleYAnimation1;
    self.opacityAnimation = opacityAnimation;
    self.transformTranslationYAnimation = transformTranslationYAnimation;
    self.transformTranslationYAnimation1 = transformTranslationYAnimation1;
    self.opacityAnimation1 = opacityAnimation1;
    self.transformTranslationYAnimation2 = transformTranslationYAnimation2;
    self.transformTranslationYAnimation3 = transformTranslationYAnimation3;
    self.opacityAnimation2 = opacityAnimation2;
    self.transformRotationZAnimation = transformRotationZAnimation;
    self.transformScaleAnimation = transformScaleAnimation;
    self.transformScaleAnimation1 = transformScaleAnimation1;
    self.opacityAnimation3 = opacityAnimation3;
    self.transformRotationZAnimation1 = transformRotationZAnimation1;
    self.transformScaleAnimation2 = transformScaleAnimation2;
    self.transformScaleAnimation3 = transformScaleAnimation3;

}

#pragma mark - Responder

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    CGPoint location = [touches.anyObject locationInView:self.superview];
    CALayer *hitLayer = [self.layer.presentationLayer hitTest:location];

    if (hitLayer == nil) { return; }

    NSLog(@"Layer %@ was tapped.", hitLayer.name);

    // Call action methods
    //
    [self animateEmojiAction:self];
}

#pragma mark - Actions

- (IBAction)animateEmojiAction:(id)sender
{
    self.sublayertransformAnimation.beginTime = [self.faceLayer convertTime: CACurrentMediaTime() fromLayer: nil] + 0.75;
    [self.faceLayer addAnimation:self.sublayertransformAnimation forKey:@"sublayertransformAnimation"];

    self.opacityAnimation2.beginTime = [self.leftHeartLayer convertTime: CACurrentMediaTime() fromLayer: nil] + 0.75;
    [self.leftHeartLayer addAnimation:self.opacityAnimation2 forKey:@"opacityAnimation2"];

    self.transformRotationZAnimation.beginTime = [self.leftHeartLayer convertTime: CACurrentMediaTime() fromLayer: nil] + 0.75;
    [self.leftHeartLayer addAnimation:self.transformRotationZAnimation forKey:@"transformRotationZAnimation"];

    self.transformScaleAnimation.beginTime = [self.leftHeartLayer convertTime: CACurrentMediaTime() fromLayer: nil] + 0.75;
    [self.leftHeartLayer addAnimation:self.transformScaleAnimation forKey:@"transformScaleAnimation"];

    self.transformScaleAnimation1.beginTime = [self.leftHeartLayer convertTime: CACurrentMediaTime() fromLayer: nil] + 2.548;
    [self.leftHeartLayer addAnimation:self.transformScaleAnimation1 forKey:@"transformScaleAnimation1"];

    self.opacityAnimation3.beginTime = [self.rightHeartLayer convertTime: CACurrentMediaTime() fromLayer: nil] + 0.75;
    [self.rightHeartLayer addAnimation:self.opacityAnimation3 forKey:@"opacityAnimation3"];

    self.transformRotationZAnimation1.beginTime = [self.rightHeartLayer convertTime: CACurrentMediaTime() fromLayer: nil] + 0.75;
    [self.rightHeartLayer addAnimation:self.transformRotationZAnimation1 forKey:@"transformRotationZAnimation1"];

    self.transformScaleAnimation2.beginTime = [self.rightHeartLayer convertTime: CACurrentMediaTime() fromLayer: nil] + 0.75;
    [self.rightHeartLayer addAnimation:self.transformScaleAnimation2 forKey:@"transformScaleAnimation2"];

    self.transformScaleAnimation3.beginTime = [self.rightHeartLayer convertTime: CACurrentMediaTime() fromLayer: nil] + 2.548;
    [self.rightHeartLayer addAnimation:self.transformScaleAnimation3 forKey:@"transformScaleAnimation3"];

    self.opacityAnimation1.beginTime = [self.leftEyebrowLayer convertTime: CACurrentMediaTime() fromLayer: nil] + 0.75;
    [self.leftEyebrowLayer addAnimation:self.opacityAnimation1 forKey:@"opacityAnimation1"];

    self.transformTranslationYAnimation2.beginTime = [self.leftEyebrowLayer convertTime: CACurrentMediaTime() fromLayer: nil] + 0.750000000000003;
    [self.leftEyebrowLayer addAnimation:self.transformTranslationYAnimation2 forKey:@"transformTranslationYAnimation2"];

    self.transformTranslationYAnimation3.beginTime = [self.leftEyebrowLayer convertTime: CACurrentMediaTime() fromLayer: nil] + 2.548;
    [self.leftEyebrowLayer addAnimation:self.transformTranslationYAnimation3 forKey:@"transformTranslationYAnimation3"];

    self.opacityAnimation.beginTime = [self.rightEyebrowLayer convertTime: CACurrentMediaTime() fromLayer: nil] + 0.750000000000003;
    [self.rightEyebrowLayer addAnimation:self.opacityAnimation forKey:@"opacityAnimation"];

    self.transformTranslationYAnimation.beginTime = [self.rightEyebrowLayer convertTime: CACurrentMediaTime() fromLayer: nil] + 0.75;
    [self.rightEyebrowLayer addAnimation:self.transformTranslationYAnimation forKey:@"transformTranslationYAnimation"];

    self.transformTranslationYAnimation1.beginTime = [self.rightEyebrowLayer convertTime: CACurrentMediaTime() fromLayer: nil] + 2.548;
    [self.rightEyebrowLayer addAnimation:self.transformTranslationYAnimation1 forKey:@"transformTranslationYAnimation1"];

    self.blinkTransformScaleYAnimation1.beginTime = [self.leftEyeLayer convertTime: CACurrentMediaTime() fromLayer: nil] + 1e-06;
    [self.leftEyeLayer addAnimation:self.blinkTransformScaleYAnimation1 forKey:@"blinkTransformScaleYAnimation1"];

    self.blinkTransformScaleYAnimation.beginTime = [self.rightEyeLayer convertTime: CACurrentMediaTime() fromLayer: nil] + 1e-06;
    [self.rightEyeLayer addAnimation:self.blinkTransformScaleYAnimation forKey:@"blinkTransformScaleYAnimation"];

    self.pathAnimation.beginTime = [self.mouthLayer convertTime: CACurrentMediaTime() fromLayer: nil] + 0.75;
    [self.mouthLayer addAnimation:self.pathAnimation forKey:@"pathAnimation"];

    self.transformAnimation.beginTime = [self.mouthLayer convertTime: CACurrentMediaTime() fromLayer: nil] + 0.75;
    [self.mouthLayer addAnimation:self.transformAnimation forKey:@"transformAnimation"];
}

@end
