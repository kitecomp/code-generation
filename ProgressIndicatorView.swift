//
//  ProgressIndicatorView.swift
//  Exported from Kite Compositor for Mac 1.4
//
//  Created on 5/30/17, 6:47 PM.
//


import UIKit

class ProgressIndicatorView: UIView
{
    // MARK: - Properties

    private var innerRingLayer: CAShapeLayer?
    private var outerRingLayer: CAShapeLayer?

    private var transformRotationZAnimation: CAKeyframeAnimation?
    private var strokeendAnimation: CAKeyframeAnimation?
    private var transformRotationZAnimation1: CAKeyframeAnimation?
    private var strokeendAnimation1: CAKeyframeAnimation?

    // MARK: - Initialization

    init()
    {
        super.init(frame: CGRect(x: 0, y: 0, width: 155.0, height: 155.0))
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
        let backgroundcolor = UIColor.white
        let bordercolor = UIColor(red: 0.706456124782562, green: 0.706456124782562, blue: 0.706456124782562, alpha: 1.0)
        let backgroundcolor1 = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        let strokecolor = UIColor(red: 0.592, green: 0.592, blue: 0.592, alpha: 1.0)

        // Paths
        //
        let outerRingPath = CGMutablePath()
        outerRingPath.move(to: CGPoint(x: 25.0, y: 50.0))
        outerRingPath.addCurve(to: CGPoint(x: 50.0, y: 25.0), control1: CGPoint(x: 38.806999206543, y: 50.0), control2: CGPoint(x: 50.0, y: 38.806999206543))
        outerRingPath.addCurve(to: CGPoint(x: 25.0, y: 0.0), control1: CGPoint(x: 50.0, y: 11.1929998397827), control2: CGPoint(x: 38.806999206543, y: 0.0))
        outerRingPath.addCurve(to: CGPoint(x: 0.0, y: 25.0), control1: CGPoint(x: 11.1929998397827, y: 0.0), control2: CGPoint(x: 0.0, y: 11.1929998397827))
        outerRingPath.addCurve(to: CGPoint(x: 25.0, y: 50.0), control1: CGPoint(x: 0.0, y: 38.806999206543), control2: CGPoint(x: 11.1929998397827, y: 50.0))
        outerRingPath.closeSubpath()
        outerRingPath.move(to: CGPoint(x: 25.0, y: 50.0))

        let innerRingPath = CGMutablePath()
        innerRingPath.move(to: CGPoint(x: 18.0, y: 36.0))
        innerRingPath.addCurve(to: CGPoint(x: 36.0, y: 18.0), control1: CGPoint(x: 27.9409999847412, y: 36.0), control2: CGPoint(x: 36.0, y: 27.9409999847412))
        innerRingPath.addCurve(to: CGPoint(x: 18.0, y: 0.0), control1: CGPoint(x: 36.0, y: 8.05900001525879), control2: CGPoint(x: 27.9409999847412, y: 0.0))
        innerRingPath.addCurve(to: CGPoint(x: 0.0, y: 18.0), control1: CGPoint(x: 8.05900001525879, y: 0.0), control2: CGPoint(x: 0.0, y: 8.05900001525879))
        innerRingPath.addCurve(to: CGPoint(x: 18.0, y: 36.0), control1: CGPoint(x: 0.0, y: 27.9409999847412), control2: CGPoint(x: 8.05900001525879, y: 36.0))
        innerRingPath.closeSubpath()
        innerRingPath.move(to: CGPoint(x: 18.0, y: 36.0))

        // Progress Indicator
        //
        let progressIndicatorLayer = CALayer()
        progressIndicatorLayer.name = "Progress Indicator"
        progressIndicatorLayer.bounds = CGRect(x: 0.0, y: 0.0, width: 155.0, height: 155.0)
        progressIndicatorLayer.position = CGPoint(x: 0.0, y: 0.0)
        progressIndicatorLayer.anchorPoint = CGPoint(x: 0.0, y: 0.0)
        progressIndicatorLayer.contentsGravity = kCAGravityCenter
        progressIndicatorLayer.backgroundColor = backgroundcolor.cgColor
        progressIndicatorLayer.cornerRadius = 10.0
        progressIndicatorLayer.borderWidth = 1.0
        progressIndicatorLayer.borderColor = bordercolor.cgColor
        progressIndicatorLayer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        progressIndicatorLayer.timeOffset = 2.0
        progressIndicatorLayer.fillMode = kCAFillModeForwards

            // Progress Indicator Sublayers
            //

            // Progress Indicator
            //
            let progressIndicatorLayer1 = CALayer()
            progressIndicatorLayer1.name = "Progress Indicator"
            progressIndicatorLayer1.bounds = CGRect(x: 0.0, y: 0.0, width: 50.0, height: 50.0)
            progressIndicatorLayer1.position = CGPoint(x: 53.0, y: 43.0)
            progressIndicatorLayer1.anchorPoint = CGPoint(x: 0.0, y: 0.0)
            progressIndicatorLayer1.contentsGravity = kCAGravityCenter
            progressIndicatorLayer1.backgroundColor = backgroundcolor1.cgColor
            progressIndicatorLayer1.borderWidth = 1.0
            progressIndicatorLayer1.borderColor = backgroundcolor1.cgColor
            progressIndicatorLayer1.shadowOffset = CGSize(width: 0.0, height: 1.0)
            progressIndicatorLayer1.fillMode = kCAFillModeForwards

                // Progress Indicator Sublayers
                //

                // Outer Ring
                //
                let outerRingLayer = CAShapeLayer()
                outerRingLayer.name = "Outer Ring"
                outerRingLayer.bounds = CGRect(x: 0.0, y: 0.0, width: 50.0, height: 50.0)
                outerRingLayer.position = CGPoint(x: 25.0, y: 35.0)
                outerRingLayer.contentsGravity = kCAGravityCenter
                outerRingLayer.borderColor = backgroundcolor1.cgColor

                    // Outer Ring Animations
                    //

                    // transform.rotation.z
                    //
                    let transformRotationZAnimation = CAKeyframeAnimation()
                    transformRotationZAnimation.beginTime = 1e-06
                    transformRotationZAnimation.duration = 2.4999995
                    transformRotationZAnimation.repeatCount = 100.0
                    transformRotationZAnimation.autoreverses = true
                    transformRotationZAnimation.fillMode = kCAFillModeForwards
                    transformRotationZAnimation.isRemovedOnCompletion = false
                    transformRotationZAnimation.keyPath = "transform.rotation.z"
                    transformRotationZAnimation.values = [ 0, 28.26 ]
                    transformRotationZAnimation.calculationMode = kCAAnimationLinear


                    // strokeEnd
                    //
                    let strokeendAnimation = CAKeyframeAnimation()
                    strokeendAnimation.beginTime = 1e-06
                    strokeendAnimation.duration = 2.4999995
                    strokeendAnimation.repeatCount = 100.0
                    strokeendAnimation.autoreverses = true
                    strokeendAnimation.fillMode = kCAFillModeForwards
                    strokeendAnimation.isRemovedOnCompletion = false
                    strokeendAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                    strokeendAnimation.keyPath = "strokeEnd"
                    strokeendAnimation.values = [ 1, 0, 1 ]
                    strokeendAnimation.calculationMode = kCAAnimationLinear

                outerRingLayer.path = outerRingPath
                outerRingLayer.fillColor = backgroundcolor1.cgColor
                outerRingLayer.strokeColor = strokecolor.cgColor
                outerRingLayer.fillRule = kCAFillRuleEvenOdd
                outerRingLayer.lineDashPattern = [ 2, 4 ]
                outerRingLayer.lineWidth = 2.0

                progressIndicatorLayer1.addSublayer(outerRingLayer)

                // Inner Ring
                //
                let innerRingLayer = CAShapeLayer()
                innerRingLayer.name = "Inner Ring"
                innerRingLayer.bounds = CGRect(x: 0.0, y: 0.0, width: 36.0, height: 36.0)
                innerRingLayer.position = CGPoint(x: 25.0, y: 35.0)
                innerRingLayer.contentsGravity = kCAGravityCenter

                    // Inner Ring Animations
                    //

                    // transform.rotation.z
                    //
                    let transformRotationZAnimation1 = CAKeyframeAnimation()
                    transformRotationZAnimation1.beginTime = 0.54701271875
                    transformRotationZAnimation1.duration = 2.726493640625
                    transformRotationZAnimation1.repeatCount = 100.0
                    transformRotationZAnimation1.autoreverses = true
                    transformRotationZAnimation1.fillMode = kCAFillModeForwards
                    transformRotationZAnimation1.isRemovedOnCompletion = false
                    transformRotationZAnimation1.keyPath = "transform.rotation.z"
                    transformRotationZAnimation1.values = [ 0, 28.26 ]
                    transformRotationZAnimation1.calculationMode = kCAAnimationLinear


                    // strokeEnd
                    //
                    let strokeendAnimation1 = CAKeyframeAnimation()
                    strokeendAnimation1.beginTime = 0.54701271875
                    strokeendAnimation1.duration = 2.726493640625
                    strokeendAnimation1.repeatCount = 100.0
                    strokeendAnimation1.autoreverses = true
                    strokeendAnimation1.fillMode = kCAFillModeForwards
                    strokeendAnimation1.isRemovedOnCompletion = false
                    strokeendAnimation1.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                    strokeendAnimation1.keyPath = "strokeEnd"
                    strokeendAnimation1.values = [ 1, 0, 1, 0, 1 ]
                    strokeendAnimation1.calculationMode = kCAAnimationLinear

                innerRingLayer.path = innerRingPath
                innerRingLayer.fillColor = backgroundcolor1.cgColor
                innerRingLayer.strokeColor = strokecolor.cgColor
                innerRingLayer.fillRule = kCAFillRuleEvenOdd
                innerRingLayer.lineWidth = 1.0

                progressIndicatorLayer1.addSublayer(innerRingLayer)

            progressIndicatorLayer.addSublayer(progressIndicatorLayer1)

        self.layer.addSublayer(progressIndicatorLayer)
        // Layer Instance Assignments
        //
        self.innerRingLayer = innerRingLayer
        self.outerRingLayer = outerRingLayer
        // Animation Instance Assignments
        //
        self.transformRotationZAnimation = transformRotationZAnimation
        self.strokeendAnimation = strokeendAnimation
        self.transformRotationZAnimation1 = transformRotationZAnimation1
        self.strokeendAnimation1 = strokeendAnimation1

    }

