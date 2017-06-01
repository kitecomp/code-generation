//
//  LoveButtonView.swift
//  Exported from Kite Compositor for Mac 1.4
//
//  Created on 5/30/17, 6:27 PM.
//


import UIKit

class LoveButtonView: UIView
{
    // MARK: - Properties

    private var filledCircleLayer: CALayer?
    private var whiteCircleLayer: CALayer?
    private var lovedHeartLayer: CAShapeLayer?
    private var unlovedHeartLayer: CAShapeLayer?
    private var particleNearLayer: CALayer?
    private var particleFarLayer: CALayer?
    private var particleNearLayer1: CALayer?
    private var particleFarLayer1: CALayer?
    private var particleNearLayer2: CALayer?
    private var particleFarLayer2: CALayer?
    private var particleNearLayer3: CALayer?
    private var particleFarLayer3: CALayer?
    private var particleNearLayer4: CALayer?
    private var particleFarLayer4: CALayer?
    private var particleNearLayer5: CALayer?
    private var particleFarLayer5: CALayer?
    private var particleNearLayer6: CALayer?
    private var particleFarLayer6: CALayer?

    private var explodeAnimation: CAAnimationGroup?
    private var explodeAnimation1: CAAnimationGroup?
    private var explodeAnimation2: CAAnimationGroup?
    private var explodeAnimation3: CAAnimationGroup?
    private var explodeAnimation4: CAAnimationGroup?
    private var explodeAnimation5: CAAnimationGroup?
    private var explodeAnimation6: CAAnimationGroup?
    private var explodeAnimation7: CAAnimationGroup?
    private var explodeAnimation8: CAAnimationGroup?
    private var explodeAnimation9: CAAnimationGroup?
    private var explodeAnimation10: CAAnimationGroup?
    private var explodeAnimation11: CAAnimationGroup?
    private var explodeAnimation12: CAAnimationGroup?
    private var explodeAnimation13: CAAnimationGroup?
    private var scaleUpTransformScaleAnimation: CABasicAnimation?
    private var scaleDownTransformScaleAnimation: CABasicAnimation?
    private var backgroundcolorAnimation14: CABasicAnimation?
    private var scaleUpTransformScaleAnimation1: CABasicAnimation?
    private var scaleDownTransformScaleAnimation1: CABasicAnimation?
    private var loveScaleAnimation: CASpringAnimation?
    private var hideAnimation: CABasicAnimation?
    private var showAnimation: CABasicAnimation?
    private var hideAnimation1: CABasicAnimation?
    private var showAnimation1: CABasicAnimation?
    private var hoverFillcolorAnimation: CABasicAnimation?
    private var unloveFillcolorAnimation: CABasicAnimation?
    private var unloveScaleAnimation: CAKeyframeAnimation?

    // MARK: - Initialization

    init()
    {
        super.init(frame: CGRect(x: 0, y: 0, width: 257.0, height: 257.0))
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
        let backgroundcolor = UIColor(red: 0.69, green: 0.069, blue: 0.447421875, alpha: 0.0)
        let bordercolor = UIColor(red: 0.89, green: 0.089, blue: 0.577109375, alpha: 0.0)
        let backgroundcolor1 = UIColor(red: 0.6235294118, green: 0.9137254902, blue: 0.7882352941, alpha: 1.0)
        let bordercolor1 = UIColor(red: 0.81, green: 0.1944, blue: 0.22325625, alpha: 1.0)
        let color = UIColor(red: 0.7960784314, green: 0.6156862745, blue: 0.9333333333, alpha: 1.0)
        let color1 = UIColor(red: 0.8032157421, green: 0.6026877761, blue: 0.9419904351, alpha: 1.0)
        let color2 = UIColor(red: 0.6392156863, green: 0.8509803922, blue: 0.9843137255, alpha: 1.0)
        let color3 = UIColor(red: 0.9450980392, green: 0.6117647059, blue: 0.7058823529, alpha: 1.0)
        let backgroundcolor2 = UIColor(red: 0.862745098, green: 0.2156862745, blue: 0.4235294118, alpha: 1.0)
        let bordercolor2 = UIColor(red: 0.838546875, green: 0.2314, blue: 0.89, alpha: 0.0)
        let backgroundcolor3 = UIColor.white
        let strokecolor = UIColor(red: 0.670588235294118, green: 0.317647058823529, blue: 0.435294117647059, alpha: 0.3134765625)
        let color4 = UIColor(red: 0.8855973482, green: 0.9057219028, blue: 0.9223192334, alpha: 1.0)
        let color5 = UIColor(red: 0.701960784313725, green: 0.752941176470588, blue: 0.796078431372549, alpha: 1.0)
        let strokecolor1 = UIColor(red: 0.670588235294118, green: 0.317647058823529, blue: 0.435294117647059, alpha: 0.0)

        // Paths
        //
        let positionanimationPath = CGMutablePath()
        positionanimationPath.move(to: CGPoint(x: 7.0, y: 6.0))
        positionanimationPath.addCurve(to: CGPoint(x: 21.0, y: -8.0), control1: CGPoint(x: 16.0, y: 6.0), control2: CGPoint(x: 21.0, y: -8.0))

        let positionanimationPath1 = CGMutablePath()
        positionanimationPath1.move(to: CGPoint(x: 8.0, y: 6.0))
        positionanimationPath1.addCurve(to: CGPoint(x: 30.0, y: -4.0), control1: CGPoint(x: 15.0, y: -4.0), control2: CGPoint(x: 30.0, y: -4.0))

        let positionanimationPath2 = CGMutablePath()
        positionanimationPath2.move(to: CGPoint(x: 7.0, y: 10.0))
        positionanimationPath2.addCurve(to: CGPoint(x: 7.0, y: -14.0), control1: CGPoint(x: 1.0, y: -2.0), control2: CGPoint(x: 7.0, y: -14.0))

        let positionanimationPath3 = CGMutablePath()
        positionanimationPath3.move(to: CGPoint(x: 9.0, y: 0.0))
        positionanimationPath3.addCurve(to: CGPoint(x: 14.0, y: -18.0), control1: CGPoint(x: 9.0, y: 0.0), control2: CGPoint(x: 15.0, y: -9.0))

        let lovedHeartPath = CGMutablePath()
        lovedHeartPath.move(to: CGPoint(x: 3.91599988937378, y: 0.5))
        lovedHeartPath.addCurve(to: CGPoint(x: 7.16599988937378, y: 2.5), control1: CGPoint(x: 5.66400003433228, y: 0.5), control2: CGPoint(x: 6.56599998474121, y: 2.5))
        lovedHeartPath.addCurve(to: CGPoint(x: 10.4139995574951, y: 0.5), control1: CGPoint(x: 7.76399993896484, y: 2.5), control2: CGPoint(x: 8.66600036621094, y: 0.5))
        lovedHeartPath.addCurve(to: CGPoint(x: 7.16400003433228, y: 12.5), control1: CGPoint(x: 12.1630001068115, y: 0.5), control2: CGPoint(x: 18.6639995574951, y: 4.75))
        lovedHeartPath.addCurve(to: CGPoint(x: 3.91599988937378, y: 0.5), control1: CGPoint(x: -4.33400011062622, y: 4.75), control2: CGPoint(x: 2.16799998283386, y: 0.5))
        lovedHeartPath.closeSubpath()
        lovedHeartPath.move(to: CGPoint(x: 3.91599988937378, y: 0.5))

        let unlovedHeartPath = CGMutablePath()
        unlovedHeartPath.move(to: CGPoint(x: 3.91599988937378, y: 0.5))
        unlovedHeartPath.addCurve(to: CGPoint(x: 7.16599988937378, y: 2.5), control1: CGPoint(x: 5.66400003433228, y: 0.5), control2: CGPoint(x: 6.56599998474121, y: 2.5))
        unlovedHeartPath.addCurve(to: CGPoint(x: 10.4139995574951, y: 0.5), control1: CGPoint(x: 7.76399993896484, y: 2.5), control2: CGPoint(x: 8.66600036621094, y: 0.5))
        unlovedHeartPath.addCurve(to: CGPoint(x: 7.16400003433228, y: 12.5), control1: CGPoint(x: 12.1630001068115, y: 0.5), control2: CGPoint(x: 18.6639995574951, y: 4.75))
        unlovedHeartPath.addCurve(to: CGPoint(x: 3.91599988937378, y: 0.5), control1: CGPoint(x: -4.33400011062622, y: 4.75), control2: CGPoint(x: 2.16799998283386, y: 0.5))
        unlovedHeartPath.closeSubpath()
        unlovedHeartPath.move(to: CGPoint(x: 3.91599988937378, y: 0.5))

        // Love Button
        //
        let loveButtonLayer = CALayer()
        loveButtonLayer.name = "Love Button"
        loveButtonLayer.bounds = CGRect(x: 0.0, y: 0.0, width: 36.0, height: 16.0)
        loveButtonLayer.position = CGPoint(x: 96.0, y: 99.0)
        loveButtonLayer.anchorPoint = CGPoint(x: 0.0, y: 0.0)
        loveButtonLayer.contentsGravity = kCAGravityCenter
        loveButtonLayer.backgroundColor = backgroundcolor.cgColor
        loveButtonLayer.borderColor = bordercolor.cgColor
        loveButtonLayer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        loveButtonLayer.speed = 1.5
        loveButtonLayer.fillMode = kCAFillModeForwards
        loveButtonLayer.transform = CATransform3D( m11: 5.0, m12: 0.0, m13: 0.0, m14: 0.0,
                                                   m21: 0.0, m22: 5.0, m23: 0.0, m24: 0.0,
                                                   m31: 0.0, m32: 0.0, m33: 1.0, m34: 0.0,
                                                   m41: 0.0, m42: 0.0, m43: 0.0, m44: 1.0 )

            // Love Button Sublayers
            //

            // Particle Near 1
            //
            let particleNearLayer = CALayer()
            particleNearLayer.name = "Particle Near 1"
            particleNearLayer.bounds = CGRect(x: 0.0, y: 0.0, width: 3.5, height: 3.5)
            particleNearLayer.position = CGPoint(x: 1.0, y: -3.0)
            particleNearLayer.contentsGravity = kCAGravityCenter
            particleNearLayer.opacity = 0.0
            particleNearLayer.backgroundColor = backgroundcolor1.cgColor
            particleNearLayer.cornerRadius = 1.75
            particleNearLayer.borderColor = bordercolor1.cgColor
            particleNearLayer.shadowOffset = CGSize(width: 0.0, height: 1.0)
            particleNearLayer.fillMode = kCAFillModeForwards

                // Particle Near 1 Animations
                //

                // Explode
                //
                let explodeAnimation = CAAnimationGroup()
                explodeAnimation.beginTime = 0.308730339208418
                explodeAnimation.duration = 1.1677
                explodeAnimation.fillMode = kCAFillModeForwards
                explodeAnimation.isRemovedOnCompletion = false
                explodeAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)

