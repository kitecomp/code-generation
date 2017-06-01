//
//  AmazingView.swift
//  Exported from Kite Compositor for Mac 1.4
//
//  Created on 5/31/17, 5:14 PM.
//


import UIKit

class AmazingView: UIView
{
    // MARK: - Properties

    private var faceLayer: CALayer?
    private var leftEyebrowLayer: CAShapeLayer?
    private var rightEyebrowLayer: CAShapeLayer?
    private var leftEyeLayer: CAShapeLayer?
    private var rightEyeLayer: CAShapeLayer?
    private var mouthLayer: CAShapeLayer?

    private var sublayertransformAnimation: CAKeyframeAnimation?
    private var transformAnimation: CAKeyframeAnimation?
    private var transformAnimation1: CAKeyframeAnimation?
    private var blinkTransformScaleYAnimation: CABasicAnimation?
    private var blinkTransformScaleYAnimation1: CABasicAnimation?
    private var blinkTransformScaleYAnimation2: CABasicAnimation?
    private var transformAnimation2: CAKeyframeAnimation?
    private var blinkTransformScaleYAnimation3: CABasicAnimation?
    private var blinkTransformScaleYAnimation4: CABasicAnimation?
    private var blinkTransformScaleYAnimation5: CABasicAnimation?
    private var transformAnimation3: CAKeyframeAnimation?
    private var transformAnimation4: CAKeyframeAnimation?

    // MARK: - Initialization