    // MARK: - Responder

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        guard let location = touches.first?.location(in: self.superview),
              let hitLayer = self.layer.presentation()?.hitTest(location) else { return }

        print("Layer \(hitLayer.name ?? String(describing: hitLayer)) was tapped.")

        // Call action methods
        //
        self.startProgressAction(self)
    }

    // MARK: - Actions

    @IBAction func startProgressAction(_ sender: Any?)
    {
        self.transformRotationZAnimation1!.beginTime = self.innerRingLayer!.convertTime(CACurrentMediaTime(), from: nil) + 0.54701271875
        self.innerRingLayer?.add(self.transformRotationZAnimation1!, forKey: "transformRotationZAnimation1")

        self.strokeendAnimation1!.beginTime = self.innerRingLayer!.convertTime(CACurrentMediaTime(), from: nil) + 0.54701271875
        self.innerRingLayer?.add(self.strokeendAnimation1!, forKey: "strokeendAnimation1")

        self.transformRotationZAnimation!.beginTime = self.outerRingLayer!.convertTime(CACurrentMediaTime(), from: nil) + 1e-06
        self.outerRingLayer?.add(self.transformRotationZAnimation!, forKey: "transformRotationZAnimation")

        self.strokeendAnimation!.beginTime = self.outerRingLayer!.convertTime(CACurrentMediaTime(), from: nil) + 1e-06
        self.outerRingLayer?.add(self.strokeendAnimation!, forKey: "strokeendAnimation")
    }
}