                    // Explode Animations
                    //
                    // position
                    //
                    let positionAnimation = CABasicAnimation()
                    positionAnimation.beginTime = 9.99999999973245e-07
                    positionAnimation.duration = 0.852
                    positionAnimation.fillMode = kCAFillModeForwards
                    positionAnimation.isRemovedOnCompletion = false
                    positionAnimation.timingFunction = CAMediaTimingFunction(controlPoints: 0.0, 0.0, 0.0188533, 1.08151)
                    positionAnimation.keyPath = "position"
                    positionAnimation.toValue = CGPoint(x: -9.0, y: -5.0)
                    positionAnimation.fromValue = CGPoint(x: 9.0, y: 8.0)
                    // Scale Up
                    //
                    let scaleUpAnimation = CABasicAnimation()
                    scaleUpAnimation.beginTime = 9.99999999973245e-07
                    scaleUpAnimation.duration = 0.0507267211294417
                    scaleUpAnimation.fillMode = kCAFillModeForwards
                    scaleUpAnimation.isRemovedOnCompletion = false
                    scaleUpAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
                    scaleUpAnimation.keyPath = "transform.scale"
                    scaleUpAnimation.toValue = 1
                    // Scale Down
                    //
                    let scaleDownAnimation = CABasicAnimation()
                    scaleDownAnimation.beginTime = 0.396320669416242
                    scaleDownAnimation.duration = 0.455680330583758
                    scaleDownAnimation.fillMode = kCAFillModeForwards
                    scaleDownAnimation.isRemovedOnCompletion = false
                    scaleDownAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseIn)
                    scaleDownAnimation.keyPath = "transform.scale"
                    scaleDownAnimation.toValue = 0
                    scaleDownAnimation.fromValue = 1
                    // backgroundColor
                    //
                    let backgroundcolorAnimation = CAKeyframeAnimation()
                    backgroundcolorAnimation.beginTime = 9.99999999973245e-07
                    backgroundcolorAnimation.duration = 0.851998730964466
                    backgroundcolorAnimation.fillMode = kCAFillModeForwards
                    backgroundcolorAnimation.isRemovedOnCompletion = false
                    backgroundcolorAnimation.keyPath = "backgroundColor"
                    backgroundcolorAnimation.values = [ backgroundcolor1.cgColor, color.cgColor ]
                    backgroundcolorAnimation.calculationMode = kCAAnimationLinear
                    // opacity
                    //
                    let opacityAnimation = CABasicAnimation()
                    opacityAnimation.beginTime = 9.99999999973245e-07
                    opacityAnimation.duration = 0.124960342639594
                    opacityAnimation.fillMode = kCAFillModeForwards
                    opacityAnimation.isRemovedOnCompletion = false
                    opacityAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                    opacityAnimation.keyPath = "opacity"
                    opacityAnimation.toValue = 1
                    opacityAnimation.fromValue = 0
                explodeAnimation.animations = [ positionAnimation, scaleUpAnimation, scaleDownAnimation, backgroundcolorAnimation, opacityAnimation ]


            loveButtonLayer.addSublayer(particleNearLayer)

            // Particle Far 1
            //
            let particleFarLayer = CALayer()
            particleFarLayer.name = "Particle Far 1"
            particleFarLayer.bounds = CGRect(x: 0.0, y: 0.0, width: 3.5, height: 3.5)
            particleFarLayer.position = CGPoint(x: -1.0, y: -1.0)
            particleFarLayer.contentsGravity = kCAGravityCenter
            particleFarLayer.opacity = 0.0
            particleFarLayer.backgroundColor = backgroundcolor1.cgColor
            particleFarLayer.cornerRadius = 1.75
            particleFarLayer.borderColor = bordercolor1.cgColor
            particleFarLayer.shadowOffset = CGSize(width: 0.0, height: 1.0)
            particleFarLayer.fillMode = kCAFillModeForwards

                // Particle Far 1 Animations
                //

                // Explode
                //
                let explodeAnimation1 = CAAnimationGroup()
                explodeAnimation1.beginTime = 0.409379241334053
                explodeAnimation1.duration = 1.3292277607868
                explodeAnimation1.fillMode = kCAFillModeForwards
                explodeAnimation1.isRemovedOnCompletion = false
                explodeAnimation1.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)

                    // Explode Animations
                    //
                    // position
                    //
                    let positionAnimation1 = CABasicAnimation()
                    positionAnimation1.beginTime = 1.00000000001488e-06
                    positionAnimation1.duration = 0.852
                    positionAnimation1.fillMode = kCAFillModeForwards
                    positionAnimation1.isRemovedOnCompletion = false
                    positionAnimation1.timingFunction = CAMediaTimingFunction(controlPoints: 0.0, 0.0, 0.0188533, 1.08151)
                    positionAnimation1.keyPath = "position"
                    positionAnimation1.toValue = CGPoint(x: -10.0, y: -11.0)
                    positionAnimation1.fromValue = CGPoint(x: 11.0, y: 3.0)
                    // Scale Up
                    //
                    let scaleUpAnimation1 = CABasicAnimation()
                    scaleUpAnimation1.beginTime = 9.99999999973245e-07
                    scaleUpAnimation1.duration = 0.0506969781091371
                    scaleUpAnimation1.fillMode = kCAFillModeForwards
                    scaleUpAnimation1.isRemovedOnCompletion = false
                    scaleUpAnimation1.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
                    scaleUpAnimation1.keyPath = "transform.scale"
                    scaleUpAnimation1.toValue = 1
                    // Scale Down
                    //
                    let scaleDownAnimation1 = CABasicAnimation()
                    scaleDownAnimation1.beginTime = 0.573433113578688
                    scaleDownAnimation1.duration = 0.4642
                    scaleDownAnimation1.fillMode = kCAFillModeForwards
                    scaleDownAnimation1.isRemovedOnCompletion = false
                    scaleDownAnimation1.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseIn)
                    scaleDownAnimation1.keyPath = "transform.scale"
                    scaleDownAnimation1.toValue = 0
                    scaleDownAnimation1.fromValue = 1
                    // backgroundColor
                    //
                    let backgroundcolorAnimation1 = CAKeyframeAnimation()
                    backgroundcolorAnimation1.beginTime = 9.99999999973245e-07
                    backgroundcolorAnimation1.duration = 0.852
                    backgroundcolorAnimation1.fillMode = kCAFillModeForwards
                    backgroundcolorAnimation1.isRemovedOnCompletion = false
                    backgroundcolorAnimation1.keyPath = "backgroundColor"
                    backgroundcolorAnimation1.values = [ backgroundcolor1.cgColor, color.cgColor ]
                    backgroundcolorAnimation1.calculationMode = kCAAnimationLinear
                    // opacity
                    //
                    let opacityAnimation1 = CABasicAnimation()
                    opacityAnimation1.beginTime = 1.00000000001488e-06
                    opacityAnimation1.duration = 0.124960342639594
                    opacityAnimation1.fillMode = kCAFillModeForwards
                    opacityAnimation1.isRemovedOnCompletion = false
                    opacityAnimation1.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                    opacityAnimation1.keyPath = "opacity"
                    opacityAnimation1.toValue = 1
                    opacityAnimation1.fromValue = 0
                explodeAnimation1.animations = [ positionAnimation1, scaleUpAnimation1, scaleDownAnimation1, backgroundcolorAnimation1, opacityAnimation1 ]


            loveButtonLayer.addSublayer(particleFarLayer)

            // Particle Near 2
            //
            let particleNearLayer1 = CALayer()
            particleNearLayer1.name = "Particle Near 2"
            particleNearLayer1.bounds = CGRect(x: 0.0, y: 0.0, width: 3.5, height: 3.5)
            particleNearLayer1.position = CGPoint(x: -5.0, y: 2.0)
            particleNearLayer1.contentsGravity = kCAGravityCenter
            particleNearLayer1.opacity = 0.0
            particleNearLayer1.backgroundColor = backgroundcolor1.cgColor
            particleNearLayer1.cornerRadius = 1.75
            particleNearLayer1.borderColor = bordercolor1.cgColor
            particleNearLayer1.shadowOffset = CGSize(width: 0.0, height: 1.0)
            particleNearLayer1.fillMode = kCAFillModeForwards

                // Particle Near 2 Animations
                //

                // Explode
                //
                let explodeAnimation2 = CAAnimationGroup()
                explodeAnimation2.beginTime = 0.308730339208418
                explodeAnimation2.duration = 1.16769214847716
                explodeAnimation2.fillMode = kCAFillModeForwards
                explodeAnimation2.isRemovedOnCompletion = false
                explodeAnimation2.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)

                    // Explode Animations
                    //
                    // position
                    //
                    let positionAnimation2 = CABasicAnimation()
                    positionAnimation2.beginTime = 9.99999999973245e-07
                    positionAnimation2.duration = 0.852
                    positionAnimation2.fillMode = kCAFillModeForwards
                    positionAnimation2.isRemovedOnCompletion = false
                    positionAnimation2.timingFunction = CAMediaTimingFunction(controlPoints: 0.0, 0.0, 0.0188533, 1.08151)
                    positionAnimation2.keyPath = "position"
                    positionAnimation2.toValue = CGPoint(x: -11.0, y: 12.0)
                    positionAnimation2.fromValue = CGPoint(x: 14.0, y: 7.0)
                    // Scale Up
                    //
                    let scaleUpAnimation2 = CABasicAnimation()
                    scaleUpAnimation2.beginTime = 9.99999999973245e-07
                    scaleUpAnimation2.duration = 0.0507267211294417
                    scaleUpAnimation2.fillMode = kCAFillModeForwards
                    scaleUpAnimation2.isRemovedOnCompletion = false
                    scaleUpAnimation2.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
                    scaleUpAnimation2.keyPath = "transform.scale"
                    scaleUpAnimation2.toValue = 1
                    // Scale Down
                    //
                    let scaleDownAnimation2 = CABasicAnimation()
                    scaleDownAnimation2.beginTime = 0.396320669416242
                    scaleDownAnimation2.duration = 0.455680330583758
                    scaleDownAnimation2.fillMode = kCAFillModeForwards
                    scaleDownAnimation2.isRemovedOnCompletion = false
                    scaleDownAnimation2.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseIn)
                    scaleDownAnimation2.keyPath = "transform.scale"
                    scaleDownAnimation2.toValue = 0
                    scaleDownAnimation2.fromValue = 1
                    // backgroundColor
                    //
                    let backgroundcolorAnimation2 = CAKeyframeAnimation()
                    backgroundcolorAnimation2.beginTime = 9.99999999973245e-07
                    backgroundcolorAnimation2.duration = 0.851998730964466
                    backgroundcolorAnimation2.fillMode = kCAFillModeForwards
                    backgroundcolorAnimation2.isRemovedOnCompletion = false
                    backgroundcolorAnimation2.keyPath = "backgroundColor"
                    backgroundcolorAnimation2.values = [ color1.cgColor, backgroundcolor1.cgColor ]
                    backgroundcolorAnimation2.calculationMode = kCAAnimationLinear
                    // opacity
                    //
                    let opacityAnimation2 = CABasicAnimation()
                    opacityAnimation2.beginTime = 9.99999999973245e-07
                    opacityAnimation2.duration = 0.124960342639594
                    opacityAnimation2.fillMode = kCAFillModeForwards
                    opacityAnimation2.isRemovedOnCompletion = false
                    opacityAnimation2.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                    opacityAnimation2.keyPath = "opacity"
                    opacityAnimation2.toValue = 1
                    opacityAnimation2.fromValue = 0
                explodeAnimation2.animations = [ positionAnimation2, scaleUpAnimation2, scaleDownAnimation2, backgroundcolorAnimation2, opacityAnimation2 ]


            loveButtonLayer.addSublayer(particleNearLayer1)

            // Particle Far 2
            //
            let particleFarLayer1 = CALayer()
            particleFarLayer1.name = "Particle Far 2"
            particleFarLayer1.bounds = CGRect(x: 0.0, y: 0.0, width: 3.5, height: 3.5)
            particleFarLayer1.position = CGPoint(x: -6.0, y: 14.0)
            particleFarLayer1.contentsGravity = kCAGravityCenter
            particleFarLayer1.opacity = 0.0
            particleFarLayer1.backgroundColor = backgroundcolor1.cgColor
            particleFarLayer1.cornerRadius = 1.75
            particleFarLayer1.borderColor = bordercolor1.cgColor
            particleFarLayer1.shadowOffset = CGSize(width: 0.0, height: 1.0)
            particleFarLayer1.fillMode = kCAFillModeForwards

                // Particle Far 2 Animations
                //

                // Explode
                //
                let explodeAnimation3 = CAAnimationGroup()
                explodeAnimation3.beginTime = 0.35945806033786
                explodeAnimation3.duration = 1.3292
                explodeAnimation3.fillMode = kCAFillModeForwards
                explodeAnimation3.isRemovedOnCompletion = false
                explodeAnimation3.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)

                    // Explode Animations
                    //
                    // position
                    //
                    let positionAnimation3 = CABasicAnimation()
                    positionAnimation3.beginTime = 1.00000000001488e-06
                    positionAnimation3.duration = 0.852
                    positionAnimation3.fillMode = kCAFillModeForwards
                    positionAnimation3.isRemovedOnCompletion = false
                    positionAnimation3.timingFunction = CAMediaTimingFunction(controlPoints: 0.0, 0.0, 0.0188533, 1.08151)
                    positionAnimation3.keyPath = "position"
                    positionAnimation3.toValue = CGPoint(x: -17.0, y: 9.0)
                    positionAnimation3.fromValue = CGPoint(x: 20.0, y: 0.0)
                    // Scale Up
                    //
                    let scaleUpAnimation3 = CABasicAnimation()
                    scaleUpAnimation3.beginTime = 9.99999999973245e-07
                    scaleUpAnimation3.duration = 0.0506969781091371
                    scaleUpAnimation3.fillMode = kCAFillModeForwards
                    scaleUpAnimation3.isRemovedOnCompletion = false
                    scaleUpAnimation3.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
                    scaleUpAnimation3.keyPath = "transform.scale"
                    scaleUpAnimation3.toValue = 1
                    // Scale Down
                    //
                    let scaleDownAnimation3 = CABasicAnimation()
                    scaleDownAnimation3.beginTime = 0.573433113578679
                    scaleDownAnimation3.duration = 0.4642
                    scaleDownAnimation3.fillMode = kCAFillModeForwards
                    scaleDownAnimation3.isRemovedOnCompletion = false
                    scaleDownAnimation3.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseIn)
                    scaleDownAnimation3.keyPath = "transform.scale"
                    scaleDownAnimation3.toValue = 0
                    scaleDownAnimation3.fromValue = 1
                    // backgroundColor
                    //
                    let backgroundcolorAnimation3 = CAKeyframeAnimation()
                    backgroundcolorAnimation3.beginTime = 9.99999999973245e-07
                    backgroundcolorAnimation3.duration = 0.852
                    backgroundcolorAnimation3.fillMode = kCAFillModeForwards
                    backgroundcolorAnimation3.isRemovedOnCompletion = false
                    backgroundcolorAnimation3.keyPath = "backgroundColor"
                    backgroundcolorAnimation3.values = [ color2.cgColor, backgroundcolor1.cgColor ]
                    backgroundcolorAnimation3.calculationMode = kCAAnimationLinear
                    // opacity
                    //
                    let opacityAnimation3 = CABasicAnimation()
                    opacityAnimation3.beginTime = 1.00000000001488e-06
                    opacityAnimation3.duration = 0.124960342639594
                    opacityAnimation3.fillMode = kCAFillModeForwards
                    opacityAnimation3.isRemovedOnCompletion = false
                    opacityAnimation3.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                    opacityAnimation3.keyPath = "opacity"
                    opacityAnimation3.toValue = 1
                    opacityAnimation3.fromValue = 0
                explodeAnimation3.animations = [ positionAnimation3, scaleUpAnimation3, scaleDownAnimation3, backgroundcolorAnimation3, opacityAnimation3 ]


            loveButtonLayer.addSublayer(particleFarLayer1)

            // Particle Near 3
            //
            let particleNearLayer2 = CALayer()
            particleNearLayer2.name = "Particle Near 3"
            particleNearLayer2.bounds = CGRect(x: 0.0, y: 0.0, width: 3.5, height: 3.5)
            particleNearLayer2.position = CGPoint(x: -5.0, y: 2.0)
            particleNearLayer2.contentsGravity = kCAGravityCenter
            particleNearLayer2.opacity = 0.0
            particleNearLayer2.backgroundColor = backgroundcolor1.cgColor
            particleNearLayer2.cornerRadius = 1.75
            particleNearLayer2.borderColor = bordercolor1.cgColor
            particleNearLayer2.shadowOffset = CGSize(width: 0.0, height: 1.0)
            particleNearLayer2.fillMode = kCAFillModeForwards

                // Particle Near 3 Animations
                //

                // Explode
                //
                let explodeAnimation4 = CAAnimationGroup()
                explodeAnimation4.beginTime = 0.308730339208418
                explodeAnimation4.duration = 1.16769214847716
                explodeAnimation4.fillMode = kCAFillModeForwards
                explodeAnimation4.isRemovedOnCompletion = false
                explodeAnimation4.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)

                    // Explode Animations
                    //
                    // position
                    //
                    let positionAnimation4 = CABasicAnimation()
                    positionAnimation4.beginTime = 9.99999999973245e-07
                    positionAnimation4.duration = 0.852
                    positionAnimation4.fillMode = kCAFillModeForwards
                    positionAnimation4.isRemovedOnCompletion = false
                    positionAnimation4.timingFunction = CAMediaTimingFunction(controlPoints: 0.0, 0.0, 0.0188533, 1.08151)
                    positionAnimation4.keyPath = "position"
                    positionAnimation4.toValue = CGPoint(x: 0.0, y: 24.0)
                    positionAnimation4.fromValue = CGPoint(x: 18.0, y: 1.0)
                    // Scale Up
                    //
                    let scaleUpAnimation4 = CABasicAnimation()
                    scaleUpAnimation4.beginTime = 9.99999999973245e-07
                    scaleUpAnimation4.duration = 0.0507267211294417
                    scaleUpAnimation4.fillMode = kCAFillModeForwards
                    scaleUpAnimation4.isRemovedOnCompletion = false
                    scaleUpAnimation4.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
                    scaleUpAnimation4.keyPath = "transform.scale"
                    scaleUpAnimation4.toValue = 1
                    // Scale Down
                    //
                    let scaleDownAnimation4 = CABasicAnimation()
                    scaleDownAnimation4.beginTime = 0.396320669416242
                    scaleDownAnimation4.duration = 0.455680330583758
                    scaleDownAnimation4.fillMode = kCAFillModeForwards
                    scaleDownAnimation4.isRemovedOnCompletion = false
                    scaleDownAnimation4.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseIn)
                    scaleDownAnimation4.keyPath = "transform.scale"
                    scaleDownAnimation4.toValue = 0
                    scaleDownAnimation4.fromValue = 1
                    // backgroundColor
                    //
                    let backgroundcolorAnimation4 = CAKeyframeAnimation()
                    backgroundcolorAnimation4.beginTime = 9.99999999973245e-07
                    backgroundcolorAnimation4.duration = 0.851998730964466
                    backgroundcolorAnimation4.fillMode = kCAFillModeForwards
                    backgroundcolorAnimation4.isRemovedOnCompletion = false
                    backgroundcolorAnimation4.keyPath = "backgroundColor"
                    backgroundcolorAnimation4.values = [ color2.cgColor, backgroundcolor1.cgColor, color1.cgColor ]
                    backgroundcolorAnimation4.calculationMode = kCAAnimationLinear
                    // opacity
                    //
                    let opacityAnimation4 = CABasicAnimation()
                    opacityAnimation4.beginTime = 9.99999999973245e-07
                    opacityAnimation4.duration = 0.124960342639594
                    opacityAnimation4.fillMode = kCAFillModeForwards
                    opacityAnimation4.isRemovedOnCompletion = false
                    opacityAnimation4.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                    opacityAnimation4.keyPath = "opacity"
                    opacityAnimation4.toValue = 1
                    opacityAnimation4.fromValue = 0
                explodeAnimation4.animations = [ positionAnimation4, scaleUpAnimation4, scaleDownAnimation4, backgroundcolorAnimation4, opacityAnimation4 ]


            loveButtonLayer.addSublayer(particleNearLayer2)

            // Particle Far 3
            //
            let particleFarLayer2 = CALayer()
            particleFarLayer2.name = "Particle Far 3"
            particleFarLayer2.bounds = CGRect(x: 0.0, y: 0.0, width: 3.5, height: 3.5)
            particleFarLayer2.position = CGPoint(x: -6.0, y: 14.0)
            particleFarLayer2.contentsGravity = kCAGravityCenter
            particleFarLayer2.opacity = 0.0
            particleFarLayer2.backgroundColor = backgroundcolor1.cgColor
            particleFarLayer2.cornerRadius = 1.75
            particleFarLayer2.borderColor = bordercolor1.cgColor
            particleFarLayer2.shadowOffset = CGSize(width: 0.0, height: 1.0)
            particleFarLayer2.fillMode = kCAFillModeForwards

                // Particle Far 3 Animations
                //

                // Explode
                //
                let explodeAnimation5 = CAAnimationGroup()
                explodeAnimation5.beginTime = 0.35945806033786
                explodeAnimation5.duration = 1.3292
                explodeAnimation5.fillMode = kCAFillModeForwards
                explodeAnimation5.isRemovedOnCompletion = false
                explodeAnimation5.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)

                    // Explode Animations
                    //
                    // position
                    //
                    let positionAnimation5 = CABasicAnimation()
                    positionAnimation5.beginTime = 1.00000000001488e-06
                    positionAnimation5.duration = 0.852
                    positionAnimation5.fillMode = kCAFillModeForwards
                    positionAnimation5.isRemovedOnCompletion = false
                    positionAnimation5.timingFunction = CAMediaTimingFunction(controlPoints: 0.0, 0.0, 0.0188533, 1.08151)
                    positionAnimation5.keyPath = "position"
                    positionAnimation5.toValue = CGPoint(x: -6.0, y: 26.0)
                    positionAnimation5.fromValue = CGPoint(x: 20.0, y: -11.0)
                    // Scale Up
                    //
                    let scaleUpAnimation5 = CABasicAnimation()
                    scaleUpAnimation5.beginTime = 9.99999999973245e-07
                    scaleUpAnimation5.duration = 0.0506969781091371
                    scaleUpAnimation5.fillMode = kCAFillModeForwards
                    scaleUpAnimation5.isRemovedOnCompletion = false
                    scaleUpAnimation5.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
                    scaleUpAnimation5.keyPath = "transform.scale"
                    scaleUpAnimation5.toValue = 1
                    // Scale Down
                    //
                    let scaleDownAnimation5 = CABasicAnimation()
                    scaleDownAnimation5.beginTime = 0.573433113578679
                    scaleDownAnimation5.duration = 0.4642
                    scaleDownAnimation5.fillMode = kCAFillModeForwards
                    scaleDownAnimation5.isRemovedOnCompletion = false
                    scaleDownAnimation5.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseIn)
                    scaleDownAnimation5.keyPath = "transform.scale"
                    scaleDownAnimation5.toValue = 0
                    scaleDownAnimation5.fromValue = 1
                    // backgroundColor
                    //
                    let backgroundcolorAnimation5 = CAKeyframeAnimation()
                    backgroundcolorAnimation5.beginTime = 9.99999999973245e-07
                    backgroundcolorAnimation5.duration = 0.852
                    backgroundcolorAnimation5.fillMode = kCAFillModeForwards
                    backgroundcolorAnimation5.isRemovedOnCompletion = false
                    backgroundcolorAnimation5.keyPath = "backgroundColor"
                    backgroundcolorAnimation5.values = [ color2.cgColor, backgroundcolor1.cgColor, color1.cgColor ]
                    backgroundcolorAnimation5.calculationMode = kCAAnimationLinear
                    // opacity
                    //
                    let opacityAnimation5 = CABasicAnimation()
                    opacityAnimation5.beginTime = 1.00000000001488e-06
                    opacityAnimation5.duration = 0.124960342639594
                    opacityAnimation5.fillMode = kCAFillModeForwards
                    opacityAnimation5.isRemovedOnCompletion = false
                    opacityAnimation5.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                    opacityAnimation5.keyPath = "opacity"
                    opacityAnimation5.toValue = 1
                    opacityAnimation5.fromValue = 0
                explodeAnimation5.animations = [ positionAnimation5, scaleUpAnimation5, scaleDownAnimation5, backgroundcolorAnimation5, opacityAnimation5 ]


            loveButtonLayer.addSublayer(particleFarLayer2)

            // Particle Near 4
            //
            let particleNearLayer3 = CALayer()
            particleNearLayer3.name = "Particle Near 4"
            particleNearLayer3.bounds = CGRect(x: 0.0, y: 0.0, width: 3.5, height: 3.5)
            particleNearLayer3.position = CGPoint(x: -5.0, y: 2.0)
            particleNearLayer3.contentsGravity = kCAGravityCenter
            particleNearLayer3.opacity = 0.0
            particleNearLayer3.backgroundColor = backgroundcolor1.cgColor
            particleNearLayer3.cornerRadius = 1.75
            particleNearLayer3.borderColor = bordercolor1.cgColor
            particleNearLayer3.shadowOffset = CGSize(width: 0.0, height: 1.0)
            particleNearLayer3.fillMode = kCAFillModeForwards

                // Particle Near 4 Animations
                //

                // Explode
                //
                let explodeAnimation6 = CAAnimationGroup()
                explodeAnimation6.beginTime = 0.308730339208418
                explodeAnimation6.duration = 1.16769214847716
                explodeAnimation6.fillMode = kCAFillModeForwards
                explodeAnimation6.isRemovedOnCompletion = false
                explodeAnimation6.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)

                    // Explode Animations
                    //
                    // position
                    //
                    let positionAnimation6 = CABasicAnimation()
                    positionAnimation6.beginTime = 9.99999999973245e-07
                    positionAnimation6.duration = 0.852
                    positionAnimation6.fillMode = kCAFillModeForwards
                    positionAnimation6.isRemovedOnCompletion = false
                    positionAnimation6.timingFunction = CAMediaTimingFunction(controlPoints: 0.0, 0.0, 0.0188533, 1.08151)
                    positionAnimation6.keyPath = "position"
                    positionAnimation6.toValue = CGPoint(x: 16.0, y: 23.0)
                    positionAnimation6.fromValue = CGPoint(x: 10.0, y: -5.0)
                    // Scale Up
                    //
                    let scaleUpAnimation6 = CABasicAnimation()
                    scaleUpAnimation6.beginTime = 9.99999999973245e-07
                    scaleUpAnimation6.duration = 0.0507267211294417
                    scaleUpAnimation6.fillMode = kCAFillModeForwards
                    scaleUpAnimation6.isRemovedOnCompletion = false
                    scaleUpAnimation6.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
                    scaleUpAnimation6.keyPath = "transform.scale"
                    scaleUpAnimation6.toValue = 1
                    // Scale Down
                    //
                    let scaleDownAnimation6 = CABasicAnimation()
                    scaleDownAnimation6.beginTime = 0.396320669416242
                    scaleDownAnimation6.duration = 0.455680330583758
                    scaleDownAnimation6.fillMode = kCAFillModeForwards
                    scaleDownAnimation6.isRemovedOnCompletion = false
                    scaleDownAnimation6.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseIn)
                    scaleDownAnimation6.keyPath = "transform.scale"
                    scaleDownAnimation6.toValue = 0
                    scaleDownAnimation6.fromValue = 1
                    // backgroundColor
                    //
                    let backgroundcolorAnimation6 = CAKeyframeAnimation()
                    backgroundcolorAnimation6.beginTime = 9.99999999973245e-07
                    backgroundcolorAnimation6.duration = 0.851998730964466
                    backgroundcolorAnimation6.fillMode = kCAFillModeForwards
                    backgroundcolorAnimation6.isRemovedOnCompletion = false
                    backgroundcolorAnimation6.keyPath = "backgroundColor"
                    backgroundcolorAnimation6.values = [ color3.cgColor, color2.cgColor, color1.cgColor ]
                    backgroundcolorAnimation6.calculationMode = kCAAnimationLinear
                    // opacity
                    //
                    let opacityAnimation6 = CABasicAnimation()
                    opacityAnimation6.beginTime = 9.99999999973245e-07
                    opacityAnimation6.duration = 0.124960342639594
                    opacityAnimation6.fillMode = kCAFillModeForwards
                    opacityAnimation6.isRemovedOnCompletion = false
                    opacityAnimation6.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                    opacityAnimation6.keyPath = "opacity"
                    opacityAnimation6.toValue = 1
                    opacityAnimation6.fromValue = 0
                explodeAnimation6.animations = [ positionAnimation6, scaleUpAnimation6, scaleDownAnimation6, backgroundcolorAnimation6, opacityAnimation6 ]


            loveButtonLayer.addSublayer(particleNearLayer3)

            // Particle Far 4
            //
            let particleFarLayer3 = CALayer()
            particleFarLayer3.name = "Particle Far 4"
            particleFarLayer3.bounds = CGRect(x: 0.0, y: 0.0, width: 3.5, height: 3.5)
            particleFarLayer3.position = CGPoint(x: -6.0, y: 14.0)
            particleFarLayer3.contentsGravity = kCAGravityCenter
            particleFarLayer3.opacity = 0.0
            particleFarLayer3.backgroundColor = backgroundcolor1.cgColor
            particleFarLayer3.cornerRadius = 1.75
            particleFarLayer3.borderColor = bordercolor1.cgColor
            particleFarLayer3.shadowOffset = CGSize(width: 0.0, height: 1.0)
            particleFarLayer3.fillMode = kCAFillModeForwards

                // Particle Far 4 Animations
                //

                // Explode
                //
                let explodeAnimation7 = CAAnimationGroup()
                explodeAnimation7.beginTime = 0.35945806033786
                explodeAnimation7.duration = 1.3292
                explodeAnimation7.fillMode = kCAFillModeForwards
                explodeAnimation7.isRemovedOnCompletion = false
                explodeAnimation7.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)

                    // Explode Animations
                    //
                    // position
                    //
                    let positionAnimation7 = CABasicAnimation()
                    positionAnimation7.beginTime = 1.00000000001488e-06
                    positionAnimation7.duration = 0.852
                    positionAnimation7.fillMode = kCAFillModeForwards
                    positionAnimation7.isRemovedOnCompletion = false
                    positionAnimation7.timingFunction = CAMediaTimingFunction(controlPoints: 0.0, 0.0, 0.0188533, 1.08151)
                    positionAnimation7.keyPath = "position"
                    positionAnimation7.toValue = CGPoint(x: 15.0, y: 29.0)
                    positionAnimation7.fromValue = CGPoint(x: 0.0, y: -9.0)
                    // Scale Up
                    //
                    let scaleUpAnimation7 = CABasicAnimation()
                    scaleUpAnimation7.beginTime = 9.99999999973245e-07
                    scaleUpAnimation7.duration = 0.0506969781091371
                    scaleUpAnimation7.fillMode = kCAFillModeForwards
                    scaleUpAnimation7.isRemovedOnCompletion = false
                    scaleUpAnimation7.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
                    scaleUpAnimation7.keyPath = "transform.scale"
                    scaleUpAnimation7.toValue = 1
                    // Scale Down
                    //
                    let scaleDownAnimation7 = CABasicAnimation()
                    scaleDownAnimation7.beginTime = 0.573433113578679
                    scaleDownAnimation7.duration = 0.4642
                    scaleDownAnimation7.fillMode = kCAFillModeForwards
                    scaleDownAnimation7.isRemovedOnCompletion = false
                    scaleDownAnimation7.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseIn)
                    scaleDownAnimation7.keyPath = "transform.scale"
                    scaleDownAnimation7.toValue = 0
                    scaleDownAnimation7.fromValue = 1
                    // backgroundColor
                    //
                    let backgroundcolorAnimation7 = CAKeyframeAnimation()
                    backgroundcolorAnimation7.beginTime = 9.99999999973245e-07
                    backgroundcolorAnimation7.duration = 0.852
                    backgroundcolorAnimation7.fillMode = kCAFillModeForwards
                    backgroundcolorAnimation7.isRemovedOnCompletion = false
                    backgroundcolorAnimation7.keyPath = "backgroundColor"
                    backgroundcolorAnimation7.values = [ color3.cgColor, color2.cgColor, color1.cgColor ]
                    backgroundcolorAnimation7.calculationMode = kCAAnimationLinear
                    // opacity
                    //
                    let opacityAnimation7 = CABasicAnimation()
                    opacityAnimation7.beginTime = 1.00000000001488e-06
                    opacityAnimation7.duration = 0.124960342639594
                    opacityAnimation7.fillMode = kCAFillModeForwards
                    opacityAnimation7.isRemovedOnCompletion = false
                    opacityAnimation7.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                    opacityAnimation7.keyPath = "opacity"
                    opacityAnimation7.toValue = 1
                    opacityAnimation7.fromValue = 0
                explodeAnimation7.animations = [ positionAnimation7, scaleUpAnimation7, scaleDownAnimation7, backgroundcolorAnimation7, opacityAnimation7 ]


            loveButtonLayer.addSublayer(particleFarLayer3)

            // Particle Near 5
            //
            let particleNearLayer4 = CALayer()
            particleNearLayer4.name = "Particle Near 5"
            particleNearLayer4.bounds = CGRect(x: 0.0, y: 0.0, width: 3.5, height: 3.5)
            particleNearLayer4.position = CGPoint(x: -5.0, y: 2.0)
            particleNearLayer4.contentsGravity = kCAGravityCenter
            particleNearLayer4.opacity = 0.0
            particleNearLayer4.backgroundColor = backgroundcolor1.cgColor
            particleNearLayer4.cornerRadius = 1.75
            particleNearLayer4.borderColor = bordercolor1.cgColor
            particleNearLayer4.shadowOffset = CGSize(width: 0.0, height: 1.0)
            particleNearLayer4.fillMode = kCAFillModeForwards

                // Particle Near 5 Animations
                //

                // Explode
                //
                let explodeAnimation8 = CAAnimationGroup()
                explodeAnimation8.beginTime = 0.308730339208418
                explodeAnimation8.duration = 1.16769214847716
                explodeAnimation8.fillMode = kCAFillModeForwards
                explodeAnimation8.isRemovedOnCompletion = false
                explodeAnimation8.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)

                    // Explode Animations
                    //
                    // position
                    //
                    let positionAnimation8 = CABasicAnimation()
                    positionAnimation8.beginTime = 9.99999999973245e-07
                    positionAnimation8.duration = 0.852
                    positionAnimation8.fillMode = kCAFillModeForwards
                    positionAnimation8.isRemovedOnCompletion = false
                    positionAnimation8.timingFunction = CAMediaTimingFunction(controlPoints: 0.0, 0.0, 0.0188533, 1.08151)
                    positionAnimation8.keyPath = "position"
                    positionAnimation8.toValue = CGPoint(x: 25.0, y: 13.0)
                    positionAnimation8.fromValue = CGPoint(x: 4.0, y: -5.0)
                    // Scale Up
                    //
                    let scaleUpAnimation8 = CABasicAnimation()
                    scaleUpAnimation8.beginTime = 9.99999999973245e-07
                    scaleUpAnimation8.duration = 0.0507267211294417
                    scaleUpAnimation8.fillMode = kCAFillModeForwards
                    scaleUpAnimation8.isRemovedOnCompletion = false
                    scaleUpAnimation8.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
                    scaleUpAnimation8.keyPath = "transform.scale"
                    scaleUpAnimation8.toValue = 1
                    // Scale Down
                    //
                    let scaleDownAnimation8 = CABasicAnimation()
                    scaleDownAnimation8.beginTime = 0.396320669416242
                    scaleDownAnimation8.duration = 0.455680330583758
                    scaleDownAnimation8.fillMode = kCAFillModeForwards
                    scaleDownAnimation8.isRemovedOnCompletion = false
                    scaleDownAnimation8.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseIn)
                    scaleDownAnimation8.keyPath = "transform.scale"
                    scaleDownAnimation8.toValue = 0
                    scaleDownAnimation8.fromValue = 1
                    // backgroundColor
                    //
                    let backgroundcolorAnimation8 = CAKeyframeAnimation()
                    backgroundcolorAnimation8.beginTime = 9.99999999973245e-07
                    backgroundcolorAnimation8.duration = 0.851998730964466
                    backgroundcolorAnimation8.fillMode = kCAFillModeForwards
                    backgroundcolorAnimation8.isRemovedOnCompletion = false
                    backgroundcolorAnimation8.keyPath = "backgroundColor"
                    backgroundcolorAnimation8.values = [ backgroundcolor1.cgColor, color2.cgColor ]
                    backgroundcolorAnimation8.calculationMode = kCAAnimationLinear
                    // opacity
                    //
                    let opacityAnimation8 = CABasicAnimation()
                    opacityAnimation8.beginTime = 9.99999999973245e-07
                    opacityAnimation8.duration = 0.124960342639594
                    opacityAnimation8.fillMode = kCAFillModeForwards
                    opacityAnimation8.isRemovedOnCompletion = false
                    opacityAnimation8.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                    opacityAnimation8.keyPath = "opacity"
                    opacityAnimation8.toValue = 1
                    opacityAnimation8.fromValue = 0
                explodeAnimation8.animations = [ positionAnimation8, scaleUpAnimation8, scaleDownAnimation8, backgroundcolorAnimation8, opacityAnimation8 ]


            loveButtonLayer.addSublayer(particleNearLayer4)

            // Particle Far 5
            //
            let particleFarLayer4 = CALayer()
            particleFarLayer4.name = "Particle Far 5"
            particleFarLayer4.bounds = CGRect(x: 0.0, y: 0.0, width: 3.5, height: 3.5)
            particleFarLayer4.position = CGPoint(x: -6.0, y: 14.0)
            particleFarLayer4.contentsGravity = kCAGravityCenter
            particleFarLayer4.opacity = 0.0
            particleFarLayer4.backgroundColor = backgroundcolor1.cgColor
            particleFarLayer4.cornerRadius = 1.75
            particleFarLayer4.borderColor = bordercolor1.cgColor
            particleFarLayer4.shadowOffset = CGSize(width: 0.0, height: 1.0)
            particleFarLayer4.fillMode = kCAFillModeForwards

                // Particle Far 5 Animations
                //

                // Explode
                //
                let explodeAnimation9 = CAAnimationGroup()
                explodeAnimation9.beginTime = 0.35945806033786
                explodeAnimation9.duration = 1.3292
                explodeAnimation9.fillMode = kCAFillModeForwards
                explodeAnimation9.isRemovedOnCompletion = false
                explodeAnimation9.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)

                    // Explode Animations
                    //
                    // position
                    //
                    let positionAnimation9 = CABasicAnimation()
                    positionAnimation9.beginTime = 1.00000000001488e-06
                    positionAnimation9.duration = 0.852
                    positionAnimation9.fillMode = kCAFillModeForwards
                    positionAnimation9.isRemovedOnCompletion = false
                    positionAnimation9.timingFunction = CAMediaTimingFunction(controlPoints: 0.0, 0.0, 0.0188533, 1.08151)
                    positionAnimation9.keyPath = "position"
                    positionAnimation9.toValue = CGPoint(x: 27.0, y: 20.0)
                    positionAnimation9.fromValue = CGPoint(x: -4.0, y: -4.0)
                    // Scale Up
                    //
                    let scaleUpAnimation9 = CABasicAnimation()
                    scaleUpAnimation9.beginTime = 9.99999999973245e-07
                    scaleUpAnimation9.duration = 0.0506969781091371
                    scaleUpAnimation9.fillMode = kCAFillModeForwards
                    scaleUpAnimation9.isRemovedOnCompletion = false
                    scaleUpAnimation9.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
                    scaleUpAnimation9.keyPath = "transform.scale"
                    scaleUpAnimation9.toValue = 1
                    // Scale Down
                    //
                    let scaleDownAnimation9 = CABasicAnimation()
                    scaleDownAnimation9.beginTime = 0.573433113578679
                    scaleDownAnimation9.duration = 0.4642
                    scaleDownAnimation9.fillMode = kCAFillModeForwards
                    scaleDownAnimation9.isRemovedOnCompletion = false
                    scaleDownAnimation9.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseIn)
                    scaleDownAnimation9.keyPath = "transform.scale"
                    scaleDownAnimation9.toValue = 0
                    scaleDownAnimation9.fromValue = 1
                    // backgroundColor
                    //
                    let backgroundcolorAnimation9 = CAKeyframeAnimation()
                    backgroundcolorAnimation9.beginTime = 9.99999999973245e-07
                    backgroundcolorAnimation9.duration = 0.852
                    backgroundcolorAnimation9.fillMode = kCAFillModeForwards
                    backgroundcolorAnimation9.isRemovedOnCompletion = false
                    backgroundcolorAnimation9.keyPath = "backgroundColor"
                    backgroundcolorAnimation9.values = [ backgroundcolor1.cgColor, color2.cgColor ]
                    backgroundcolorAnimation9.calculationMode = kCAAnimationLinear
                    // opacity
                    //
                    let opacityAnimation9 = CABasicAnimation()
                    opacityAnimation9.beginTime = 1.00000000001488e-06
                    opacityAnimation9.duration = 0.124960342639594
                    opacityAnimation9.fillMode = kCAFillModeForwards
                    opacityAnimation9.isRemovedOnCompletion = false
                    opacityAnimation9.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                    opacityAnimation9.keyPath = "opacity"
                    opacityAnimation9.toValue = 1
                    opacityAnimation9.fromValue = 0
                explodeAnimation9.animations = [ positionAnimation9, scaleUpAnimation9, scaleDownAnimation9, backgroundcolorAnimation9, opacityAnimation9 ]


            loveButtonLayer.addSublayer(particleFarLayer4)

            // Particle Near 6
            //
            let particleNearLayer5 = CALayer()
            particleNearLayer5.name = "Particle Near 6"
            particleNearLayer5.bounds = CGRect(x: 0.0, y: 0.0, width: 3.5, height: 3.5)
            particleNearLayer5.position = CGPoint(x: -5.0, y: 2.0)
            particleNearLayer5.contentsGravity = kCAGravityCenter
            particleNearLayer5.opacity = 0.0
            particleNearLayer5.backgroundColor = backgroundcolor1.cgColor
            particleNearLayer5.cornerRadius = 1.75
            particleNearLayer5.borderColor = bordercolor1.cgColor
            particleNearLayer5.shadowOffset = CGSize(width: 0.0, height: 1.0)
            particleNearLayer5.fillMode = kCAFillModeForwards

                // Particle Near 6 Animations
                //

                // Explode
                //
                let explodeAnimation10 = CAAnimationGroup()
                explodeAnimation10.beginTime = 0.308730339208418
                explodeAnimation10.duration = 1.15326937083771
                explodeAnimation10.fillMode = kCAFillModeForwards
                explodeAnimation10.isRemovedOnCompletion = false

                    // Explode Animations
                    //
                    // position
                    //
                    let positionAnimation10 = CAKeyframeAnimation()
                    positionAnimation10.beginTime = 9.99999999973245e-07
                    positionAnimation10.duration = 1.15326837083771
                    positionAnimation10.fillMode = kCAFillModeForwards
                    positionAnimation10.isRemovedOnCompletion = false
                    positionAnimation10.timingFunction = CAMediaTimingFunction(controlPoints: 0.0, 0.0, 0.0188533, 1.08151)
                    positionAnimation10.keyPath = "position"
                    positionAnimation10.values = [ CGPoint(x: 4.0, y: -5.0), CGPoint(x: 25.0, y: 13.0) ]
                    positionAnimation10.path = positionanimationPath
                    positionAnimation10.calculationMode = kCAAnimationLinear
                    // Scale Up
                    //
                    let scaleUpAnimation10 = CABasicAnimation()
                    scaleUpAnimation10.beginTime = 9.99999999973245e-07
                    scaleUpAnimation10.duration = 0.0507267211294417
                    scaleUpAnimation10.fillMode = kCAFillModeForwards
                    scaleUpAnimation10.isRemovedOnCompletion = false
                    scaleUpAnimation10.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
                    scaleUpAnimation10.keyPath = "transform.scale"
                    scaleUpAnimation10.toValue = 1
                    // Scale Down
                    //
                    let scaleDownAnimation10 = CABasicAnimation()
                    scaleDownAnimation10.beginTime = 0.396319400380708
                    scaleDownAnimation10.duration = 0.455680330583758
                    scaleDownAnimation10.fillMode = kCAFillModeForwards
                    scaleDownAnimation10.isRemovedOnCompletion = false
                    scaleDownAnimation10.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseIn)
                    scaleDownAnimation10.keyPath = "transform.scale"
                    scaleDownAnimation10.toValue = 0
                    scaleDownAnimation10.fromValue = 1
                    // backgroundColor
                    //
                    let backgroundcolorAnimation10 = CAKeyframeAnimation()
                    backgroundcolorAnimation10.beginTime = 9.99999999973245e-07
                    backgroundcolorAnimation10.duration = 0.851998730964466
                    backgroundcolorAnimation10.fillMode = kCAFillModeForwards
                    backgroundcolorAnimation10.isRemovedOnCompletion = false
                    backgroundcolorAnimation10.keyPath = "backgroundColor"
                    backgroundcolorAnimation10.values = [ color1.cgColor, color3.cgColor, backgroundcolor1.cgColor ]
                    backgroundcolorAnimation10.calculationMode = kCAAnimationLinear
                    // opacity
                    //
                    let opacityAnimation10 = CABasicAnimation()
                    opacityAnimation10.beginTime = 9.99999999973245e-07
                    opacityAnimation10.duration = 0.124960342639594
                    opacityAnimation10.fillMode = kCAFillModeForwards
                    opacityAnimation10.isRemovedOnCompletion = false
                    opacityAnimation10.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                    opacityAnimation10.keyPath = "opacity"
                    opacityAnimation10.toValue = 1
                    opacityAnimation10.fromValue = 0
                explodeAnimation10.animations = [ positionAnimation10, scaleUpAnimation10, scaleDownAnimation10, backgroundcolorAnimation10, opacityAnimation10 ]


            loveButtonLayer.addSublayer(particleNearLayer5)

            // Particle Far 6
            //
            let particleFarLayer5 = CALayer()
            particleFarLayer5.name = "Particle Far 6"
            particleFarLayer5.bounds = CGRect(x: 0.0, y: 0.0, width: 3.5, height: 3.5)
            particleFarLayer5.position = CGPoint(x: -6.0, y: 14.0)
            particleFarLayer5.contentsGravity = kCAGravityCenter
            particleFarLayer5.opacity = 0.0
            particleFarLayer5.backgroundColor = backgroundcolor1.cgColor
            particleFarLayer5.cornerRadius = 1.75
            particleFarLayer5.borderColor = bordercolor1.cgColor
            particleFarLayer5.shadowOffset = CGSize(width: 0.0, height: 1.0)
            particleFarLayer5.fillMode = kCAFillModeForwards

                // Particle Far 6 Animations
                //

                // Explode
                //
                let explodeAnimation11 = CAAnimationGroup()
                explodeAnimation11.beginTime = 0.35945806033786
                explodeAnimation11.duration = 1.3292
                explodeAnimation11.fillMode = kCAFillModeForwards
                explodeAnimation11.isRemovedOnCompletion = false
                explodeAnimation11.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)

                    // Explode Animations
                    //
                    // position
                    //
                    let positionAnimation11 = CAKeyframeAnimation()
                    positionAnimation11.beginTime = 1.00000000001488e-06
                    positionAnimation11.duration = 1.329199
                    positionAnimation11.fillMode = kCAFillModeForwards
                    positionAnimation11.isRemovedOnCompletion = false
                    positionAnimation11.timingFunction = CAMediaTimingFunction(controlPoints: 0.0, 0.0, 0.0188533, 1.08151)
                    positionAnimation11.keyPath = "position"
                    positionAnimation11.values = [ CGPoint(x: -4.0, y: -4.0), CGPoint(x: 27.0, y: 20.0) ]
                    positionAnimation11.path = positionanimationPath1
                    positionAnimation11.calculationMode = kCAAnimationLinear
                    // Scale Up
                    //
                    let scaleUpAnimation11 = CABasicAnimation()
                    scaleUpAnimation11.beginTime = 9.99999999973245e-07
                    scaleUpAnimation11.duration = 0.0506969781091371
                    scaleUpAnimation11.fillMode = kCAFillModeForwards
                    scaleUpAnimation11.isRemovedOnCompletion = false
                    scaleUpAnimation11.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
                    scaleUpAnimation11.keyPath = "transform.scale"
                    scaleUpAnimation11.toValue = 1
                    // Scale Down
                    //
                    let scaleDownAnimation11 = CABasicAnimation()
                    scaleDownAnimation11.beginTime = 0.573433113578679
                    scaleDownAnimation11.duration = 0.4642
                    scaleDownAnimation11.fillMode = kCAFillModeForwards
                    scaleDownAnimation11.isRemovedOnCompletion = false
                    scaleDownAnimation11.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseIn)
                    scaleDownAnimation11.keyPath = "transform.scale"
                    scaleDownAnimation11.toValue = 0
                    scaleDownAnimation11.fromValue = 1
                    // backgroundColor
                    //
                    let backgroundcolorAnimation11 = CAKeyframeAnimation()
                    backgroundcolorAnimation11.beginTime = 9.99999999973245e-07
                    backgroundcolorAnimation11.duration = 0.852
                    backgroundcolorAnimation11.fillMode = kCAFillModeForwards
                    backgroundcolorAnimation11.isRemovedOnCompletion = false
                    backgroundcolorAnimation11.keyPath = "backgroundColor"
                    backgroundcolorAnimation11.values = [ color1.cgColor, color3.cgColor, backgroundcolor1.cgColor ]
                    backgroundcolorAnimation11.calculationMode = kCAAnimationLinear
                    // opacity
                    //
                    let opacityAnimation11 = CABasicAnimation()
                    opacityAnimation11.beginTime = 1.00000000001488e-06
                    opacityAnimation11.duration = 0.124960342639594
                    opacityAnimation11.fillMode = kCAFillModeForwards
                    opacityAnimation11.isRemovedOnCompletion = false
                    opacityAnimation11.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                    opacityAnimation11.keyPath = "opacity"
                    opacityAnimation11.toValue = 1
                    opacityAnimation11.fromValue = 0
                explodeAnimation11.animations = [ positionAnimation11, scaleUpAnimation11, scaleDownAnimation11, backgroundcolorAnimation11, opacityAnimation11 ]


            loveButtonLayer.addSublayer(particleFarLayer5)

            // Particle Near 7
            //
            let particleNearLayer6 = CALayer()
            particleNearLayer6.name = "Particle Near 7"
            particleNearLayer6.bounds = CGRect(x: 0.0, y: 0.0, width: 3.5, height: 3.5)
            particleNearLayer6.position = CGPoint(x: -5.0, y: 2.0)
            particleNearLayer6.contentsGravity = kCAGravityCenter
            particleNearLayer6.opacity = 0.0
            particleNearLayer6.backgroundColor = backgroundcolor1.cgColor
            particleNearLayer6.cornerRadius = 1.75
            particleNearLayer6.borderColor = bordercolor1.cgColor
            particleNearLayer6.shadowOffset = CGSize(width: 0.0, height: 1.0)
            particleNearLayer6.fillMode = kCAFillModeForwards

                // Particle Near 7 Animations
                //

                // Explode
                //
                let explodeAnimation12 = CAAnimationGroup()
                explodeAnimation12.beginTime = 0.308730339208418
                explodeAnimation12.duration = 1.15326937083771
                explodeAnimation12.fillMode = kCAFillModeForwards
                explodeAnimation12.isRemovedOnCompletion = false

                    // Explode Animations
                    //
                    // position
                    //
                    let positionAnimation12 = CAKeyframeAnimation()
                    positionAnimation12.beginTime = 9.99999999973245e-07
                    positionAnimation12.duration = 1.15326837083771
                    positionAnimation12.fillMode = kCAFillModeForwards
                    positionAnimation12.isRemovedOnCompletion = false
                    positionAnimation12.timingFunction = CAMediaTimingFunction(controlPoints: 0.0, 0.0, 0.0188533, 1.08151)
                    positionAnimation12.keyPath = "position"
                    positionAnimation12.values = [ CGPoint(x: 4.0, y: -5.0), CGPoint(x: 25.0, y: 13.0) ]
                    positionAnimation12.path = positionanimationPath2
                    positionAnimation12.calculationMode = kCAAnimationLinear
                    // Scale Up
                    //
                    let scaleUpAnimation12 = CABasicAnimation()
                    scaleUpAnimation12.beginTime = 9.99999999973245e-07
                    scaleUpAnimation12.duration = 0.0507267211294417
                    scaleUpAnimation12.fillMode = kCAFillModeForwards
                    scaleUpAnimation12.isRemovedOnCompletion = false
                    scaleUpAnimation12.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
                    scaleUpAnimation12.keyPath = "transform.scale"
                    scaleUpAnimation12.toValue = 1
                    // Scale Down
                    //
                    let scaleDownAnimation12 = CABasicAnimation()
                    scaleDownAnimation12.beginTime = 0.396319400380708
                    scaleDownAnimation12.duration = 0.455680330583758
                    scaleDownAnimation12.fillMode = kCAFillModeForwards
                    scaleDownAnimation12.isRemovedOnCompletion = false
                    scaleDownAnimation12.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseIn)
                    scaleDownAnimation12.keyPath = "transform.scale"
                    scaleDownAnimation12.toValue = 0
                    scaleDownAnimation12.fromValue = 1
                    // backgroundColor
                    //
                    let backgroundcolorAnimation12 = CAKeyframeAnimation()
                    backgroundcolorAnimation12.beginTime = 9.99999999973245e-07
                    backgroundcolorAnimation12.duration = 0.851998730964466
                    backgroundcolorAnimation12.fillMode = kCAFillModeForwards
                    backgroundcolorAnimation12.isRemovedOnCompletion = false
                    backgroundcolorAnimation12.keyPath = "backgroundColor"
                    backgroundcolorAnimation12.values = [ color2.cgColor, color1.cgColor, backgroundcolor1.cgColor ]
                    backgroundcolorAnimation12.calculationMode = kCAAnimationLinear
                    // opacity
                    //
                    let opacityAnimation12 = CABasicAnimation()
                    opacityAnimation12.beginTime = 9.99999999973245e-07
                    opacityAnimation12.duration = 0.124960342639594
                    opacityAnimation12.fillMode = kCAFillModeForwards
                    opacityAnimation12.isRemovedOnCompletion = false
                    opacityAnimation12.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                    opacityAnimation12.keyPath = "opacity"
                    opacityAnimation12.toValue = 1
                    opacityAnimation12.fromValue = 0
                explodeAnimation12.animations = [ positionAnimation12, scaleUpAnimation12, scaleDownAnimation12, backgroundcolorAnimation12, opacityAnimation12 ]


            loveButtonLayer.addSublayer(particleNearLayer6)

            // Particle Far 7
            //
            let particleFarLayer6 = CALayer()
            particleFarLayer6.name = "Particle Far 7"
            particleFarLayer6.bounds = CGRect(x: 0.0, y: 0.0, width: 3.5, height: 3.5)
            particleFarLayer6.position = CGPoint(x: -6.0, y: 14.0)
            particleFarLayer6.contentsGravity = kCAGravityCenter
            particleFarLayer6.opacity = 0.0
            particleFarLayer6.backgroundColor = backgroundcolor1.cgColor
            particleFarLayer6.cornerRadius = 1.75
            particleFarLayer6.borderColor = bordercolor1.cgColor
            particleFarLayer6.shadowOffset = CGSize(width: 0.0, height: 1.0)
            particleFarLayer6.fillMode = kCAFillModeForwards

                // Particle Far 7 Animations
                //

                // Explode
                //
                let explodeAnimation13 = CAAnimationGroup()
                explodeAnimation13.beginTime = 0.35945806033786
                explodeAnimation13.duration = 1.3292
                explodeAnimation13.fillMode = kCAFillModeForwards
                explodeAnimation13.isRemovedOnCompletion = false
                explodeAnimation13.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)

                    // Explode Animations
                    //
                    // position
                    //
                    let positionAnimation13 = CAKeyframeAnimation()
                    positionAnimation13.beginTime = 1.00000000002876e-06
                    positionAnimation13.duration = 1.329199
                    positionAnimation13.fillMode = kCAFillModeForwards
                    positionAnimation13.isRemovedOnCompletion = false
                    positionAnimation13.timingFunction = CAMediaTimingFunction(controlPoints: 0.0, 0.0, 0.0188533, 1.08151)
                    positionAnimation13.keyPath = "position"
                    positionAnimation13.values = [ CGPoint(x: -4.0, y: -4.0), CGPoint(x: 27.0, y: 20.0) ]
                    positionAnimation13.path = positionanimationPath3
                    positionAnimation13.calculationMode = kCAAnimationLinear
                    // Scale Up
                    //
                    let scaleUpAnimation13 = CABasicAnimation()
                    scaleUpAnimation13.beginTime = 9.99999999973245e-07
                    scaleUpAnimation13.duration = 0.0506969781091371
                    scaleUpAnimation13.fillMode = kCAFillModeForwards
                    scaleUpAnimation13.isRemovedOnCompletion = false
                    scaleUpAnimation13.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
                    scaleUpAnimation13.keyPath = "transform.scale"
                    scaleUpAnimation13.toValue = 1
                    // Scale Down
                    //
                    let scaleDownAnimation13 = CABasicAnimation()
                    scaleDownAnimation13.beginTime = 0.573433113578679
                    scaleDownAnimation13.duration = 0.4642
                    scaleDownAnimation13.fillMode = kCAFillModeForwards
                    scaleDownAnimation13.isRemovedOnCompletion = false
                    scaleDownAnimation13.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseIn)
                    scaleDownAnimation13.keyPath = "transform.scale"
                    scaleDownAnimation13.toValue = 0
                    scaleDownAnimation13.fromValue = 1
                    // backgroundColor
                    //
                    let backgroundcolorAnimation13 = CAKeyframeAnimation()
                    backgroundcolorAnimation13.beginTime = 9.99999999973245e-07
                    backgroundcolorAnimation13.duration = 0.852
                    backgroundcolorAnimation13.fillMode = kCAFillModeForwards
                    backgroundcolorAnimation13.isRemovedOnCompletion = false
                    backgroundcolorAnimation13.keyPath = "backgroundColor"
                    backgroundcolorAnimation13.values = [ color2.cgColor, color1.cgColor, backgroundcolor1.cgColor ]
                    backgroundcolorAnimation13.calculationMode = kCAAnimationLinear
                    // opacity
                    //
                    let opacityAnimation13 = CABasicAnimation()
                    opacityAnimation13.beginTime = 1.00000000001488e-06
                    opacityAnimation13.duration = 0.124960342639594
                    opacityAnimation13.fillMode = kCAFillModeForwards
                    opacityAnimation13.isRemovedOnCompletion = false
                    opacityAnimation13.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                    opacityAnimation13.keyPath = "opacity"
                    opacityAnimation13.toValue = 1
                    opacityAnimation13.fromValue = 0
                explodeAnimation13.animations = [ positionAnimation13, scaleUpAnimation13, scaleDownAnimation13, backgroundcolorAnimation13, opacityAnimation13 ]


            loveButtonLayer.addSublayer(particleFarLayer6)

            // Filled Circle
            //
            let filledCircleLayer = CALayer()
            filledCircleLayer.name = "Filled Circle"
            filledCircleLayer.bounds = CGRect(x: 0.0, y: 0.0, width: 23.5, height: 23.5)
            filledCircleLayer.position = CGPoint(x: 7.0, y: 5.0)
            filledCircleLayer.contentsGravity = kCAGravityCenter
            filledCircleLayer.backgroundColor = backgroundcolor2.cgColor
            filledCircleLayer.cornerRadius = 12.0
            filledCircleLayer.borderWidth = 1.0
            filledCircleLayer.borderColor = bordercolor2.cgColor
            filledCircleLayer.shadowOffset = CGSize(width: 0.0, height: 1.0)
            filledCircleLayer.fillMode = kCAFillModeForwards

                // Filled Circle Animations
                //

                // Scale Up transform.scale
                //
                let scaleUpTransformScaleAnimation = CABasicAnimation()
                scaleUpTransformScaleAnimation.beginTime = 1e-06
                scaleUpTransformScaleAnimation.duration = 0.5
                scaleUpTransformScaleAnimation.fillMode = kCAFillModeBoth
                scaleUpTransformScaleAnimation.isRemovedOnCompletion = false
                scaleUpTransformScaleAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                scaleUpTransformScaleAnimation.keyPath = "transform.scale"
                scaleUpTransformScaleAnimation.toValue = 1
                scaleUpTransformScaleAnimation.fromValue = 0


                // Scale Down transform.scale
                //
                // This animation is hidden
                //
                let scaleDownTransformScaleAnimation = CABasicAnimation()
                scaleDownTransformScaleAnimation.beginTime = 1e-06
                scaleDownTransformScaleAnimation.duration = 0.01
                scaleDownTransformScaleAnimation.fillMode = kCAFillModeBoth
                scaleDownTransformScaleAnimation.isRemovedOnCompletion = false
                scaleDownTransformScaleAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                scaleDownTransformScaleAnimation.keyPath = "transform.scale"
                scaleDownTransformScaleAnimation.toValue = 0
                scaleDownTransformScaleAnimation.fromValue = 1


                // backgroundColor
                //
                let backgroundcolorAnimation14 = CABasicAnimation()
                backgroundcolorAnimation14.beginTime = 0.00126903553299492
                backgroundcolorAnimation14.duration = 0.5
                backgroundcolorAnimation14.fillMode = kCAFillModeForwards
                backgroundcolorAnimation14.isRemovedOnCompletion = false
                backgroundcolorAnimation14.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                backgroundcolorAnimation14.keyPath = "backgroundColor"
                backgroundcolorAnimation14.toValue = color1.cgColor
                backgroundcolorAnimation14.fromValue = backgroundcolor2.cgColor


            loveButtonLayer.addSublayer(filledCircleLayer)

            // White Circle
            //
            let whiteCircleLayer = CALayer()
            whiteCircleLayer.name = "White Circle"
            whiteCircleLayer.bounds = CGRect(x: 0.0, y: 0.0, width: 24.0, height: 24.0)
            whiteCircleLayer.position = CGPoint(x: 7.0, y: 5.0)
            whiteCircleLayer.contentsGravity = kCAGravityCenter
            whiteCircleLayer.backgroundColor = backgroundcolor3.cgColor
            whiteCircleLayer.cornerRadius = 12.0
            whiteCircleLayer.borderWidth = 1.0
            whiteCircleLayer.borderColor = bordercolor2.cgColor
            whiteCircleLayer.shadowOffset = CGSize(width: 0.0, height: 1.0)
            whiteCircleLayer.fillMode = kCAFillModeForwards

                // White Circle Animations
                //

                // Scale Up transform.scale
                //
                let scaleUpTransformScaleAnimation1 = CABasicAnimation()
                scaleUpTransformScaleAnimation1.beginTime = 0.178196158846742
                scaleUpTransformScaleAnimation1.duration = 0.5
                scaleUpTransformScaleAnimation1.fillMode = kCAFillModeBoth
                scaleUpTransformScaleAnimation1.isRemovedOnCompletion = false
                scaleUpTransformScaleAnimation1.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                scaleUpTransformScaleAnimation1.keyPath = "transform.scale"
                scaleUpTransformScaleAnimation1.toValue = 1.1
                scaleUpTransformScaleAnimation1.fromValue = 0


                // Scale Down transform.scale
                //
                // This animation is hidden
                //
                let scaleDownTransformScaleAnimation1 = CABasicAnimation()
                scaleDownTransformScaleAnimation1.beginTime = 0.178196158846742
                scaleDownTransformScaleAnimation1.duration = 0.01
                scaleDownTransformScaleAnimation1.fillMode = kCAFillModeBoth
                scaleDownTransformScaleAnimation1.isRemovedOnCompletion = false
                scaleDownTransformScaleAnimation1.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                scaleDownTransformScaleAnimation1.keyPath = "transform.scale"
                scaleDownTransformScaleAnimation1.toValue = 0
                scaleDownTransformScaleAnimation1.fromValue = 1.1


            loveButtonLayer.addSublayer(whiteCircleLayer)

            // Loved Heart
            //
            let lovedHeartLayer = CAShapeLayer()
            lovedHeartLayer.name = "Loved Heart"
            lovedHeartLayer.bounds = CGRect(x: 0.0, y: 0.0, width: 14.0, height: 15.0)
            lovedHeartLayer.position = CGPoint(x: 7.0, y: 4.4)
            lovedHeartLayer.anchorPoint = CGPoint(x: 0.5, y: 0.36)
            lovedHeartLayer.contentsGravity = kCAGravityCenter

                // Loved Heart Animations
                //

                // Love scale
                //
                let loveScaleAnimation = CASpringAnimation()
                loveScaleAnimation.beginTime = 0.444901821917808
                loveScaleAnimation.duration = 0.859885835272138
                loveScaleAnimation.fillMode = kCAFillModeBoth
                loveScaleAnimation.isRemovedOnCompletion = false
                loveScaleAnimation.keyPath = "transform.scale"
                loveScaleAnimation.toValue = 1
                loveScaleAnimation.fromValue = 0
                loveScaleAnimation.stiffness = 200.0
                loveScaleAnimation.damping = 12.0
                loveScaleAnimation.mass = 0.699999988079071
                loveScaleAnimation.initialVelocity = 0.0


                // hide
                //
                // This animation is hidden
                //
                let hideAnimation = CABasicAnimation()
                hideAnimation.beginTime = 1e-06
                hideAnimation.duration = 0.0499999999999999
                hideAnimation.fillMode = kCAFillModeForwards
                hideAnimation.isRemovedOnCompletion = false
                hideAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                hideAnimation.keyPath = "opacity"
                hideAnimation.toValue = 0


                // show
                //
                // This animation is hidden
                //
                let showAnimation = CABasicAnimation()
                showAnimation.beginTime = 1e-06
                showAnimation.duration = 0.0499999999999999
                showAnimation.fillMode = kCAFillModeForwards
                showAnimation.isRemovedOnCompletion = false
                showAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                showAnimation.keyPath = "opacity"
                showAnimation.toValue = 1

            lovedHeartLayer.path = lovedHeartPath
            lovedHeartLayer.fillColor = backgroundcolor2.cgColor
            lovedHeartLayer.strokeColor = strokecolor.cgColor
            lovedHeartLayer.fillRule = kCAFillRuleEvenOdd
            lovedHeartLayer.lineWidth = 0.0

            loveButtonLayer.addSublayer(lovedHeartLayer)

            // Unloved Heart
            //
            let unlovedHeartLayer = CAShapeLayer()
            unlovedHeartLayer.name = "Unloved Heart"
            unlovedHeartLayer.bounds = CGRect(x: 0.0, y: 0.0, width: 14.0, height: 15.0)
            unlovedHeartLayer.position = CGPoint(x: 7.0, y: 4.4)
            unlovedHeartLayer.anchorPoint = CGPoint(x: 0.5, y: 0.36)
            unlovedHeartLayer.contentsGravity = kCAGravityCenter

                // Unloved Heart Animations
                //

                // hide
                //
                let hideAnimation1 = CABasicAnimation()
                hideAnimation1.beginTime = 1e-06
                hideAnimation1.duration = 0.05
                hideAnimation1.fillMode = kCAFillModeForwards
                hideAnimation1.isRemovedOnCompletion = false
                hideAnimation1.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                hideAnimation1.keyPath = "opacity"
                hideAnimation1.toValue = 0


                // show
                //
                // This animation is hidden
                //
                let showAnimation1 = CABasicAnimation()
                showAnimation1.beginTime = 1e-06
                showAnimation1.duration = 0.05
                showAnimation1.fillMode = kCAFillModeForwards
                showAnimation1.isRemovedOnCompletion = false
                showAnimation1.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                showAnimation1.keyPath = "opacity"
                showAnimation1.toValue = 1


                // hover fillColor
                //
                let hoverFillcolorAnimation = CABasicAnimation()
                hoverFillcolorAnimation.beginTime = 1e-06
                hoverFillcolorAnimation.duration = 0.05
                hoverFillcolorAnimation.fillMode = kCAFillModeForwards
                hoverFillcolorAnimation.isRemovedOnCompletion = false
                hoverFillcolorAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                hoverFillcolorAnimation.keyPath = "fillColor"
                hoverFillcolorAnimation.toValue = color4.cgColor


                // unlove fillColor
                //
                // This animation is hidden
                //
                let unloveFillcolorAnimation = CABasicAnimation()
                unloveFillcolorAnimation.beginTime = 1e-06
                unloveFillcolorAnimation.duration = 0.05
                unloveFillcolorAnimation.fillMode = kCAFillModeForwards
                unloveFillcolorAnimation.isRemovedOnCompletion = false
                unloveFillcolorAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                unloveFillcolorAnimation.keyPath = "fillColor"
                unloveFillcolorAnimation.toValue = color5.cgColor


                // Unlove scale
                //
                // This animation is hidden
                //
                let unloveScaleAnimation = CAKeyframeAnimation()
                unloveScaleAnimation.beginTime = 0.101
                unloveScaleAnimation.duration = 0.859885835272138
                unloveScaleAnimation.fillMode = kCAFillModeBoth
                unloveScaleAnimation.isRemovedOnCompletion = false
                unloveScaleAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionDefault)
                unloveScaleAnimation.keyPath = "transform.scale"
                unloveScaleAnimation.values = [ 1, 2, 1 ]
                unloveScaleAnimation.calculationMode = kCAAnimationLinear

            unlovedHeartLayer.path = unlovedHeartPath
            unlovedHeartLayer.fillColor = color5.cgColor
            unlovedHeartLayer.strokeColor = strokecolor1.cgColor
            unlovedHeartLayer.fillRule = kCAFillRuleEvenOdd
            unlovedHeartLayer.lineWidth = 0.0

            loveButtonLayer.addSublayer(unlovedHeartLayer)

        self.layer.addSublayer(loveButtonLayer)
        // Layer Instance Assignments
        //
        self.filledCircleLayer = filledCircleLayer
        self.whiteCircleLayer = whiteCircleLayer
        self.lovedHeartLayer = lovedHeartLayer
        self.unlovedHeartLayer = unlovedHeartLayer
        self.particleNearLayer = particleNearLayer
        self.particleFarLayer = particleFarLayer
        self.particleNearLayer1 = particleNearLayer1
        self.particleFarLayer1 = particleFarLayer1
        self.particleNearLayer2 = particleNearLayer2
        self.particleFarLayer2 = particleFarLayer2
        self.particleNearLayer3 = particleNearLayer3
        self.particleFarLayer3 = particleFarLayer3
        self.particleNearLayer4 = particleNearLayer4
        self.particleFarLayer4 = particleFarLayer4
        self.particleNearLayer5 = particleNearLayer5
        self.particleFarLayer5 = particleFarLayer5
        self.particleNearLayer6 = particleNearLayer6
        self.particleFarLayer6 = particleFarLayer6
        // Animation Instance Assignments
        //
        self.explodeAnimation = explodeAnimation
        self.explodeAnimation1 = explodeAnimation1
        self.explodeAnimation2 = explodeAnimation2
        self.explodeAnimation3 = explodeAnimation3
        self.explodeAnimation4 = explodeAnimation4
        self.explodeAnimation5 = explodeAnimation5
        self.explodeAnimation6 = explodeAnimation6
        self.explodeAnimation7 = explodeAnimation7
        self.explodeAnimation8 = explodeAnimation8
        self.explodeAnimation9 = explodeAnimation9
        self.explodeAnimation10 = explodeAnimation10
        self.explodeAnimation11 = explodeAnimation11
        self.explodeAnimation12 = explodeAnimation12
        self.explodeAnimation13 = explodeAnimation13
        self.scaleUpTransformScaleAnimation = scaleUpTransformScaleAnimation
        self.scaleDownTransformScaleAnimation = scaleDownTransformScaleAnimation
        self.backgroundcolorAnimation14 = backgroundcolorAnimation14
        self.scaleUpTransformScaleAnimation1 = scaleUpTransformScaleAnimation1
        self.scaleDownTransformScaleAnimation1 = scaleDownTransformScaleAnimation1
        self.loveScaleAnimation = loveScaleAnimation
        self.hideAnimation = hideAnimation
        self.showAnimation = showAnimation
        self.hideAnimation1 = hideAnimation1
        self.showAnimation1 = showAnimation1
        self.hoverFillcolorAnimation = hoverFillcolorAnimation
        self.unloveFillcolorAnimation = unloveFillcolorAnimation
        self.unloveScaleAnimation = unloveScaleAnimation

    }

    // MARK: - Responder

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        guard let location = touches.first?.location(in: self.superview),
              let hitLayer = self.layer.presentation()?.hitTest(location) else { return }

        print("Layer \(hitLayer.name ?? String(describing: hitLayer)) was tapped.")

        // Call action methods
        //
        self.playLoveAnimationAction(self)
    }

    // MARK: - Actions

    @IBAction func playLoveAnimationAction(_ sender: Any?)
    {
        self.scaleUpTransformScaleAnimation!.beginTime = self.filledCircleLayer!.convertTime(CACurrentMediaTime(), from: nil) + 1e-06
        self.filledCircleLayer?.add(self.scaleUpTransformScaleAnimation!, forKey: "scaleUpTransformScaleAnimation")

        self.backgroundcolorAnimation14!.beginTime = self.filledCircleLayer!.convertTime(CACurrentMediaTime(), from: nil) + 0.00126903553299492
        self.filledCircleLayer?.add(self.backgroundcolorAnimation14!, forKey: "backgroundcolorAnimation14")

        self.scaleUpTransformScaleAnimation1!.beginTime = self.whiteCircleLayer!.convertTime(CACurrentMediaTime(), from: nil) + 0.178196158846742
        self.whiteCircleLayer?.add(self.scaleUpTransformScaleAnimation1!, forKey: "scaleUpTransformScaleAnimation1")

        self.showAnimation!.beginTime = self.lovedHeartLayer!.convertTime(CACurrentMediaTime(), from: nil) + 1e-06
        self.lovedHeartLayer?.add(self.showAnimation!, forKey: "showAnimation")

        self.loveScaleAnimation!.beginTime = self.lovedHeartLayer!.convertTime(CACurrentMediaTime(), from: nil) + 0.444901821917808
        self.lovedHeartLayer?.add(self.loveScaleAnimation!, forKey: "loveScaleAnimation")

        self.hideAnimation1!.beginTime = self.unlovedHeartLayer!.convertTime(CACurrentMediaTime(), from: nil) + 1e-06
        self.unlovedHeartLayer?.add(self.hideAnimation1!, forKey: "hideAnimation1")

        self.explodeAnimation!.beginTime = self.particleNearLayer!.convertTime(CACurrentMediaTime(), from: nil) + 0.308730339208418
        self.particleNearLayer?.add(self.explodeAnimation!, forKey: "explodeAnimation")

        self.explodeAnimation1!.beginTime = self.particleFarLayer!.convertTime(CACurrentMediaTime(), from: nil) + 0.409379241334053
        self.particleFarLayer?.add(self.explodeAnimation1!, forKey: "explodeAnimation1")

        self.explodeAnimation2!.beginTime = self.particleNearLayer1!.convertTime(CACurrentMediaTime(), from: nil) + 0.308730339208418
        self.particleNearLayer1?.add(self.explodeAnimation2!, forKey: "explodeAnimation2")

        self.explodeAnimation3!.beginTime = self.particleFarLayer1!.convertTime(CACurrentMediaTime(), from: nil) + 0.35945806033786
        self.particleFarLayer1?.add(self.explodeAnimation3!, forKey: "explodeAnimation3")

        self.explodeAnimation4!.beginTime = self.particleNearLayer2!.convertTime(CACurrentMediaTime(), from: nil) + 0.308730339208418
        self.particleNearLayer2?.add(self.explodeAnimation4!, forKey: "explodeAnimation4")

        self.explodeAnimation5!.beginTime = self.particleFarLayer2!.convertTime(CACurrentMediaTime(), from: nil) + 0.35945806033786
        self.particleFarLayer2?.add(self.explodeAnimation5!, forKey: "explodeAnimation5")

        self.explodeAnimation6!.beginTime = self.particleNearLayer3!.convertTime(CACurrentMediaTime(), from: nil) + 0.308730339208418
        self.particleNearLayer3?.add(self.explodeAnimation6!, forKey: "explodeAnimation6")

        self.explodeAnimation7!.beginTime = self.particleFarLayer3!.convertTime(CACurrentMediaTime(), from: nil) + 0.35945806033786
        self.particleFarLayer3?.add(self.explodeAnimation7!, forKey: "explodeAnimation7")

        self.explodeAnimation8!.beginTime = self.particleNearLayer4!.convertTime(CACurrentMediaTime(), from: nil) + 0.308730339208418
        self.particleNearLayer4?.add(self.explodeAnimation8!, forKey: "explodeAnimation8")

        self.explodeAnimation9!.beginTime = self.particleFarLayer4!.convertTime(CACurrentMediaTime(), from: nil) + 0.35945806033786
        self.particleFarLayer4?.add(self.explodeAnimation9!, forKey: "explodeAnimation9")

        self.explodeAnimation10!.beginTime = self.particleNearLayer5!.convertTime(CACurrentMediaTime(), from: nil) + 0.308730339208418
        self.particleNearLayer5?.add(self.explodeAnimation10!, forKey: "explodeAnimation10")

        self.explodeAnimation11!.beginTime = self.particleFarLayer5!.convertTime(CACurrentMediaTime(), from: nil) + 0.35945806033786
        self.particleFarLayer5?.add(self.explodeAnimation11!, forKey: "explodeAnimation11")

        self.explodeAnimation12!.beginTime = self.particleNearLayer6!.convertTime(CACurrentMediaTime(), from: nil) + 0.308730339208418
        self.particleNearLayer6?.add(self.explodeAnimation12!, forKey: "explodeAnimation12")

        self.explodeAnimation13!.beginTime = self.particleFarLayer6!.convertTime(CACurrentMediaTime(), from: nil) + 0.35945806033786
        self.particleFarLayer6?.add(self.explodeAnimation13!, forKey: "explodeAnimation13")
    }

    @IBAction func resetLoveAnimationAction(_ sender: Any?)
    {
        self.showAnimation1!.beginTime = self.unlovedHeartLayer!.convertTime(CACurrentMediaTime(), from: nil)
        self.unlovedHeartLayer?.add(self.showAnimation1!, forKey: "showAnimation1")

        self.hideAnimation!.beginTime = self.lovedHeartLayer!.convertTime(CACurrentMediaTime(), from: nil)
        self.lovedHeartLayer?.add(self.hideAnimation!, forKey: "hideAnimation")

        self.unloveScaleAnimation!.beginTime = self.unlovedHeartLayer!.convertTime(CACurrentMediaTime(), from: nil)
        self.unlovedHeartLayer?.add(self.unloveScaleAnimation!, forKey: "unloveScaleAnimation")

        self.unloveFillcolorAnimation!.beginTime = self.unlovedHeartLayer!.convertTime(CACurrentMediaTime(), from: nil)
        self.unlovedHeartLayer?.add(self.unloveFillcolorAnimation!, forKey: "unloveFillcolorAnimation")

        self.scaleDownTransformScaleAnimation1!.beginTime = self.whiteCircleLayer!.convertTime(CACurrentMediaTime(), from: nil)
        self.whiteCircleLayer?.add(self.scaleDownTransformScaleAnimation1!, forKey: "scaleDownTransformScaleAnimation1")

        self.scaleDownTransformScaleAnimation!.beginTime = self.filledCircleLayer!.convertTime(CACurrentMediaTime(), from: nil)
        self.filledCircleLayer?.add(self.scaleDownTransformScaleAnimation!, forKey: "scaleDownTransformScaleAnimation")
    }

    @IBAction func playLoveHoverAction(_ sender: Any?)
    {
        self.hoverFillcolorAnimation!.beginTime = self.unlovedHeartLayer!.convertTime(CACurrentMediaTime(), from: nil)
        self.unlovedHeartLayer?.add(self.hoverFillcolorAnimation!, forKey: "hoverFillcolorAnimation")
    }
}