    init()
    {
        super.init(frame: CGRect(x: 0, y: 0, width: 112.0, height: 112.0))
        self.setupLayers()
    }

    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
        self.setupLayers()
    }

    // MARK: - Setup Layers

    private func setupLayers()
    {
        // Colors
        //
        let backgroundcolor = UIColor(red: 0.978351, green: 0.845155, blue: 0.373647, alpha: 1)
        let backgroundcolor1 = UIColor(red: 1, green: 0.863857, blue: 0.381915, alpha: 1)
        let bordercolor = UIColor(red: 0, green: 0, blue: 0, alpha: 0)
        let fillcolor = UIColor(red: 0.113725, green: 0.164706, blue: 0.196078, alpha: 1)
        let fillcolor1 = UIColor(red: 0.152941, green: 0.133333, blue: 0.196078, alpha: 1)
        let strokecolor = UIColor(red: 0.12549, green: 0.035294, blue: 0, alpha: 1)

        // Paths
        //
        let mouthPath = CGMutablePath()
        mouthPath.move(to: CGPoint(x: 16, y: 46))
        mouthPath.addCurve(to: CGPoint(x: 32, y: 23), control1: CGPoint(x: 24.837, y: 46), control2: CGPoint(x: 32, y: 35.702999))
        mouthPath.addCurve(to: CGPoint(x: 16, y: 0), control1: CGPoint(x: 32, y: 10.297), control2: CGPoint(x: 24.837, y: 0))
        mouthPath.addCurve(to: CGPoint(x: 0, y: 23), control1: CGPoint(x: 7.163, y: 0), control2: CGPoint(x: 0, y: 10.297))
        mouthPath.addCurve(to: CGPoint(x: 16, y: 46), control1: CGPoint(x: 0, y: 35.702999), control2: CGPoint(x: 7.163, y: 46))
        mouthPath.closeSubpath()
        mouthPath.move(to: CGPoint(x: 16, y: 46))

        let rightEyePath = CGMutablePath()
        rightEyePath.move(to: CGPoint(x: 8, y: 24))
        rightEyePath.addCurve(to: CGPoint(x: 16, y: 12), control1: CGPoint(x: 12.418, y: 24), control2: CGPoint(x: 16, y: 18.627001))
        rightEyePath.addCurve(to: CGPoint(x: 8, y: 0), control1: CGPoint(x: 16, y: 5.373), control2: CGPoint(x: 12.418, y: 0))
        rightEyePath.addCurve(to: CGPoint(x: 0, y: 12), control1: CGPoint(x: 3.582, y: 0), control2: CGPoint(x: 0, y: 5.373))
        rightEyePath.addCurve(to: CGPoint(x: 8, y: 24), control1: CGPoint(x: 0, y: 18.627001), control2: CGPoint(x: 3.582, y: 24))
        rightEyePath.closeSubpath()
        rightEyePath.move(to: CGPoint(x: 8, y: 24))

        let leftEyePath = CGMutablePath()
        leftEyePath.move(to: CGPoint(x: 8, y: 24))
        leftEyePath.addCurve(to: CGPoint(x: 16, y: 12), control1: CGPoint(x: 12.418, y: 24), control2: CGPoint(x: 16, y: 18.627001))
        leftEyePath.addCurve(to: CGPoint(x: 8, y: 0), control1: CGPoint(x: 16, y: 5.373), control2: CGPoint(x: 12.418, y: 0))
        leftEyePath.addCurve(to: CGPoint(x: 0, y: 12), control1: CGPoint(x: 3.582, y: 0), control2: CGPoint(x: 0, y: 5.373))
        leftEyePath.addCurve(to: CGPoint(x: 8, y: 24), control1: CGPoint(x: 0, y: 18.627001), control2: CGPoint(x: 3.582, y: 24))
        leftEyePath.closeSubpath()
        leftEyePath.move(to: CGPoint(x: 8, y: 24))

        let rightEyebrowPath = CGMutablePath()
        rightEyebrowPath.move(to: CGPoint(x: 18.5, y: 4.5))
        rightEyebrowPath.addCurve(to: CGPoint(x: 12.5, y: 2.5), control1: CGPoint(x: 16.517, y: 3.357), control2: CGPoint(x: 14.755, y: 2.5))
        rightEyebrowPath.addCurve(to: CGPoint(x: 2.5, y: 6.5), control1: CGPoint(x: 8.3, y: 2.5), control2: CGPoint(x: 4.81, y: 4.057))

        let leftEyebrowPath = CGMutablePath()
        leftEyebrowPath.move(to: CGPoint(x: 18.5, y: 4.5))
        leftEyebrowPath.addCurve(to: CGPoint(x: 12.5, y: 2.5), control1: CGPoint(x: 16.516001, y: 3.357), control2: CGPoint(x: 14.755, y: 2.5))
        leftEyebrowPath.addCurve(to: CGPoint(x: 2.5, y: 6.5), control1: CGPoint(x: 8.299, y: 2.5), control2: CGPoint(x: 4.81, y: 4.057))

        // Amazing
        //
        let amazingLayer = CALayer()
        amazingLayer.name = "Amazing"
        amazingLayer.bounds = CGRect(x: 0, y: 0, width: 112, height: 112)
        amazingLayer.position = CGPoint(x: 0, y: 0)
        amazingLayer.anchorPoint = CGPoint(x: 0, y: 0)
        amazingLayer.contentsGravity = kCAGravityCenter
        amazingLayer.backgroundColor = backgroundcolor.cgColor
        amazingLayer.cornerRadius = 56

            // Amazing Sublayers
            //

            // Face
            //
            let faceLayer = CALayer()
            faceLayer.name = "Face"
            faceLayer.bounds = CGRect(x: 0, y: 0, width: 100, height: 100)
            faceLayer.position = CGPoint(x: 6, y: 6)
            faceLayer.anchorPoint = CGPoint(x: 0, y: 0)
            faceLayer.contentsGravity = kCAGravityCenter
            faceLayer.backgroundColor = backgroundcolor1.cgColor
            faceLayer.cornerRadius = 50
            faceLayer.borderColor = bordercolor.cgColor
            faceLayer.shadowOffset = CGSize(width: 0, height: 1)
            faceLayer.fillMode = kCAFillModeForwards

                // Face Animations
                //

                // sublayerTransform
                //
                let sublayertransformAnimation = CAKeyframeAnimation()
                sublayertransformAnimation.beginTime = 0.748733
                sublayertransformAnimation.duration = 2.254332
                sublayertransformAnimation.fillMode = kCAFillModeForwards
                sublayertransformAnimation.isRemovedOnCompletion = false
                sublayertransformAnimation.keyPath = "sublayerTransform"
                sublayertransformAnimation.values = [ CATransform3DIdentity, CATransform3D( m11: 1, m12: 0, m13: 0, m14: 0, m21: 0, m22: 1, m23: 0, m24: 0, m31: 0, m32: 0, m33: 1, m34: 0, m41: 0, m42: 6.6, m43: 0, m44: 1 ), CATransform3DIdentity ]
                sublayertransformAnimation.timingFunctions = [ CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut), CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut) ]
                sublayertransformAnimation.calculationMode = kCAAnimationLinear


                // Face Sublayers
                //

                // Mouth
                //
                let mouthLayer = CAShapeLayer()
                mouthLayer.name = "Mouth"
                mouthLayer.bounds = CGRect(x: 0, y: 0, width: 32, height: 46)
                mouthLayer.position = CGPoint(x: 50, y: 73)
                mouthLayer.contentsGravity = kCAGravityCenter

                    // Mouth Animations
                    //

                    // transform
                    //
                    let transformAnimation = CAKeyframeAnimation()
                    transformAnimation.beginTime = 0.745668
                    transformAnimation.duration = 2.254332
                    transformAnimation.fillMode = kCAFillModeForwards
                    transformAnimation.isRemovedOnCompletion = false
                    transformAnimation.keyPath = "transform"
                    transformAnimation.values = [ CATransform3DIdentity, CATransform3D( m11: 0.6, m12: 0, m13: 0, m14: 0, m21: 0, m22: 0.5, m23: 0, m24: 0, m31: 0, m32: 0, m33: 1, m34: 0, m41: -18.799999, m42: -15.1, m43: 0, m44: 1 ), CATransform3D( m11: 0.6, m12: 0, m13: 0, m14: 0, m21: 0, m22: 0.5, m23: 0, m24: 0, m31: 0, m32: 0, m33: 1, m34: 0, m41: -18.799999, m42: -15.1, m43: 0, m44: 1 ), CATransform3D( m11: 1, m12: 0, m13: 0, m14: 0, m21: 0, m22: 0.8, m23: 0, m24: 0, m31: 0, m32: 0, m33: 1, m34: 0, m41: 19.200001, m42: -6.8, m43: 0, m44: 1 ), CATransform3D( m11: 1, m12: 0, m13: 0, m14: 0, m21: 0, m22: 0.8, m23: 0, m24: 0, m31: 0, m32: 0, m33: 1, m34: 0, m41: 19.200001, m42: -6.8, m43: 0, m44: 1 ), CATransform3DIdentity ]
                    transformAnimation.timingFunctions = [ CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut), CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut), CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut), CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut), CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut) ]
                    transformAnimation.calculationMode = kCAAnimationLinear

                mouthLayer.path = mouthPath
                mouthLayer.fillColor = fillcolor.cgColor
                mouthLayer.strokeColor = bordercolor.cgColor
                mouthLayer.fillRule = kCAFillRuleEvenOdd
                mouthLayer.lineWidth = 0

                faceLayer.addSublayer(mouthLayer)

                // Right Eye
                //
                let rightEyeLayer = CAShapeLayer()
                rightEyeLayer.name = "Right Eye"
                rightEyeLayer.bounds = CGRect(x: 0, y: 0, width: 16, height: 24)
                rightEyeLayer.position = CGPoint(x: 76, y: 38)
                rightEyeLayer.contentsGravity = kCAGravityCenter

                    // Right Eye Animations
                    //

                    // transform
                    //
                    let transformAnimation1 = CAKeyframeAnimation()
                    transformAnimation1.beginTime = 0.745668
                    transformAnimation1.duration = 2.254332
                    transformAnimation1.fillMode = kCAFillModeForwards
                    transformAnimation1.isRemovedOnCompletion = false
                    transformAnimation1.keyPath = "transform"
                    transformAnimation1.values = [ CATransform3DIdentity, CATransform3D( m11: 0.945519, m12: 0.325568, m13: 0, m14: 0, m21: -0.325568, m22: 0.945519, m23: 0, m24: 0, m31: 0, m32: 0, m33: 1, m34: 0, m41: -12.4, m42: -10.5, m43: 0, m44: 1 ), CATransform3D( m11: 0.945519, m12: 0.325568, m13: 0, m14: 0, m21: -0.325568, m22: 0.945519, m23: 0, m24: 0, m31: 0, m32: 0, m33: 1, m34: 0, m41: -12.4, m42: -10.5, m43: 0, m44: 1 ), CATransform3D( m11: 1.188322, m12: -0.167008, m13: 0, m14: 0, m21: 0.167008, m22: 1.188322, m23: 0, m24: 0, m31: 0, m32: 0, m33: 1, m34: 0, m41: 9.5, m42: -8, m43: 0, m44: 1 ), CATransform3D( m11: 1.188322, m12: -0.167008, m13: 0, m14: 0, m21: 0.167008, m22: 1.188322, m23: 0, m24: 0, m31: 0, m32: 0, m33: 1, m34: 0, m41: 9.5, m42: -8, m43: 0, m44: 1 ), CATransform3DIdentity ]
                    transformAnimation1.timingFunctions = [ CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut), CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut), CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut), CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut), CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut) ]
                    transformAnimation1.calculationMode = kCAAnimationLinear


                    // Blink transform.scale.y
                    //
                    let blinkTransformScaleYAnimation = CABasicAnimation()
                    blinkTransformScaleYAnimation.beginTime = 0.000001
                    blinkTransformScaleYAnimation.duration = 0.100365
                    blinkTransformScaleYAnimation.repeatCount = 2
                    blinkTransformScaleYAnimation.autoreverses = true
                    blinkTransformScaleYAnimation.fillMode = kCAFillModeForwards
                    blinkTransformScaleYAnimation.isRemovedOnCompletion = false
                    blinkTransformScaleYAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                    blinkTransformScaleYAnimation.keyPath = "transform.scale.y"
                    blinkTransformScaleYAnimation.toValue = 0


                    // Blink transform.scale.y
                    //
                    let blinkTransformScaleYAnimation1 = CABasicAnimation()
                    blinkTransformScaleYAnimation1.beginTime = 1.595933
                    blinkTransformScaleYAnimation1.duration = 0.100365
                    blinkTransformScaleYAnimation1.repeatCount = 1
                    blinkTransformScaleYAnimation1.autoreverses = true
                    blinkTransformScaleYAnimation1.fillMode = kCAFillModeForwards
                    blinkTransformScaleYAnimation1.isRemovedOnCompletion = false
                    blinkTransformScaleYAnimation1.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                    blinkTransformScaleYAnimation1.keyPath = "transform.scale.y"
                    blinkTransformScaleYAnimation1.toValue = 0


                    // Blink transform.scale.y
                    //
                    let blinkTransformScaleYAnimation2 = CABasicAnimation()
                    blinkTransformScaleYAnimation2.beginTime = 2.189
                    blinkTransformScaleYAnimation2.duration = 0.100365
                    blinkTransformScaleYAnimation2.repeatCount = 1
                    blinkTransformScaleYAnimation2.autoreverses = true
                    blinkTransformScaleYAnimation2.fillMode = kCAFillModeForwards
                    blinkTransformScaleYAnimation2.isRemovedOnCompletion = false
                    blinkTransformScaleYAnimation2.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                    blinkTransformScaleYAnimation2.keyPath = "transform.scale.y"
                    blinkTransformScaleYAnimation2.toValue = 0

                rightEyeLayer.path = rightEyePath
                rightEyeLayer.fillColor = fillcolor1.cgColor
                rightEyeLayer.strokeColor = bordercolor.cgColor
                rightEyeLayer.fillRule = kCAFillRuleEvenOdd
                rightEyeLayer.lineWidth = 0

                faceLayer.addSublayer(rightEyeLayer)

                // Left Eye
                //
                let leftEyeLayer = CAShapeLayer()
                leftEyeLayer.name = "Left Eye"
                leftEyeLayer.bounds = CGRect(x: 0, y: 0, width: 16, height: 24)
                leftEyeLayer.position = CGPoint(x: 24.597199, y: 38)
                leftEyeLayer.contentsGravity = kCAGravityCenter

                    // Left Eye Animations
                    //

                    // transform
                    //
                    let transformAnimation2 = CAKeyframeAnimation()
                    transformAnimation2.beginTime = 0.745668
                    transformAnimation2.duration = 2.254332
                    transformAnimation2.fillMode = kCAFillModeForwards
                    transformAnimation2.isRemovedOnCompletion = false
                    transformAnimation2.keyPath = "transform"
                    transformAnimation2.values = [ CATransform3DIdentity, CATransform3D( m11: 1.153514, m12: 0.330765, m13: 0, m14: 0, m21: -0.330765, m22: 1.153514, m23: 0, m24: 0, m31: 0, m32: 0, m33: 1, m34: 0, m41: -8.5, m42: -12, m43: 0, m44: 1 ), CATransform3D( m11: 1.153514, m12: 0.330765, m13: 0, m14: 0, m21: -0.330765, m22: 1.153514, m23: 0, m24: 0, m31: 0, m32: 0, m33: 1, m34: 0, m41: -8.5, m42: -12, m43: 0, m44: 1 ), CATransform3D( m11: 1, m12: 0, m13: 0, m14: 0, m21: 0, m22: 1, m23: 0, m24: 0, m31: 0, m32: 0, m33: 1, m34: 0, m41: 12.8, m42: -6.6, m43: 0, m44: 1 ), CATransform3D( m11: 1, m12: 0, m13: 0, m14: 0, m21: 0, m22: 1, m23: 0, m24: 0, m31: 0, m32: 0, m33: 1, m34: 0, m41: 12.8, m42: -6.6, m43: 0, m44: 1 ), CATransform3DIdentity ]
                    transformAnimation2.timingFunctions = [ CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut), CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut), CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut), CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut), CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut) ]
                    transformAnimation2.calculationMode = kCAAnimationLinear


                    // Blink transform.scale.y
                    //
                    let blinkTransformScaleYAnimation3 = CABasicAnimation()
                    blinkTransformScaleYAnimation3.beginTime = 0.000001
                    blinkTransformScaleYAnimation3.duration = 0.100365
                    blinkTransformScaleYAnimation3.repeatCount = 2
                    blinkTransformScaleYAnimation3.autoreverses = true
                    blinkTransformScaleYAnimation3.fillMode = kCAFillModeForwards
                    blinkTransformScaleYAnimation3.isRemovedOnCompletion = false
                    blinkTransformScaleYAnimation3.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                    blinkTransformScaleYAnimation3.keyPath = "transform.scale.y"
                    blinkTransformScaleYAnimation3.toValue = 0


                    // Blink transform.scale.y
                    //
                    let blinkTransformScaleYAnimation4 = CABasicAnimation()
                    blinkTransformScaleYAnimation4.beginTime = 1.595933
                    blinkTransformScaleYAnimation4.duration = 0.100365
                    blinkTransformScaleYAnimation4.repeatCount = 1
                    blinkTransformScaleYAnimation4.autoreverses = true
                    blinkTransformScaleYAnimation4.isRemovedOnCompletion = false
                    blinkTransformScaleYAnimation4.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                    blinkTransformScaleYAnimation4.keyPath = "transform.scale.y"
                    blinkTransformScaleYAnimation4.toValue = 0


                    // Blink transform.scale.y
                    //
                    let blinkTransformScaleYAnimation5 = CABasicAnimation()
                    blinkTransformScaleYAnimation5.beginTime = 2.189
                    blinkTransformScaleYAnimation5.duration = 0.100365
                    blinkTransformScaleYAnimation5.repeatCount = 1
                    blinkTransformScaleYAnimation5.autoreverses = true
                    blinkTransformScaleYAnimation5.isRemovedOnCompletion = false
                    blinkTransformScaleYAnimation5.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                    blinkTransformScaleYAnimation5.keyPath = "transform.scale.y"
                    blinkTransformScaleYAnimation5.toValue = 0

                leftEyeLayer.path = leftEyePath
                leftEyeLayer.fillColor = fillcolor1.cgColor
                leftEyeLayer.strokeColor = bordercolor.cgColor
                leftEyeLayer.fillRule = kCAFillRuleEvenOdd
                leftEyeLayer.lineWidth = 0

                faceLayer.addSublayer(leftEyeLayer)

                // Right Eyebrow
                //
                let rightEyebrowLayer = CAShapeLayer()
                rightEyebrowLayer.name = "Right Eyebrow"
                rightEyebrowLayer.bounds = CGRect(x: 0, y: 0, width: 21, height: 10)
                rightEyebrowLayer.position = CGPoint(x: 64, y: 8)
                rightEyebrowLayer.anchorPoint = CGPoint(x: 0, y: 0)
                rightEyebrowLayer.contentsGravity = kCAGravityCenter

                    // Right Eyebrow Animations
                    //

                    // transform
                    //
                    let transformAnimation3 = CAKeyframeAnimation()
                    transformAnimation3.beginTime = 0.745668
                    transformAnimation3.duration = 2.254332
                    transformAnimation3.fillMode = kCAFillModeForwards
                    transformAnimation3.isRemovedOnCompletion = false
                    transformAnimation3.keyPath = "transform"
                    transformAnimation3.values = [ CATransform3DIdentity, CATransform3D( m11: 0.913545, m12: 0.406737, m13: 0, m14: 0, m21: -0.406737, m22: 0.913545, m23: 0, m24: 0, m31: 0, m32: 0, m33: 1, m34: 0, m41: -6.8, m42: -3.9, m43: 0, m44: 1 ), CATransform3D( m11: 0.913545, m12: 0.406737, m13: 0, m14: 0, m21: -0.406737, m22: 0.913545, m23: 0, m24: 0, m31: 0, m32: 0, m33: 1, m34: 0, m41: -6.8, m42: -3.9, m43: 0, m44: 1 ), CATransform3D( m11: 0.891007, m12: 0.45399, m13: 0, m14: 0, m21: -0.45399, m22: 0.891007, m23: 0, m24: 0, m31: 0, m32: 0, m33: 1, m34: 0, m41: 13.2, m42: -7.2, m43: 0, m44: 1 ), CATransform3D( m11: 0.891007, m12: 0.45399, m13: 0, m14: 0, m21: -0.45399, m22: 0.891007, m23: 0, m24: 0, m31: 0, m32: 0, m33: 1, m34: 0, m41: 13.2, m42: -7.2, m43: 0, m44: 1 ), CATransform3DIdentity ]
                    transformAnimation3.timingFunctions = [ CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut), CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut), CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut), CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut), CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut) ]
                    transformAnimation3.calculationMode = kCAAnimationLinear

                rightEyebrowLayer.path = rightEyebrowPath
                rightEyebrowLayer.fillColor = bordercolor.cgColor
                rightEyebrowLayer.strokeColor = strokecolor.cgColor
                rightEyebrowLayer.fillRule = kCAFillRuleEvenOdd
                rightEyebrowLayer.lineCap = kCALineCapRound
                rightEyebrowLayer.lineJoin = kCALineJoinRound
                rightEyebrowLayer.lineWidth = 5

                faceLayer.addSublayer(rightEyebrowLayer)

                // Left Eyebrow
                //
                let leftEyebrowLayer = CAShapeLayer()
                leftEyebrowLayer.name = "Left Eyebrow"
                leftEyebrowLayer.bounds = CGRect(x: 0, y: 0, width: 21, height: 10)
                leftEyebrowLayer.position = CGPoint(x: 16, y: 8)
                leftEyebrowLayer.anchorPoint = CGPoint(x: 0, y: 0)
                leftEyebrowLayer.contentsGravity = kCAGravityCenter

                    // Left Eyebrow Animations
                    //

                    // transform
                    //
                    let transformAnimation4 = CAKeyframeAnimation()
                    transformAnimation4.beginTime = 0.748733
                    transformAnimation4.duration = 2.254332
                    transformAnimation4.fillMode = kCAFillModeForwards
                    transformAnimation4.isRemovedOnCompletion = false
                    transformAnimation4.keyPath = "transform"
                    transformAnimation4.values = [ CATransform3DIdentity, CATransform3D( m11: 0.961262, m12: -0.275637, m13: 0, m14: 0, m21: 0.275637, m22: 0.961262, m23: 0, m24: 0, m31: 0, m32: 0, m33: 1, m34: 0, m41: -12.5, m42: -6.7, m43: 0, m44: 1 ), CATransform3D( m11: 0.961262, m12: -0.275637, m13: 0, m14: 0, m21: 0.275637, m22: 0.961262, m23: 0, m24: 0, m31: 0, m32: 0, m33: 1, m34: 0, m41: -12.5, m42: -6.7, m43: 0, m44: 1 ), CATransform3D( m11: 1, m12: 0, m13: 0, m14: 0, m21: 0, m22: 1, m23: 0, m24: 0, m31: 0, m32: 0, m33: 1, m34: 0, m41: 9.8, m42: 2.4, m43: 0, m44: 1 ), CATransform3D( m11: 1, m12: 0, m13: 0, m14: 0, m21: 0, m22: 1, m23: 0, m24: 0, m31: 0, m32: 0, m33: 1, m34: 0, m41: 9.8, m42: 2.4, m43: 0, m44: 1 ), CATransform3DIdentity ]
                    transformAnimation4.timingFunctions = [ CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut), CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut), CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut), CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut), CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut) ]
                    transformAnimation4.calculationMode = kCAAnimationLinear

                leftEyebrowLayer.path = leftEyebrowPath
                leftEyebrowLayer.fillColor = bordercolor.cgColor
                leftEyebrowLayer.strokeColor = strokecolor.cgColor
                leftEyebrowLayer.fillRule = kCAFillRuleEvenOdd
                leftEyebrowLayer.lineCap = kCALineCapRound
                leftEyebrowLayer.lineJoin = kCALineJoinRound
                leftEyebrowLayer.lineWidth = 5

                faceLayer.addSublayer(leftEyebrowLayer)

            amazingLayer.addSublayer(faceLayer)

        self.layer.addSublayer(amazingLayer)

        // Layer Instance Assignments
        //
        self.faceLayer = faceLayer
        self.leftEyebrowLayer = leftEyebrowLayer
        self.rightEyebrowLayer = rightEyebrowLayer
        self.leftEyeLayer = leftEyeLayer
        self.rightEyeLayer = rightEyeLayer
        self.mouthLayer = mouthLayer

        // Animation Instance Assignments
        //
        self.sublayertransformAnimation = sublayertransformAnimation
        self.transformAnimation = transformAnimation
        self.transformAnimation1 = transformAnimation1
        self.blinkTransformScaleYAnimation = blinkTransformScaleYAnimation
        self.blinkTransformScaleYAnimation1 = blinkTransformScaleYAnimation1
        self.blinkTransformScaleYAnimation2 = blinkTransformScaleYAnimation2
        self.transformAnimation2 = transformAnimation2
        self.blinkTransformScaleYAnimation3 = blinkTransformScaleYAnimation3
        self.blinkTransformScaleYAnimation4 = blinkTransformScaleYAnimation4
        self.blinkTransformScaleYAnimation5 = blinkTransformScaleYAnimation5
        self.transformAnimation3 = transformAnimation3
        self.transformAnimation4 = transformAnimation4




    }

    // MARK: - Responder

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        guard let location = touches.first?.location(in: self.superview),
              let hitLayer = self.layer.presentation()?.hitTest(location) else { return }

        print("Layer \(hitLayer.name ?? String(describing: hitLayer)) was tapped.")

        // Call action methods
        //
        self.animateEmojiAction(self)
    }

    // MARK: - Actions

    @IBAction func animateEmojiAction(_ sender: Any?)
    {
        self.sublayertransformAnimation!.beginTime = self.faceLayer!.convertTime(CACurrentMediaTime(), from: nil) + 0.748733
        self.faceLayer?.add(self.sublayertransformAnimation!, forKey: "sublayertransformAnimation")

        self.transformAnimation4!.beginTime = self.leftEyebrowLayer!.convertTime(CACurrentMediaTime(), from: nil) + 0.748733
        self.leftEyebrowLayer?.add(self.transformAnimation4!, forKey: "transformAnimation4")

        self.transformAnimation3!.beginTime = self.rightEyebrowLayer!.convertTime(CACurrentMediaTime(), from: nil) + 0.745668
        self.rightEyebrowLayer?.add(self.transformAnimation3!, forKey: "transformAnimation3")

        self.transformAnimation2!.beginTime = self.leftEyeLayer!.convertTime(CACurrentMediaTime(), from: nil) + 0.745668
        self.leftEyeLayer?.add(self.transformAnimation2!, forKey: "transformAnimation2")

        self.blinkTransformScaleYAnimation3!.beginTime = self.leftEyeLayer!.convertTime(CACurrentMediaTime(), from: nil) + 0.000001
        self.leftEyeLayer?.add(self.blinkTransformScaleYAnimation3!, forKey: "blinkTransformScaleYAnimation3")

        self.blinkTransformScaleYAnimation4!.beginTime = self.leftEyeLayer!.convertTime(CACurrentMediaTime(), from: nil) + 1.595933
        self.leftEyeLayer?.add(self.blinkTransformScaleYAnimation4!, forKey: "blinkTransformScaleYAnimation4")

        self.blinkTransformScaleYAnimation5!.beginTime = self.leftEyeLayer!.convertTime(CACurrentMediaTime(), from: nil) + 2.189
        self.leftEyeLayer?.add(self.blinkTransformScaleYAnimation5!, forKey: "blinkTransformScaleYAnimation5")

        self.transformAnimation1!.beginTime = self.rightEyeLayer!.convertTime(CACurrentMediaTime(), from: nil) + 0.745668
        self.rightEyeLayer?.add(self.transformAnimation1!, forKey: "transformAnimation1")

        self.blinkTransformScaleYAnimation!.beginTime = self.rightEyeLayer!.convertTime(CACurrentMediaTime(), from: nil) + 0.000001
        self.rightEyeLayer?.add(self.blinkTransformScaleYAnimation!, forKey: "blinkTransformScaleYAnimation")

        self.blinkTransformScaleYAnimation1!.beginTime = self.rightEyeLayer!.convertTime(CACurrentMediaTime(), from: nil) + 1.595933
        self.rightEyeLayer?.add(self.blinkTransformScaleYAnimation1!, forKey: "blinkTransformScaleYAnimation1")

        self.blinkTransformScaleYAnimation2!.beginTime = self.rightEyeLayer!.convertTime(CACurrentMediaTime(), from: nil) + 2.189
        self.rightEyeLayer?.add(self.blinkTransformScaleYAnimation2!, forKey: "blinkTransformScaleYAnimation2")

        self.transformAnimation!.beginTime = self.mouthLayer!.convertTime(CACurrentMediaTime(), from: nil) + 0.745668
        self.mouthLayer?.add(self.transformAnimation!, forKey: "transformAnimation")
    }
}
