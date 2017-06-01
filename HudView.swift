//
//  HudView.swift
//  Exported from Kite Compositor for Mac 1.4
//
//  Created on 5/30/17, 6:41 PM.
//


import UIKit

class HudView: UIView
{
    // MARK: - Properties

    private var ovalLayer: CAShapeLayer?
    private var progressBarBackgroundLayer: CAShapeLayer?
    private var progressBarLayer: CAShapeLayer?

    private var strokeendAnimation: CABasicAnimation?
    private var opacityAnimation: CABasicAnimation?
    private var pathAnimation: CAKeyframeAnimation?
    private var positionAnimation: CABasicAnimation?
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
        let backgroundcolor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.6657184103)
        let bordercolor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        let strokecolor = UIColor.white
        let strokecolor1 = UIColor(red: 0.572306752204895, green: 0.572306752204895, blue: 0.572306752204895, alpha: 1.0)

        // Paths
        //
        let ovalPath = CGMutablePath()
        ovalPath.move(to: CGPoint(x: 53.5, y: 107.0))
        ovalPath.addCurve(to: CGPoint(x: 107.0, y: 53.5), control1: CGPoint(x: 83.0469970703125, y: 107.0), control2: CGPoint(x: 107.0, y: 83.0469970703125))
        ovalPath.addCurve(to: CGPoint(x: 53.5, y: 0.0), control1: CGPoint(x: 107.0, y: 23.9529991149902), control2: CGPoint(x: 83.0469970703125, y: 0.0))
        ovalPath.addCurve(to: CGPoint(x: 0.0, y: 53.5), control1: CGPoint(x: 23.9529991149902, y: 0.0), control2: CGPoint(x: 0.0, y: 23.9529991149902))
        ovalPath.addCurve(to: CGPoint(x: 53.5, y: 107.0), control1: CGPoint(x: 0.0, y: 83.0469970703125), control2: CGPoint(x: 23.9529991149902, y: 107.0))
        ovalPath.closeSubpath()
        ovalPath.move(to: CGPoint(x: 53.5, y: 107.0))

        let progressBarBackgroundPath = CGMutablePath()
        progressBarBackgroundPath.move(to: CGPoint(x: 0.0, y: 10.0))
        progressBarBackgroundPath.addLine(to: CGPoint(x: 16.0, y: 10.0))
        progressBarBackgroundPath.addLine(to: CGPoint(x: 135.0, y: 10.0))

        let pathPath = CGMutablePath()
        pathPath.move(to: CGPoint(x: 0.0, y: 10.0))
        pathPath.addLine(to: CGPoint(x: 16.0, y: 10.0))
        pathPath.addLine(to: CGPoint(x: 135.0, y: 10.0))

        let pathPath1 = CGMutablePath()
        pathPath1.move(to: CGPoint(x: 0.0, y: 23.0))
        pathPath1.addLine(to: CGPoint(x: 16.0, y: 45.5))
        pathPath1.addLine(to: CGPoint(x: 52.5, y: 0.0))

        let progressBarPath = CGMutablePath()
        progressBarPath.move(to: CGPoint(x: 0.0, y: 10.0))
        progressBarPath.addLine(to: CGPoint(x: 16.0, y: 10.0))
        progressBarPath.addLine(to: CGPoint(x: 135.0, y: 10.0))

        // Hud
        //
        let hudLayer = CALayer()
        hudLayer.name = "Hud"
        hudLayer.bounds = CGRect(x: 0.0, y: 0.0, width: 155.0, height: 155.0)
        hudLayer.position = CGPoint(x: 0.0, y: 0.0)
        hudLayer.anchorPoint = CGPoint(x: 0.0, y: 0.0)
        hudLayer.contentsGravity = kCAGravityCenter
        hudLayer.backgroundColor = backgroundcolor.cgColor
        hudLayer.cornerRadius = 10.0
        hudLayer.borderWidth = 1.0
        hudLayer.borderColor = bordercolor.cgColor
        hudLayer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        hudLayer.fillMode = kCAFillModeForwards

            // Hud Sublayers
            //

            // Oval
            //
            let ovalLayer = CAShapeLayer()
            ovalLayer.name = "Oval"
            ovalLayer.bounds = CGRect(x: 0.0, y: 0.0, width: 107.0, height: 107.0)
            ovalLayer.position = CGPoint(x: 78.0, y: 78.0)
            ovalLayer.contentsGravity = kCAGravityCenter
            ovalLayer.transform = CATransform3D( m11: -0.828144013881683, m12: -0.560514986515045, m13: 0.0, m14: 0.0,
                                             m21: 0.560514986515045, m22: -0.828144013881683, m23: 0.0, m24: 0.0,
                                             m31: 0.0, m32: 0.0, m33: 1.0, m34: 0.0,
                                             m41: 0.0, m42: 0.0, m43: 0.0, m44: 1.0 )

                // Oval Animations
                //

                // strokeEnd
                //
                let strokeendAnimation = CABasicAnimation()
                strokeendAnimation.beginTime = 2.5
                strokeendAnimation.duration = 1.46108969155844
                strokeendAnimation.fillMode = kCAFillModeForwards
                strokeendAnimation.isRemovedOnCompletion = false
                strokeendAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionDefault)
                strokeendAnimation.keyPath = "strokeEnd"
                strokeendAnimation.toValue = 1

            ovalLayer.path = ovalPath
            ovalLayer.fillColor = bordercolor.cgColor
            ovalLayer.strokeColor = strokecolor.cgColor
            ovalLayer.fillRule = kCAFillRuleEvenOdd
            ovalLayer.lineWidth = 2.0
            ovalLayer.strokeEnd = 0.0

            hudLayer.addSublayer(ovalLayer)

            // Progress Bar Background
            //
            let progressBarBackgroundLayer = CAShapeLayer()
            progressBarBackgroundLayer.name = "Progress Bar Background"
            progressBarBackgroundLayer.bounds = CGRect(x: 0.0, y: 0.0, width: 135.0, height: 27.0)
            progressBarBackgroundLayer.position = CGPoint(x: 10.0000000000064, y: 69.0)
            progressBarBackgroundLayer.anchorPoint = CGPoint(x: 0.0, y: 0.0)
            progressBarBackgroundLayer.contentsGravity = kCAGravityCenter

                // Progress Bar Background Animations
                //

                // opacity
                //
                let opacityAnimation = CABasicAnimation()
                opacityAnimation.beginTime = 2.5
                opacityAnimation.duration = 0.001
                opacityAnimation.fillMode = kCAFillModeForwards
                opacityAnimation.isRemovedOnCompletion = false
                opacityAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                opacityAnimation.keyPath = "opacity"
                opacityAnimation.toValue = 0

            progressBarBackgroundLayer.path = progressBarBackgroundPath
            progressBarBackgroundLayer.fillColor = bordercolor.cgColor
            progressBarBackgroundLayer.strokeColor = strokecolor1.cgColor
            progressBarBackgroundLayer.fillRule = kCAFillRuleEvenOdd
            progressBarBackgroundLayer.lineCap = kCALineCapRound
            progressBarBackgroundLayer.lineJoin = kCALineJoinRound
            progressBarBackgroundLayer.lineWidth = 4.0

            hudLayer.addSublayer(progressBarBackgroundLayer)

            // Progress Bar
            //
            let progressBarLayer = CAShapeLayer()
            progressBarLayer.name = "Progress Bar"
            progressBarLayer.bounds = CGRect(x: 0.0, y: 0.0, width: 135.0, height: 27.0)
            progressBarLayer.position = CGPoint(x: 10.0000000000064, y: 69.0)
            progressBarLayer.anchorPoint = CGPoint(x: 0.0, y: 0.0)
            progressBarLayer.contentsGravity = kCAGravityCenter
            progressBarLayer.borderColor = bordercolor.cgColor

                // Progress Bar Animations
                //

                // path
                //
                let pathAnimation = CAKeyframeAnimation()
                pathAnimation.beginTime = 2.5
                pathAnimation.duration = 0.999999
                pathAnimation.fillMode = kCAFillModeForwards
                pathAnimation.isRemovedOnCompletion = false
                pathAnimation.keyPath = "path"
                pathAnimation.values = [ pathPath, pathPath1 ]
                pathAnimation.timingFunctions = [ CAMediaTimingFunction(name: kCAMediaTimingFunctionDefault) ]
                pathAnimation.calculationMode = kCAAnimationLinear


                // position
                //
                let positionAnimation = CABasicAnimation()
                positionAnimation.beginTime = 2.5
                positionAnimation.duration = 0.999999
                positionAnimation.fillMode = kCAFillModeForwards
                positionAnimation.isRemovedOnCompletion = false
                positionAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionDefault)
                positionAnimation.keyPath = "position"
                positionAnimation.toValue = CGPoint(x: 51.0, y: 60.0)


                // strokeEnd
                //
                let strokeendAnimation1 = CAKeyframeAnimation()
                strokeendAnimation1.beginTime = 1e-06
                strokeendAnimation1.duration = 2.55022121428571
                strokeendAnimation1.fillMode = kCAFillModeForwards
                strokeendAnimation1.isRemovedOnCompletion = false
                strokeendAnimation1.keyPath = "strokeEnd"
                strokeendAnimation1.values = [ 0, 0, 0.1, 0.1, 0.4, 0.4, 0.85, 0.85, 1 ]
                strokeendAnimation1.keyTimes = [ 0, 0.2, 0.25, 0.3, 0.4, 0.45, 0.8, 0.85, 1 ]
                strokeendAnimation1.timingFunctions = [ CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut), CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut), CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut), CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut), CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut), CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut), CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut), CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut) ]
                strokeendAnimation1.calculationMode = kCAAnimationLinear

            progressBarLayer.path = progressBarPath
            progressBarLayer.fillColor = bordercolor.cgColor
            progressBarLayer.strokeColor = strokecolor.cgColor
            progressBarLayer.fillRule = kCAFillRuleEvenOdd
            progressBarLayer.lineCap = kCALineCapRound
            progressBarLayer.lineJoin = kCALineJoinRound
            progressBarLayer.lineWidth = 4.0
            progressBarLayer.strokeEnd = 0.0

            hudLayer.addSublayer(progressBarLayer)

        self.layer.addSublayer(hudLayer)
        // Layer Instance Assignments
        //
        self.ovalLayer = ovalLayer
        self.progressBarBackgroundLayer = progressBarBackgroundLayer
        self.progressBarLayer = progressBarLayer
        // Animation Instance Assignments
        //
        self.strokeendAnimation = strokeendAnimation
        self.opacityAnimation = opacityAnimation
        self.pathAnimation = pathAnimation
        self.positionAnimation = positionAnimation
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
        self.startProgressIndicatorAction(self)
    }

    // MARK: - Actions

    @IBAction func startProgressIndicatorAction(_ sender: Any?)
    {
        self.strokeendAnimation!.beginTime = self.ovalLayer!.convertTime(CACurrentMediaTime(), from: nil) + 2.5
        self.ovalLayer?.add(self.strokeendAnimation!, forKey: "strokeendAnimation")

        self.opacityAnimation!.beginTime = self.progressBarBackgroundLayer!.convertTime(CACurrentMediaTime(), from: nil) + 2.5
        self.progressBarBackgroundLayer?.add(self.opacityAnimation!, forKey: "opacityAnimation")

        self.strokeendAnimation1!.beginTime = self.progressBarLayer!.convertTime(CACurrentMediaTime(), from: nil) + 1e-06
        self.progressBarLayer?.add(self.strokeendAnimation1!, forKey: "strokeendAnimation1")

        self.positionAnimation!.beginTime = self.progressBarLayer!.convertTime(CACurrentMediaTime(), from: nil) + 2.5
        self.progressBarLayer?.add(self.positionAnimation!, forKey: "positionAnimation")

        self.pathAnimation!.beginTime = self.progressBarLayer!.convertTime(CACurrentMediaTime(), from: nil) + 2.5
        self.progressBarLayer?.add(self.pathAnimation!, forKey: "pathAnimation")
    }
}
