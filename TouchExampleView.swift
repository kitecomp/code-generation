//
//  TouchExampleView.swift
//  Exported from Kite Compositor for Mac 1.4
//
//  Created on 5/30/17, 6:48 PM.
//


import UIKit

class TouchExampleView: UIView
{
    // MARK: - Properties

    private var touchLayer: CAShapeLayer?
    private var dPressLayer: CALayer?
    private var dTouchPluseLayer: CALayer?
    private var backdropLayer: CAGradientLayer?

    private var filtersGaussianBlurInputradiusAnimation: CABasicAnimation?
    private var transformScaleAnimation: CABasicAnimation?
    private var opacityAnimation: CABasicAnimation?
    private var transformScaleAnimation1: CABasicAnimation?
    private var opacityAnimation1: CABasicAnimation?
    private var transformScaleAnimation2: CAKeyframeAnimation?
    private var positionAnimation: CAKeyframeAnimation?

    // MARK: - Initialization

    init()
    {
        super.init(frame: CGRect(x: 0, y: 0, width: 212.0, height: 263.0))
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
        let backgroundcolor = UIColor(red: 0.55, green: 0.39875, blue: 0.11, alpha: 0.0)
        let bordercolor = UIColor(red: 0.75, green: 0.54375, blue: 0.15, alpha: 0.0)
        let bordercolor1 = UIColor(red: 0.7619375, green: 0.8, blue: 0.104, alpha: 0.0)
        let fillcolor = UIColor(red: 0.847, green: 0.847, blue: 0.847, alpha: 1.0)
        let strokecolor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        let fillcolor1 = UIColor.white
        let fillcolor2 = UIColor(red: 0.0, green: 0.325490196078431, blue: 0.529411764705882, alpha: 1.0)
        let color = UIColor(red: 0.965582489967346, green: 0.528873860836029, blue: 0.536750793457031, alpha: 1.0)
        let color1 = UIColor(red: 0.863188862800598, green: 0.267682075500488, blue: 0.521750867366791, alpha: 1.0)
        let backgroundcolor1 = UIColor(red: 0.887230098247528, green: 0.887230098247528, blue: 0.887230098247528, alpha: 1.0)
        let bordercolor2 = UIColor(red: 0.7502375, green: 0.2256, blue: 0.94, alpha: 0.0)
        let backgroundcolor2 = UIColor(red: 0.59, green: 0.2371984375, blue: 0.0649, alpha: 0.0)
        let bordercolor3 = UIColor(red: 0.79, green: 0.3176046875, blue: 0.0869, alpha: 0.0)
        let bordercolor4 = UIColor(red: 0.615613460540771, green: 0.615613460540771, blue: 0.615613460540771, alpha: 0.0)
        let fillcolor3 = UIColor(red: 0.895749151706696, green: 0.895749151706696, blue: 0.895749151706696, alpha: 0.738513764880952)
        let bordercolor5 = UIColor(red: 0.0987999999999999, green: 0.589534375, blue: 0.76, alpha: 0.0)
        let color2 = UIColor(red: 0.9707096219, green: 0.3355212212, blue: 0.31956774, alpha: 1.0)
        let color3 = UIColor(red: 0.7928464413, green: 0.1371592879, blue: 0.4504650831, alpha: 1.0)
        let bordercolor6 = UIColor(red: 0.91, green: 0.6153875, blue: 0.2366, alpha: 0.0)
        let color4 = UIColor(red: 0.894286334514618, green: 0.734728813171387, blue: 0.091309443116188, alpha: 1.0)
        let color5 = UIColor(red: 0.86467444896698, green: 0.47640597820282, blue: 0.0637127608060837, alpha: 1.0)
        let color6 = UIColor(red: 0.192114293575287, green: 0.787626028060913, blue: 0.467507779598236, alpha: 1.0)
        let color7 = UIColor(red: 0.225147306919098, green: 0.598560214042664, blue: 0.142712563276291, alpha: 1.0)
        let color8 = UIColor(red: 0.186014071106911, green: 0.721511006355286, blue: 0.832612037658691, alpha: 1.0)
        let color9 = UIColor(red: 0.169295012950897, green: 0.543729603290558, blue: 0.899851560592651, alpha: 1.0)
        let fillcolor4 = UIColor(red: 0.958960354328156, green: 0.958960354328156, blue: 0.958960354328156, alpha: 0.767926897321429)
        let bordercolor7 = UIColor(red: 0.1548, green: 0.86, blue: 0.678190625, alpha: 0.0)
        let foregroundcolor = UIColor.black
        let strokecolor1 = UIColor(red: 0.592, green: 0.592, blue: 0.592, alpha: 1.0)
        let shadowcolor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.525641928464122)

        // Paths
        //
        let screenPath = CGMutablePath()
        screenPath.move(to: CGPoint(x: 0.0, y: 0.0))
        screenPath.addLine(to: CGPoint(x: 100.0, y: 0.0))
        screenPath.addLine(to: CGPoint(x: 100.0, y: 178.0))
        screenPath.addLine(to: CGPoint(x: 0.0, y: 178.0))
        screenPath.addLine(to: CGPoint(x: 0.0, y: 0.0))
        screenPath.closeSubpath()
        screenPath.move(to: CGPoint(x: 0.0, y: 0.0))

        let dockPath = CGMutablePath()
        dockPath.move(to: CGPoint(x: 0.0, y: 0.0))
        dockPath.addLine(to: CGPoint(x: 100.0, y: 0.0))
        dockPath.addLine(to: CGPoint(x: 100.0, y: 30.0))
        dockPath.addLine(to: CGPoint(x: 0.0, y: 30.0))
        dockPath.addLine(to: CGPoint(x: 0.0, y: 0.0))
        dockPath.closeSubpath()
        dockPath.move(to: CGPoint(x: 0.0, y: 0.0))

        let iconRowPath = CGMutablePath()
        iconRowPath.move(to: CGPoint(x: 0.0, y: 4.98999977111816))
        iconRowPath.addCurve(to: CGPoint(x: 4.98999977111816, y: 0.0), control1: CGPoint(x: 0.0, y: 2.23399996757507), control2: CGPoint(x: 2.24300003051758, y: 0.0))
        iconRowPath.addLine(to: CGPoint(x: 13.0100002288818, y: 0.0))
        iconRowPath.addCurve(to: CGPoint(x: 18.0, y: 4.98999977111816), control1: CGPoint(x: 15.7659997940063, y: 0.0), control2: CGPoint(x: 18.0, y: 2.24300003051758))
        iconRowPath.addLine(to: CGPoint(x: 18.0, y: 13.0100002288818))
        iconRowPath.addCurve(to: CGPoint(x: 13.0100002288818, y: 18.0), control1: CGPoint(x: 18.0, y: 15.7659997940063), control2: CGPoint(x: 15.7569999694824, y: 18.0))
        iconRowPath.addLine(to: CGPoint(x: 4.98999977111816, y: 18.0))
        iconRowPath.addCurve(to: CGPoint(x: 0.0, y: 13.0100002288818), control1: CGPoint(x: 2.23399996757507, y: 18.0), control2: CGPoint(x: 0.0, y: 15.7569999694824))
        iconRowPath.addLine(to: CGPoint(x: 0.0, y: 4.98999977111816))
        iconRowPath.closeSubpath()
        iconRowPath.move(to: CGPoint(x: 23.0, y: 4.98999977111816))
        iconRowPath.addCurve(to: CGPoint(x: 27.9899997711182, y: 0.0), control1: CGPoint(x: 23.0, y: 2.23399996757507), control2: CGPoint(x: 25.2430000305176, y: 0.0))
        iconRowPath.addLine(to: CGPoint(x: 36.0099983215332, y: 0.0))
        iconRowPath.addCurve(to: CGPoint(x: 41.0, y: 4.98999977111816), control1: CGPoint(x: 38.765998840332, y: 0.0), control2: CGPoint(x: 41.0, y: 2.24300003051758))
        iconRowPath.addLine(to: CGPoint(x: 41.0, y: 13.0100002288818))
        iconRowPath.addCurve(to: CGPoint(x: 36.0099983215332, y: 18.0), control1: CGPoint(x: 41.0, y: 15.7659997940063), control2: CGPoint(x: 38.7569999694824, y: 18.0))
        iconRowPath.addLine(to: CGPoint(x: 27.9899997711182, y: 18.0))
        iconRowPath.addCurve(to: CGPoint(x: 23.0, y: 13.0100002288818), control1: CGPoint(x: 25.2339992523193, y: 18.0), control2: CGPoint(x: 23.0, y: 15.7569999694824))
        iconRowPath.addLine(to: CGPoint(x: 23.0, y: 4.98999977111816))
        iconRowPath.closeSubpath()
        iconRowPath.move(to: CGPoint(x: 47.0, y: 4.98999977111816))
        iconRowPath.addCurve(to: CGPoint(x: 51.9900016784668, y: 0.0), control1: CGPoint(x: 47.0, y: 2.23399996757507), control2: CGPoint(x: 49.2430000305176, y: 0.0))
        iconRowPath.addLine(to: CGPoint(x: 60.0099983215332, y: 0.0))
        iconRowPath.addCurve(to: CGPoint(x: 65.0, y: 4.98999977111816), control1: CGPoint(x: 62.765998840332, y: 0.0), control2: CGPoint(x: 65.0, y: 2.24300003051758))
        iconRowPath.addLine(to: CGPoint(x: 65.0, y: 13.0100002288818))
        iconRowPath.addCurve(to: CGPoint(x: 60.0099983215332, y: 18.0), control1: CGPoint(x: 65.0, y: 15.7659997940063), control2: CGPoint(x: 62.7569999694824, y: 18.0))
        iconRowPath.addLine(to: CGPoint(x: 51.9900016784668, y: 18.0))
        iconRowPath.addCurve(to: CGPoint(x: 47.0, y: 13.0100002288818), control1: CGPoint(x: 49.234001159668, y: 18.0), control2: CGPoint(x: 47.0, y: 15.7569999694824))
        iconRowPath.addLine(to: CGPoint(x: 47.0, y: 4.98999977111816))
        iconRowPath.closeSubpath()
        iconRowPath.move(to: CGPoint(x: 71.0, y: 4.98999977111816))
        iconRowPath.addCurve(to: CGPoint(x: 75.9899978637695, y: 0.0), control1: CGPoint(x: 71.0, y: 2.23399996757507), control2: CGPoint(x: 73.2429962158203, y: 0.0))
        iconRowPath.addLine(to: CGPoint(x: 84.0100021362305, y: 0.0))
        iconRowPath.addCurve(to: CGPoint(x: 89.0, y: 4.98999977111816), control1: CGPoint(x: 86.765998840332, y: 0.0), control2: CGPoint(x: 89.0, y: 2.24300003051758))
        iconRowPath.addLine(to: CGPoint(x: 89.0, y: 13.0100002288818))
        iconRowPath.addCurve(to: CGPoint(x: 84.0100021362305, y: 18.0), control1: CGPoint(x: 89.0, y: 15.7659997940063), control2: CGPoint(x: 86.7570037841797, y: 18.0))
        iconRowPath.addLine(to: CGPoint(x: 75.9899978637695, y: 18.0))
        iconRowPath.addCurve(to: CGPoint(x: 71.0, y: 13.0100002288818), control1: CGPoint(x: 73.234001159668, y: 18.0), control2: CGPoint(x: 71.0, y: 15.7569999694824))
        iconRowPath.addLine(to: CGPoint(x: 71.0, y: 4.98999977111816))
        iconRowPath.closeSubpath()
        iconRowPath.move(to: CGPoint(x: 71.0, y: 4.98999977111816))

        let iconRowPath1 = CGMutablePath()
        iconRowPath1.move(to: CGPoint(x: 0.0, y: 4.98999977111816))
        iconRowPath1.addCurve(to: CGPoint(x: 4.98999977111816, y: 0.0), control1: CGPoint(x: 0.0, y: 2.23399996757507), control2: CGPoint(x: 2.24300003051758, y: 0.0))
        iconRowPath1.addLine(to: CGPoint(x: 13.0100002288818, y: 0.0))
        iconRowPath1.addCurve(to: CGPoint(x: 18.0, y: 4.98999977111816), control1: CGPoint(x: 15.7659997940063, y: 0.0), control2: CGPoint(x: 18.0, y: 2.24300003051758))
        iconRowPath1.addLine(to: CGPoint(x: 18.0, y: 13.0100002288818))
        iconRowPath1.addCurve(to: CGPoint(x: 13.0100002288818, y: 18.0), control1: CGPoint(x: 18.0, y: 15.7659997940063), control2: CGPoint(x: 15.7569999694824, y: 18.0))
        iconRowPath1.addLine(to: CGPoint(x: 4.98999977111816, y: 18.0))
        iconRowPath1.addCurve(to: CGPoint(x: 0.0, y: 13.0100002288818), control1: CGPoint(x: 2.23399996757507, y: 18.0), control2: CGPoint(x: 0.0, y: 15.7569999694824))
        iconRowPath1.addLine(to: CGPoint(x: 0.0, y: 4.98999977111816))
        iconRowPath1.closeSubpath()
        iconRowPath1.move(to: CGPoint(x: 23.0, y: 4.98999977111816))
        iconRowPath1.addCurve(to: CGPoint(x: 27.9899997711182, y: 0.0), control1: CGPoint(x: 23.0, y: 2.23399996757507), control2: CGPoint(x: 25.2430000305176, y: 0.0))
        iconRowPath1.addLine(to: CGPoint(x: 36.0099983215332, y: 0.0))
        iconRowPath1.addCurve(to: CGPoint(x: 41.0, y: 4.98999977111816), control1: CGPoint(x: 38.765998840332, y: 0.0), control2: CGPoint(x: 41.0, y: 2.24300003051758))
        iconRowPath1.addLine(to: CGPoint(x: 41.0, y: 13.0100002288818))
        iconRowPath1.addCurve(to: CGPoint(x: 36.0099983215332, y: 18.0), control1: CGPoint(x: 41.0, y: 15.7659997940063), control2: CGPoint(x: 38.7569999694824, y: 18.0))
        iconRowPath1.addLine(to: CGPoint(x: 27.9899997711182, y: 18.0))
        iconRowPath1.addCurve(to: CGPoint(x: 23.0, y: 13.0100002288818), control1: CGPoint(x: 25.2339992523193, y: 18.0), control2: CGPoint(x: 23.0, y: 15.7569999694824))
        iconRowPath1.addLine(to: CGPoint(x: 23.0, y: 4.98999977111816))
        iconRowPath1.closeSubpath()
        iconRowPath1.move(to: CGPoint(x: 47.0, y: 4.98999977111816))
        iconRowPath1.addCurve(to: CGPoint(x: 51.9900016784668, y: 0.0), control1: CGPoint(x: 47.0, y: 2.23399996757507), control2: CGPoint(x: 49.2430000305176, y: 0.0))
        iconRowPath1.addLine(to: CGPoint(x: 60.0099983215332, y: 0.0))
        iconRowPath1.addCurve(to: CGPoint(x: 65.0, y: 4.98999977111816), control1: CGPoint(x: 62.765998840332, y: 0.0), control2: CGPoint(x: 65.0, y: 2.24300003051758))
        iconRowPath1.addLine(to: CGPoint(x: 65.0, y: 13.0100002288818))
        iconRowPath1.addCurve(to: CGPoint(x: 60.0099983215332, y: 18.0), control1: CGPoint(x: 65.0, y: 15.7659997940063), control2: CGPoint(x: 62.7569999694824, y: 18.0))
        iconRowPath1.addLine(to: CGPoint(x: 51.9900016784668, y: 18.0))
        iconRowPath1.addCurve(to: CGPoint(x: 47.0, y: 13.0100002288818), control1: CGPoint(x: 49.234001159668, y: 18.0), control2: CGPoint(x: 47.0, y: 15.7569999694824))
        iconRowPath1.addLine(to: CGPoint(x: 47.0, y: 4.98999977111816))
        iconRowPath1.closeSubpath()
        iconRowPath1.move(to: CGPoint(x: 71.0, y: 4.98999977111816))
        iconRowPath1.addCurve(to: CGPoint(x: 75.9899978637695, y: 0.0), control1: CGPoint(x: 71.0, y: 2.23399996757507), control2: CGPoint(x: 73.2429962158203, y: 0.0))
        iconRowPath1.addLine(to: CGPoint(x: 84.0100021362305, y: 0.0))
        iconRowPath1.addCurve(to: CGPoint(x: 89.0, y: 4.98999977111816), control1: CGPoint(x: 86.765998840332, y: 0.0), control2: CGPoint(x: 89.0, y: 2.24300003051758))
        iconRowPath1.addLine(to: CGPoint(x: 89.0, y: 13.0100002288818))
        iconRowPath1.addCurve(to: CGPoint(x: 84.0100021362305, y: 18.0), control1: CGPoint(x: 89.0, y: 15.7659997940063), control2: CGPoint(x: 86.7570037841797, y: 18.0))
        iconRowPath1.addLine(to: CGPoint(x: 75.9899978637695, y: 18.0))
        iconRowPath1.addCurve(to: CGPoint(x: 71.0, y: 13.0100002288818), control1: CGPoint(x: 73.234001159668, y: 18.0), control2: CGPoint(x: 71.0, y: 15.7569999694824))
        iconRowPath1.addLine(to: CGPoint(x: 71.0, y: 4.98999977111816))
        iconRowPath1.closeSubpath()
        iconRowPath1.move(to: CGPoint(x: 71.0, y: 4.98999977111816))

        let iconRowPath2 = CGMutablePath()
        iconRowPath2.move(to: CGPoint(x: 0.0, y: 4.98999977111816))
        iconRowPath2.addCurve(to: CGPoint(x: 4.98999977111816, y: 0.0), control1: CGPoint(x: 0.0, y: 2.23399996757507), control2: CGPoint(x: 2.24300003051758, y: 0.0))
        iconRowPath2.addLine(to: CGPoint(x: 13.0100002288818, y: 0.0))
        iconRowPath2.addCurve(to: CGPoint(x: 18.0, y: 4.98999977111816), control1: CGPoint(x: 15.7659997940063, y: 0.0), control2: CGPoint(x: 18.0, y: 2.24300003051758))
        iconRowPath2.addLine(to: CGPoint(x: 18.0, y: 13.0100002288818))
        iconRowPath2.addCurve(to: CGPoint(x: 13.0100002288818, y: 18.0), control1: CGPoint(x: 18.0, y: 15.7659997940063), control2: CGPoint(x: 15.7569999694824, y: 18.0))
        iconRowPath2.addLine(to: CGPoint(x: 4.98999977111816, y: 18.0))
        iconRowPath2.addCurve(to: CGPoint(x: 0.0, y: 13.0100002288818), control1: CGPoint(x: 2.23399996757507, y: 18.0), control2: CGPoint(x: 0.0, y: 15.7569999694824))
        iconRowPath2.addLine(to: CGPoint(x: 0.0, y: 4.98999977111816))
        iconRowPath2.closeSubpath()
        iconRowPath2.move(to: CGPoint(x: 23.0, y: 4.98999977111816))
        iconRowPath2.addCurve(to: CGPoint(x: 27.9899997711182, y: 0.0), control1: CGPoint(x: 23.0, y: 2.23399996757507), control2: CGPoint(x: 25.2430000305176, y: 0.0))
        iconRowPath2.addLine(to: CGPoint(x: 36.0099983215332, y: 0.0))
        iconRowPath2.addCurve(to: CGPoint(x: 41.0, y: 4.98999977111816), control1: CGPoint(x: 38.765998840332, y: 0.0), control2: CGPoint(x: 41.0, y: 2.24300003051758))
        iconRowPath2.addLine(to: CGPoint(x: 41.0, y: 13.0100002288818))
        iconRowPath2.addCurve(to: CGPoint(x: 36.0099983215332, y: 18.0), control1: CGPoint(x: 41.0, y: 15.7659997940063), control2: CGPoint(x: 38.7569999694824, y: 18.0))
        iconRowPath2.addLine(to: CGPoint(x: 27.9899997711182, y: 18.0))
        iconRowPath2.addCurve(to: CGPoint(x: 23.0, y: 13.0100002288818), control1: CGPoint(x: 25.2339992523193, y: 18.0), control2: CGPoint(x: 23.0, y: 15.7569999694824))
        iconRowPath2.addLine(to: CGPoint(x: 23.0, y: 4.98999977111816))
        iconRowPath2.closeSubpath()
        iconRowPath2.move(to: CGPoint(x: 47.0, y: 4.98999977111816))
        iconRowPath2.addCurve(to: CGPoint(x: 51.9900016784668, y: 0.0), control1: CGPoint(x: 47.0, y: 2.23399996757507), control2: CGPoint(x: 49.2430000305176, y: 0.0))
        iconRowPath2.addLine(to: CGPoint(x: 60.0099983215332, y: 0.0))
        iconRowPath2.addCurve(to: CGPoint(x: 65.0, y: 4.98999977111816), control1: CGPoint(x: 62.765998840332, y: 0.0), control2: CGPoint(x: 65.0, y: 2.24300003051758))
        iconRowPath2.addLine(to: CGPoint(x: 65.0, y: 13.0100002288818))
        iconRowPath2.addCurve(to: CGPoint(x: 60.0099983215332, y: 18.0), control1: CGPoint(x: 65.0, y: 15.7659997940063), control2: CGPoint(x: 62.7569999694824, y: 18.0))
        iconRowPath2.addLine(to: CGPoint(x: 51.9900016784668, y: 18.0))
        iconRowPath2.addCurve(to: CGPoint(x: 47.0, y: 13.0100002288818), control1: CGPoint(x: 49.234001159668, y: 18.0), control2: CGPoint(x: 47.0, y: 15.7569999694824))
        iconRowPath2.addLine(to: CGPoint(x: 47.0, y: 4.98999977111816))
        iconRowPath2.closeSubpath()
        iconRowPath2.move(to: CGPoint(x: 71.0, y: 4.98999977111816))
        iconRowPath2.addCurve(to: CGPoint(x: 75.9899978637695, y: 0.0), control1: CGPoint(x: 71.0, y: 2.23399996757507), control2: CGPoint(x: 73.2429962158203, y: 0.0))
        iconRowPath2.addLine(to: CGPoint(x: 84.0100021362305, y: 0.0))
        iconRowPath2.addCurve(to: CGPoint(x: 89.0, y: 4.98999977111816), control1: CGPoint(x: 86.765998840332, y: 0.0), control2: CGPoint(x: 89.0, y: 2.24300003051758))
        iconRowPath2.addLine(to: CGPoint(x: 89.0, y: 13.0100002288818))
        iconRowPath2.addCurve(to: CGPoint(x: 84.0100021362305, y: 18.0), control1: CGPoint(x: 89.0, y: 15.7659997940063), control2: CGPoint(x: 86.7570037841797, y: 18.0))
        iconRowPath2.addLine(to: CGPoint(x: 75.9899978637695, y: 18.0))
        iconRowPath2.addCurve(to: CGPoint(x: 71.0, y: 13.0100002288818), control1: CGPoint(x: 73.234001159668, y: 18.0), control2: CGPoint(x: 71.0, y: 15.7569999694824))
        iconRowPath2.addLine(to: CGPoint(x: 71.0, y: 4.98999977111816))
        iconRowPath2.closeSubpath()
        iconRowPath2.move(to: CGPoint(x: 71.0, y: 4.98999977111816))

        let iconRowPath3 = CGMutablePath()
        iconRowPath3.move(to: CGPoint(x: 0.0, y: 4.98999977111816))
        iconRowPath3.addCurve(to: CGPoint(x: 4.98999977111816, y: 0.0), control1: CGPoint(x: 0.0, y: 2.23399996757507), control2: CGPoint(x: 2.24300003051758, y: 0.0))
        iconRowPath3.addLine(to: CGPoint(x: 13.0100002288818, y: 0.0))
        iconRowPath3.addCurve(to: CGPoint(x: 18.0, y: 4.98999977111816), control1: CGPoint(x: 15.7659997940063, y: 0.0), control2: CGPoint(x: 18.0, y: 2.24300003051758))
        iconRowPath3.addLine(to: CGPoint(x: 18.0, y: 13.0100002288818))
        iconRowPath3.addCurve(to: CGPoint(x: 13.0100002288818, y: 18.0), control1: CGPoint(x: 18.0, y: 15.7659997940063), control2: CGPoint(x: 15.7569999694824, y: 18.0))
        iconRowPath3.addLine(to: CGPoint(x: 4.98999977111816, y: 18.0))
        iconRowPath3.addCurve(to: CGPoint(x: 0.0, y: 13.0100002288818), control1: CGPoint(x: 2.23399996757507, y: 18.0), control2: CGPoint(x: 0.0, y: 15.7569999694824))
        iconRowPath3.addLine(to: CGPoint(x: 0.0, y: 4.98999977111816))
        iconRowPath3.closeSubpath()
        iconRowPath3.move(to: CGPoint(x: 23.0, y: 4.98999977111816))
        iconRowPath3.addCurve(to: CGPoint(x: 27.9899997711182, y: 0.0), control1: CGPoint(x: 23.0, y: 2.23399996757507), control2: CGPoint(x: 25.2430000305176, y: 0.0))
        iconRowPath3.addLine(to: CGPoint(x: 36.0099983215332, y: 0.0))
        iconRowPath3.addCurve(to: CGPoint(x: 41.0, y: 4.98999977111816), control1: CGPoint(x: 38.765998840332, y: 0.0), control2: CGPoint(x: 41.0, y: 2.24300003051758))
        iconRowPath3.addLine(to: CGPoint(x: 41.0, y: 13.0100002288818))
        iconRowPath3.addCurve(to: CGPoint(x: 36.0099983215332, y: 18.0), control1: CGPoint(x: 41.0, y: 15.7659997940063), control2: CGPoint(x: 38.7569999694824, y: 18.0))
        iconRowPath3.addLine(to: CGPoint(x: 27.9899997711182, y: 18.0))
        iconRowPath3.addCurve(to: CGPoint(x: 23.0, y: 13.0100002288818), control1: CGPoint(x: 25.2339992523193, y: 18.0), control2: CGPoint(x: 23.0, y: 15.7569999694824))
        iconRowPath3.addLine(to: CGPoint(x: 23.0, y: 4.98999977111816))
        iconRowPath3.closeSubpath()
        iconRowPath3.move(to: CGPoint(x: 47.0, y: 4.98999977111816))
        iconRowPath3.addCurve(to: CGPoint(x: 51.9900016784668, y: 0.0), control1: CGPoint(x: 47.0, y: 2.23399996757507), control2: CGPoint(x: 49.2430000305176, y: 0.0))
        iconRowPath3.addLine(to: CGPoint(x: 60.0099983215332, y: 0.0))
        iconRowPath3.addCurve(to: CGPoint(x: 65.0, y: 4.98999977111816), control1: CGPoint(x: 62.765998840332, y: 0.0), control2: CGPoint(x: 65.0, y: 2.24300003051758))
        iconRowPath3.addLine(to: CGPoint(x: 65.0, y: 13.0100002288818))
        iconRowPath3.addCurve(to: CGPoint(x: 60.0099983215332, y: 18.0), control1: CGPoint(x: 65.0, y: 15.7659997940063), control2: CGPoint(x: 62.7569999694824, y: 18.0))
        iconRowPath3.addLine(to: CGPoint(x: 51.9900016784668, y: 18.0))
        iconRowPath3.addCurve(to: CGPoint(x: 47.0, y: 13.0100002288818), control1: CGPoint(x: 49.234001159668, y: 18.0), control2: CGPoint(x: 47.0, y: 15.7569999694824))
        iconRowPath3.addLine(to: CGPoint(x: 47.0, y: 4.98999977111816))
        iconRowPath3.closeSubpath()
        iconRowPath3.move(to: CGPoint(x: 71.0, y: 4.98999977111816))
        iconRowPath3.addCurve(to: CGPoint(x: 75.9899978637695, y: 0.0), control1: CGPoint(x: 71.0, y: 2.23399996757507), control2: CGPoint(x: 73.2429962158203, y: 0.0))
        iconRowPath3.addLine(to: CGPoint(x: 84.0100021362305, y: 0.0))
        iconRowPath3.addCurve(to: CGPoint(x: 89.0, y: 4.98999977111816), control1: CGPoint(x: 86.765998840332, y: 0.0), control2: CGPoint(x: 89.0, y: 2.24300003051758))
        iconRowPath3.addLine(to: CGPoint(x: 89.0, y: 13.0100002288818))
        iconRowPath3.addCurve(to: CGPoint(x: 84.0100021362305, y: 18.0), control1: CGPoint(x: 89.0, y: 15.7659997940063), control2: CGPoint(x: 86.7570037841797, y: 18.0))
        iconRowPath3.addLine(to: CGPoint(x: 75.9899978637695, y: 18.0))
        iconRowPath3.addCurve(to: CGPoint(x: 71.0, y: 13.0100002288818), control1: CGPoint(x: 73.234001159668, y: 18.0), control2: CGPoint(x: 71.0, y: 15.7569999694824))
        iconRowPath3.addLine(to: CGPoint(x: 71.0, y: 4.98999977111816))
        iconRowPath3.closeSubpath()
        iconRowPath3.move(to: CGPoint(x: 71.0, y: 4.98999977111816))

        let iconRowPath4 = CGMutablePath()
        iconRowPath4.move(to: CGPoint(x: 0.0, y: 4.98999977111816))
        iconRowPath4.addCurve(to: CGPoint(x: 4.98999977111816, y: 0.0), control1: CGPoint(x: 0.0, y: 2.23399996757507), control2: CGPoint(x: 2.24300003051758, y: 0.0))
        iconRowPath4.addLine(to: CGPoint(x: 13.0100002288818, y: 0.0))
        iconRowPath4.addCurve(to: CGPoint(x: 18.0, y: 4.98999977111816), control1: CGPoint(x: 15.7659997940063, y: 0.0), control2: CGPoint(x: 18.0, y: 2.24300003051758))
        iconRowPath4.addLine(to: CGPoint(x: 18.0, y: 13.0100002288818))
        iconRowPath4.addCurve(to: CGPoint(x: 13.0100002288818, y: 18.0), control1: CGPoint(x: 18.0, y: 15.7659997940063), control2: CGPoint(x: 15.7569999694824, y: 18.0))
        iconRowPath4.addLine(to: CGPoint(x: 4.98999977111816, y: 18.0))
        iconRowPath4.addCurve(to: CGPoint(x: 0.0, y: 13.0100002288818), control1: CGPoint(x: 2.23399996757507, y: 18.0), control2: CGPoint(x: 0.0, y: 15.7569999694824))
        iconRowPath4.addLine(to: CGPoint(x: 0.0, y: 4.98999977111816))
        iconRowPath4.closeSubpath()
        iconRowPath4.move(to: CGPoint(x: 23.0, y: 4.98999977111816))
        iconRowPath4.addCurve(to: CGPoint(x: 27.9899997711182, y: 0.0), control1: CGPoint(x: 23.0, y: 2.23399996757507), control2: CGPoint(x: 25.2430000305176, y: 0.0))
        iconRowPath4.addLine(to: CGPoint(x: 36.0099983215332, y: 0.0))
        iconRowPath4.addCurve(to: CGPoint(x: 41.0, y: 4.98999977111816), control1: CGPoint(x: 38.765998840332, y: 0.0), control2: CGPoint(x: 41.0, y: 2.24300003051758))
        iconRowPath4.addLine(to: CGPoint(x: 41.0, y: 13.0100002288818))
        iconRowPath4.addCurve(to: CGPoint(x: 36.0099983215332, y: 18.0), control1: CGPoint(x: 41.0, y: 15.7659997940063), control2: CGPoint(x: 38.7569999694824, y: 18.0))
        iconRowPath4.addLine(to: CGPoint(x: 27.9899997711182, y: 18.0))
        iconRowPath4.addCurve(to: CGPoint(x: 23.0, y: 13.0100002288818), control1: CGPoint(x: 25.2339992523193, y: 18.0), control2: CGPoint(x: 23.0, y: 15.7569999694824))
        iconRowPath4.addLine(to: CGPoint(x: 23.0, y: 4.98999977111816))
        iconRowPath4.closeSubpath()
        iconRowPath4.move(to: CGPoint(x: 47.0, y: 4.98999977111816))
        iconRowPath4.addCurve(to: CGPoint(x: 51.9900016784668, y: 0.0), control1: CGPoint(x: 47.0, y: 2.23399996757507), control2: CGPoint(x: 49.2430000305176, y: 0.0))
        iconRowPath4.addLine(to: CGPoint(x: 60.0099983215332, y: 0.0))
        iconRowPath4.addCurve(to: CGPoint(x: 65.0, y: 4.98999977111816), control1: CGPoint(x: 62.765998840332, y: 0.0), control2: CGPoint(x: 65.0, y: 2.24300003051758))
        iconRowPath4.addLine(to: CGPoint(x: 65.0, y: 13.0100002288818))
        iconRowPath4.addCurve(to: CGPoint(x: 60.0099983215332, y: 18.0), control1: CGPoint(x: 65.0, y: 15.7659997940063), control2: CGPoint(x: 62.7569999694824, y: 18.0))
        iconRowPath4.addLine(to: CGPoint(x: 51.9900016784668, y: 18.0))
        iconRowPath4.addCurve(to: CGPoint(x: 47.0, y: 13.0100002288818), control1: CGPoint(x: 49.234001159668, y: 18.0), control2: CGPoint(x: 47.0, y: 15.7569999694824))
        iconRowPath4.addLine(to: CGPoint(x: 47.0, y: 4.98999977111816))
        iconRowPath4.closeSubpath()
        iconRowPath4.move(to: CGPoint(x: 47.0, y: 4.98999977111816))

        let iconRowPath5 = CGMutablePath()
        iconRowPath5.move(to: CGPoint(x: 0.0, y: 4.98999977111816))
        iconRowPath5.addCurve(to: CGPoint(x: 4.98999977111816, y: 0.0), control1: CGPoint(x: 0.0, y: 2.23399996757507), control2: CGPoint(x: 2.24300003051758, y: 0.0))
        iconRowPath5.addLine(to: CGPoint(x: 13.0100002288818, y: 0.0))
        iconRowPath5.addCurve(to: CGPoint(x: 18.0, y: 4.98999977111816), control1: CGPoint(x: 15.7659997940063, y: 0.0), control2: CGPoint(x: 18.0, y: 2.24300003051758))
        iconRowPath5.addLine(to: CGPoint(x: 18.0, y: 13.0100002288818))
        iconRowPath5.addCurve(to: CGPoint(x: 13.0100002288818, y: 18.0), control1: CGPoint(x: 18.0, y: 15.7659997940063), control2: CGPoint(x: 15.7569999694824, y: 18.0))
        iconRowPath5.addLine(to: CGPoint(x: 4.98999977111816, y: 18.0))
        iconRowPath5.addCurve(to: CGPoint(x: 0.0, y: 13.0100002288818), control1: CGPoint(x: 2.23399996757507, y: 18.0), control2: CGPoint(x: 0.0, y: 15.7569999694824))
        iconRowPath5.addLine(to: CGPoint(x: 0.0, y: 4.98999977111816))
        iconRowPath5.closeSubpath()
        iconRowPath5.move(to: CGPoint(x: 23.0, y: 4.98999977111816))
        iconRowPath5.addCurve(to: CGPoint(x: 27.9899997711182, y: 0.0), control1: CGPoint(x: 23.0, y: 2.23399996757507), control2: CGPoint(x: 25.2430000305176, y: 0.0))
        iconRowPath5.addLine(to: CGPoint(x: 36.0099983215332, y: 0.0))
        iconRowPath5.addCurve(to: CGPoint(x: 41.0, y: 4.98999977111816), control1: CGPoint(x: 38.765998840332, y: 0.0), control2: CGPoint(x: 41.0, y: 2.24300003051758))
        iconRowPath5.addLine(to: CGPoint(x: 41.0, y: 13.0100002288818))
        iconRowPath5.addCurve(to: CGPoint(x: 36.0099983215332, y: 18.0), control1: CGPoint(x: 41.0, y: 15.7659997940063), control2: CGPoint(x: 38.7569999694824, y: 18.0))
        iconRowPath5.addLine(to: CGPoint(x: 27.9899997711182, y: 18.0))
        iconRowPath5.addCurve(to: CGPoint(x: 23.0, y: 13.0100002288818), control1: CGPoint(x: 25.2339992523193, y: 18.0), control2: CGPoint(x: 23.0, y: 15.7569999694824))
        iconRowPath5.addLine(to: CGPoint(x: 23.0, y: 4.98999977111816))
        iconRowPath5.closeSubpath()
        iconRowPath5.move(to: CGPoint(x: 47.0, y: 4.98999977111816))
        iconRowPath5.addCurve(to: CGPoint(x: 51.9900016784668, y: 0.0), control1: CGPoint(x: 47.0, y: 2.23399996757507), control2: CGPoint(x: 49.2430000305176, y: 0.0))
        iconRowPath5.addLine(to: CGPoint(x: 60.0099983215332, y: 0.0))
        iconRowPath5.addCurve(to: CGPoint(x: 65.0, y: 4.98999977111816), control1: CGPoint(x: 62.765998840332, y: 0.0), control2: CGPoint(x: 65.0, y: 2.24300003051758))
        iconRowPath5.addLine(to: CGPoint(x: 65.0, y: 13.0100002288818))
        iconRowPath5.addCurve(to: CGPoint(x: 60.0099983215332, y: 18.0), control1: CGPoint(x: 65.0, y: 15.7659997940063), control2: CGPoint(x: 62.7569999694824, y: 18.0))
        iconRowPath5.addLine(to: CGPoint(x: 51.9900016784668, y: 18.0))
        iconRowPath5.addCurve(to: CGPoint(x: 47.0, y: 13.0100002288818), control1: CGPoint(x: 49.234001159668, y: 18.0), control2: CGPoint(x: 47.0, y: 15.7569999694824))
        iconRowPath5.addLine(to: CGPoint(x: 47.0, y: 4.98999977111816))
        iconRowPath5.closeSubpath()
        iconRowPath5.move(to: CGPoint(x: 71.0, y: 4.98999977111816))
        iconRowPath5.addCurve(to: CGPoint(x: 75.9899978637695, y: 0.0), control1: CGPoint(x: 71.0, y: 2.23399996757507), control2: CGPoint(x: 73.2429962158203, y: 0.0))
        iconRowPath5.addLine(to: CGPoint(x: 84.0100021362305, y: 0.0))
        iconRowPath5.addCurve(to: CGPoint(x: 89.0, y: 4.98999977111816), control1: CGPoint(x: 86.765998840332, y: 0.0), control2: CGPoint(x: 89.0, y: 2.24300003051758))
        iconRowPath5.addLine(to: CGPoint(x: 89.0, y: 13.0100002288818))
        iconRowPath5.addCurve(to: CGPoint(x: 84.0100021362305, y: 18.0), control1: CGPoint(x: 89.0, y: 15.7659997940063), control2: CGPoint(x: 86.7570037841797, y: 18.0))
        iconRowPath5.addLine(to: CGPoint(x: 75.9899978637695, y: 18.0))
        iconRowPath5.addCurve(to: CGPoint(x: 71.0, y: 13.0100002288818), control1: CGPoint(x: 73.234001159668, y: 18.0), control2: CGPoint(x: 71.0, y: 15.7569999694824))
        iconRowPath5.addLine(to: CGPoint(x: 71.0, y: 4.98999977111816))
        iconRowPath5.closeSubpath()
        iconRowPath5.move(to: CGPoint(x: 71.0, y: 4.98999977111816))

        let workflowIconPath = CGMutablePath()
        workflowIconPath.move(to: CGPoint(x: 0.0, y: 4.98999977111816))
        workflowIconPath.addCurve(to: CGPoint(x: 4.98999977111816, y: 0.0), control1: CGPoint(x: 0.0, y: 2.23399996757507), control2: CGPoint(x: 2.24300003051758, y: 0.0))
        workflowIconPath.addLine(to: CGPoint(x: 13.0100002288818, y: 0.0))
        workflowIconPath.addCurve(to: CGPoint(x: 18.0, y: 4.98999977111816), control1: CGPoint(x: 15.7659997940063, y: 0.0), control2: CGPoint(x: 18.0, y: 2.24300003051758))
        workflowIconPath.addLine(to: CGPoint(x: 18.0, y: 13.0100002288818))
        workflowIconPath.addCurve(to: CGPoint(x: 13.0100002288818, y: 18.0), control1: CGPoint(x: 18.0, y: 15.7659997940063), control2: CGPoint(x: 15.7569999694824, y: 18.0))
        workflowIconPath.addLine(to: CGPoint(x: 4.98999977111816, y: 18.0))
        workflowIconPath.addCurve(to: CGPoint(x: 0.0, y: 13.0100002288818), control1: CGPoint(x: 2.23399996757507, y: 18.0), control2: CGPoint(x: 0.0, y: 15.7569999694824))
        workflowIconPath.addLine(to: CGPoint(x: 0.0, y: 4.98999977111816))
        workflowIconPath.closeSubpath()
        workflowIconPath.move(to: CGPoint(x: 0.0, y: 4.98999977111816))

        let bottomPath = CGMutablePath()
        bottomPath.move(to: CGPoint(x: 0.0, y: 0.0))
        bottomPath.addLine(to: CGPoint(x: 91.0, y: 0.0))
        bottomPath.addLine(to: CGPoint(x: 91.0, y: 21.007999420166))
        bottomPath.addCurve(to: CGPoint(x: 84.9940032958984, y: 27.0), control1: CGPoint(x: 91.0, y: 24.3169994354248), control2: CGPoint(x: 88.3140029907227, y: 27.0))
        bottomPath.addLine(to: CGPoint(x: 6.00600004196167, y: 27.0))
        bottomPath.addCurve(to: CGPoint(x: 0.0, y: 21.007999420166), control1: CGPoint(x: 2.68899989128113, y: 27.0), control2: CGPoint(x: 0.0, y: 24.3120002746582))
        bottomPath.addLine(to: CGPoint(x: 0.0, y: 0.0))
        bottomPath.closeSubpath()
        bottomPath.move(to: CGPoint(x: 0.0, y: 0.0))

        let topPath = CGMutablePath()
        topPath.move(to: CGPoint(x: 0.0, y: 5.0))
        topPath.addCurve(to: CGPoint(x: 5.00600004196167, y: 0.0), control1: CGPoint(x: 0.0, y: 2.23900008201599), control2: CGPoint(x: 2.23799991607666, y: 0.0))
        topPath.addLine(to: CGPoint(x: 85.9940032958984, y: 0.0))
        topPath.addCurve(to: CGPoint(x: 91.0, y: 5.0), control1: CGPoint(x: 88.7590026855469, y: 0.0), control2: CGPoint(x: 91.0, y: 2.24399995803833))
        topPath.addLine(to: CGPoint(x: 91.0, y: 10.0))
        topPath.addLine(to: CGPoint(x: 0.0, y: 10.0))
        topPath.addLine(to: CGPoint(x: 0.0, y: 5.0))
        topPath.closeSubpath()
        topPath.move(to: CGPoint(x: 0.0, y: 5.0))

        let rectanglePath = CGMutablePath()
        rectanglePath.move(to: CGPoint(x: 0.0, y: 6.00299978256226))
        rectanglePath.addCurve(to: CGPoint(x: 6.00600004196167, y: 0.0), control1: CGPoint(x: 0.0, y: 2.68799996376038), control2: CGPoint(x: 2.68600010871887, y: 0.0))
        rectanglePath.addLine(to: CGPoint(x: 84.9940032958984, y: 0.0))
        rectanglePath.addCurve(to: CGPoint(x: 91.0, y: 6.00299978256226), control1: CGPoint(x: 88.3109970092773, y: 0.0), control2: CGPoint(x: 91.0, y: 2.68600010871887))
        rectanglePath.addLine(to: CGPoint(x: 91.0, y: 37.9970016479492))
        rectanglePath.addCurve(to: CGPoint(x: 84.9940032958984, y: 44.0), control1: CGPoint(x: 91.0, y: 41.3120002746582), control2: CGPoint(x: 88.3140029907227, y: 44.0))
        rectanglePath.addLine(to: CGPoint(x: 6.00600004196167, y: 44.0))
        rectanglePath.addCurve(to: CGPoint(x: 0.0, y: 37.9970016479492), control1: CGPoint(x: 2.68899989128113, y: 44.0), control2: CGPoint(x: 0.0, y: 41.3139991760254))
        rectanglePath.addLine(to: CGPoint(x: 0.0, y: 6.00299978256226))
        rectanglePath.closeSubpath()
        rectanglePath.move(to: CGPoint(x: 0.0, y: 6.00299978256226))

        let rectanglePath1 = CGMutablePath()
        rectanglePath1.move(to: CGPoint(x: 0.0, y: 0.0))
        rectanglePath1.addLine(to: CGPoint(x: 22.0, y: 0.0))
        rectanglePath1.addLine(to: CGPoint(x: 22.0, y: 1.0))
        rectanglePath1.addLine(to: CGPoint(x: 0.0, y: 1.0))
        rectanglePath1.addLine(to: CGPoint(x: 0.0, y: 0.0))
        rectanglePath1.closeSubpath()
        rectanglePath1.move(to: CGPoint(x: 0.0, y: 0.0))

        let rectanglePath2 = CGMutablePath()
        rectanglePath2.move(to: CGPoint(x: 0.0, y: 0.0))
        rectanglePath2.addLine(to: CGPoint(x: 24.0, y: 0.0))
        rectanglePath2.addLine(to: CGPoint(x: 24.0, y: 1.0))
        rectanglePath2.addLine(to: CGPoint(x: 0.0, y: 1.0))
        rectanglePath2.addLine(to: CGPoint(x: 0.0, y: 0.0))
        rectanglePath2.closeSubpath()
        rectanglePath2.move(to: CGPoint(x: 0.0, y: 0.0))

        let rectanglePath3 = CGMutablePath()
        rectanglePath3.move(to: CGPoint(x: 0.0, y: 0.0))
        rectanglePath3.addLine(to: CGPoint(x: 11.0, y: 0.0))
        rectanglePath3.addLine(to: CGPoint(x: 11.0, y: 1.0))
        rectanglePath3.addLine(to: CGPoint(x: 0.0, y: 1.0))
        rectanglePath3.addLine(to: CGPoint(x: 0.0, y: 0.0))
        rectanglePath3.closeSubpath()
        rectanglePath3.move(to: CGPoint(x: 0.0, y: 0.0))

        let rectanglePath4 = CGMutablePath()
        rectanglePath4.move(to: CGPoint(x: 0.0, y: 0.0))
        rectanglePath4.addLine(to: CGPoint(x: 11.0, y: 0.0))
        rectanglePath4.addLine(to: CGPoint(x: 11.0, y: 1.0))
        rectanglePath4.addLine(to: CGPoint(x: 0.0, y: 1.0))
        rectanglePath4.addLine(to: CGPoint(x: 0.0, y: 0.0))
        rectanglePath4.closeSubpath()
        rectanglePath4.move(to: CGPoint(x: 0.0, y: 0.0))

        let rectanglePath5 = CGMutablePath()
        rectanglePath5.move(to: CGPoint(x: 0.0, y: 0.0))
        rectanglePath5.addLine(to: CGPoint(x: 16.0, y: 0.0))
        rectanglePath5.addLine(to: CGPoint(x: 16.0, y: 1.0))
        rectanglePath5.addLine(to: CGPoint(x: 0.0, y: 1.0))
        rectanglePath5.addLine(to: CGPoint(x: 0.0, y: 0.0))
        rectanglePath5.closeSubpath()
        rectanglePath5.move(to: CGPoint(x: 0.0, y: 0.0))

        let ovalPath = CGMutablePath()
        ovalPath.move(to: CGPoint(x: 4.0, y: 8.0))
        ovalPath.addCurve(to: CGPoint(x: 8.0, y: 4.0), control1: CGPoint(x: 6.20900011062622, y: 8.0), control2: CGPoint(x: 8.0, y: 6.20900011062622))
        ovalPath.addCurve(to: CGPoint(x: 4.0, y: 0.0), control1: CGPoint(x: 8.0, y: 1.79100000858307), control2: CGPoint(x: 6.20900011062622, y: 0.0))
        ovalPath.addCurve(to: CGPoint(x: 0.0, y: 4.0), control1: CGPoint(x: 1.79100000858307, y: 0.0), control2: CGPoint(x: 0.0, y: 1.79100000858307))
        ovalPath.addCurve(to: CGPoint(x: 4.0, y: 8.0), control1: CGPoint(x: 0.0, y: 6.20900011062622), control2: CGPoint(x: 1.79100000858307, y: 8.0))
        ovalPath.closeSubpath()
        ovalPath.move(to: CGPoint(x: 4.0, y: 8.0))

        let ovalCopyPath = CGMutablePath()
        ovalCopyPath.move(to: CGPoint(x: 4.0, y: 8.0))
        ovalCopyPath.addCurve(to: CGPoint(x: 8.0, y: 4.0), control1: CGPoint(x: 6.20900011062622, y: 8.0), control2: CGPoint(x: 8.0, y: 6.20900011062622))
        ovalCopyPath.addCurve(to: CGPoint(x: 4.0, y: 0.0), control1: CGPoint(x: 8.0, y: 1.79100000858307), control2: CGPoint(x: 6.20900011062622, y: 0.0))
        ovalCopyPath.addCurve(to: CGPoint(x: 0.0, y: 4.0), control1: CGPoint(x: 1.79100000858307, y: 0.0), control2: CGPoint(x: 0.0, y: 1.79100000858307))
        ovalCopyPath.addCurve(to: CGPoint(x: 4.0, y: 8.0), control1: CGPoint(x: 0.0, y: 6.20900011062622), control2: CGPoint(x: 1.79100000858307, y: 8.0))
        ovalCopyPath.closeSubpath()
        ovalCopyPath.move(to: CGPoint(x: 4.0, y: 8.0))

        let ovalCopyPath1 = CGMutablePath()
        ovalCopyPath1.move(to: CGPoint(x: 4.0, y: 8.0))
        ovalCopyPath1.addCurve(to: CGPoint(x: 8.0, y: 4.0), control1: CGPoint(x: 6.20900011062622, y: 8.0), control2: CGPoint(x: 8.0, y: 6.20900011062622))
        ovalCopyPath1.addCurve(to: CGPoint(x: 4.0, y: 0.0), control1: CGPoint(x: 8.0, y: 1.79100000858307), control2: CGPoint(x: 6.20900011062622, y: 0.0))
        ovalCopyPath1.addCurve(to: CGPoint(x: 0.0, y: 4.0), control1: CGPoint(x: 1.79100000858307, y: 0.0), control2: CGPoint(x: 0.0, y: 1.79100000858307))
        ovalCopyPath1.addCurve(to: CGPoint(x: 4.0, y: 8.0), control1: CGPoint(x: 0.0, y: 6.20900011062622), control2: CGPoint(x: 1.79100000858307, y: 8.0))
        ovalCopyPath1.closeSubpath()
        ovalCopyPath1.move(to: CGPoint(x: 4.0, y: 8.0))

        let positionanimationPath = CGMutablePath()
        positionanimationPath.move(to: CGPoint(x: 50.0, y: 88.0))
        positionanimationPath.addCurve(to: CGPoint(x: 86.0, y: 113.0), control1: CGPoint(x: 57.0, y: 96.0), control2: CGPoint(x: 70.0, y: 105.0))

        let touchPath = CGMutablePath()
        touchPath.move(to: CGPoint(x: 5.5, y: 11.0))
        touchPath.addCurve(to: CGPoint(x: 11.0, y: 5.5), control1: CGPoint(x: 8.53800010681152, y: 11.0), control2: CGPoint(x: 11.0, y: 8.53800010681152))
        touchPath.addCurve(to: CGPoint(x: 5.5, y: 0.0), control1: CGPoint(x: 11.0, y: 2.46199989318848), control2: CGPoint(x: 8.53800010681152, y: 0.0))
        touchPath.addCurve(to: CGPoint(x: 0.0, y: 5.5), control1: CGPoint(x: 2.46199989318848, y: 0.0), control2: CGPoint(x: 0.0, y: 2.46199989318848))
        touchPath.addCurve(to: CGPoint(x: 5.5, y: 11.0), control1: CGPoint(x: 0.0, y: 8.53800010681152), control2: CGPoint(x: 2.46199989318848, y: 11.0))
        touchPath.closeSubpath()
        touchPath.move(to: CGPoint(x: 5.5, y: 11.0))

        // Fonts
        //
        let systemFontRegularFont = UIFont.systemFont(ofSize: 5.0, weight: UIFontWeightRegular)

        // Touch Example
        //
        let touchExampleLayer = CALayer()
        touchExampleLayer.name = "Touch Example"
        touchExampleLayer.bounds = CGRect(x: 0.0, y: 0.0, width: 100.0, height: 178.0)
        touchExampleLayer.position = CGPoint(x: 57.0, y: 44.0)
        touchExampleLayer.anchorPoint = CGPoint(x: 0.0, y: 0.0)
        touchExampleLayer.contentsGravity = kCAGravityCenter
        touchExampleLayer.backgroundColor = backgroundcolor.cgColor
        touchExampleLayer.borderWidth = 1.0
        touchExampleLayer.borderColor = bordercolor.cgColor
        touchExampleLayer.shadowOpacity = 0.3
        touchExampleLayer.shadowRadius = 24.0
        touchExampleLayer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        touchExampleLayer.fillMode = kCAFillModeForwards

            // Touch Example Sublayers
            //

            // Backdrop
            //
            let backdropLayer = CAGradientLayer()
            backdropLayer.name = "Backdrop"
            backdropLayer.bounds = CGRect(x: 0.0, y: 0.0, width: 100.0, height: 178.0)
            backdropLayer.position = CGPoint(x: 0.0, y: 0.0)
            backdropLayer.anchorPoint = CGPoint(x: 0.0, y: 0.0)
            backdropLayer.contentsGravity = kCAGravityCenter
            backdropLayer.masksToBounds = true
            backdropLayer.borderColor = bordercolor1.cgColor
            backdropLayer.shadowOffset = CGSize(width: 0.0, height: 1.0)
            backdropLayer.fillMode = kCAFillModeForwards

                // Backdrop Animations
                //

                // filters.Gaussian Blur.inputRadius
                //
                let filtersGaussianBlurInputradiusAnimation = CABasicAnimation()
                filtersGaussianBlurInputradiusAnimation.beginTime = 1.2969580078125
                filtersGaussianBlurInputradiusAnimation.duration = 0.708027343749999
                filtersGaussianBlurInputradiusAnimation.fillMode = kCAFillModeForwards
                filtersGaussianBlurInputradiusAnimation.isRemovedOnCompletion = false
                filtersGaussianBlurInputradiusAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                filtersGaussianBlurInputradiusAnimation.keyPath = "filters.Gaussian Blur.inputRadius"
                filtersGaussianBlurInputradiusAnimation.toValue = 4


                // Backdrop Sublayers
                //

                // Screen
                //
                let screenLayer = CAShapeLayer()
                screenLayer.name = "Screen"
                screenLayer.bounds = CGRect(x: 0.0, y: 0.0, width: 100.0, height: 178.0)
                screenLayer.position = CGPoint(x: 0.0, y: 0.0)
                screenLayer.anchorPoint = CGPoint(x: 0.0, y: 0.0)
                screenLayer.contentsGravity = kCAGravityCenter
                screenLayer.opacity = 0.0
                screenLayer.path = screenPath
                screenLayer.fillColor = fillcolor.cgColor
                screenLayer.strokeColor = strokecolor.cgColor
                screenLayer.fillRule = kCAFillRuleEvenOdd
                screenLayer.lineWidth = 0.0

                backdropLayer.addSublayer(screenLayer)

                // Dock
                //
                let dockLayer = CAShapeLayer()
                dockLayer.name = "Dock"
                dockLayer.bounds = CGRect(x: 0.0, y: 0.0, width: 100.0, height: 30.0)
                dockLayer.position = CGPoint(x: 0.0, y: 148.0)
                dockLayer.anchorPoint = CGPoint(x: 0.0, y: 0.0)
                dockLayer.contentsGravity = kCAGravityCenter
                dockLayer.opacity = 0.169101
                dockLayer.path = dockPath
                dockLayer.fillColor = fillcolor1.cgColor
                dockLayer.strokeColor = strokecolor.cgColor
                dockLayer.fillRule = kCAFillRuleEvenOdd
                dockLayer.lineWidth = 0.0

                backdropLayer.addSublayer(dockLayer)

                // Icon Row 1
                //
                let iconRowLayer = CAShapeLayer()
                iconRowLayer.name = "Icon Row 1"
                iconRowLayer.bounds = CGRect(x: 0.0, y: 0.0, width: 89.0, height: 18.0)
                iconRowLayer.position = CGPoint(x: 6.0, y: 11.0)
                iconRowLayer.anchorPoint = CGPoint(x: 0.0, y: 0.0)
                iconRowLayer.contentsGravity = kCAGravityCenter
                iconRowLayer.opacity = 0.748641
                iconRowLayer.path = iconRowPath
                iconRowLayer.fillColor = fillcolor1.cgColor
                iconRowLayer.strokeColor = strokecolor.cgColor
                iconRowLayer.fillRule = kCAFillRuleEvenOdd
                iconRowLayer.lineWidth = 0.0

                backdropLayer.addSublayer(iconRowLayer)

                // Icon Row 2
                //
                let iconRowLayer1 = CAShapeLayer()
                iconRowLayer1.name = "Icon Row 2"
                iconRowLayer1.bounds = CGRect(x: 0.0, y: 0.0, width: 89.0, height: 18.0)
                iconRowLayer1.position = CGPoint(x: 6.0, y: 34.0)
                iconRowLayer1.anchorPoint = CGPoint(x: 0.0, y: 0.0)
                iconRowLayer1.contentsGravity = kCAGravityCenter
                iconRowLayer1.opacity = 0.748641
                iconRowLayer1.path = iconRowPath1
                iconRowLayer1.fillColor = fillcolor1.cgColor
                iconRowLayer1.strokeColor = strokecolor.cgColor
                iconRowLayer1.fillRule = kCAFillRuleEvenOdd
                iconRowLayer1.lineWidth = 0.0

                backdropLayer.addSublayer(iconRowLayer1)

                // Icon Row 3
                //
                let iconRowLayer2 = CAShapeLayer()
                iconRowLayer2.name = "Icon Row 3"
                iconRowLayer2.bounds = CGRect(x: 0.0, y: 0.0, width: 89.0, height: 18.0)
                iconRowLayer2.position = CGPoint(x: 6.0, y: 58.0)
                iconRowLayer2.anchorPoint = CGPoint(x: 0.0, y: 0.0)
                iconRowLayer2.contentsGravity = kCAGravityCenter
                iconRowLayer2.opacity = 0.748641
                iconRowLayer2.path = iconRowPath2
                iconRowLayer2.fillColor = fillcolor1.cgColor
                iconRowLayer2.strokeColor = strokecolor.cgColor
                iconRowLayer2.fillRule = kCAFillRuleEvenOdd
                iconRowLayer2.lineWidth = 0.0

                backdropLayer.addSublayer(iconRowLayer2)

                // Icon Row 4
                //
                let iconRowLayer3 = CAShapeLayer()
                iconRowLayer3.name = "Icon Row 4"
                iconRowLayer3.bounds = CGRect(x: 0.0, y: 0.0, width: 89.0, height: 18.0)
                iconRowLayer3.position = CGPoint(x: 6.0, y: 81.0)
                iconRowLayer3.anchorPoint = CGPoint(x: 0.0, y: 0.0)
                iconRowLayer3.contentsGravity = kCAGravityCenter
                iconRowLayer3.opacity = 0.748641
                iconRowLayer3.path = iconRowPath3
                iconRowLayer3.fillColor = fillcolor1.cgColor
                iconRowLayer3.strokeColor = strokecolor.cgColor
                iconRowLayer3.fillRule = kCAFillRuleEvenOdd
                iconRowLayer3.lineWidth = 0.0

                backdropLayer.addSublayer(iconRowLayer3)

                // Icon Row 5
                //
                let iconRowLayer4 = CAShapeLayer()
                iconRowLayer4.name = "Icon Row 5"
                iconRowLayer4.bounds = CGRect(x: 0.0, y: 0.0, width: 65.0, height: 18.0)
                iconRowLayer4.position = CGPoint(x: 6.0, y: 104.0)
                iconRowLayer4.anchorPoint = CGPoint(x: 0.0, y: 0.0)
                iconRowLayer4.contentsGravity = kCAGravityCenter
                iconRowLayer4.opacity = 0.748641
                iconRowLayer4.path = iconRowPath4
                iconRowLayer4.fillColor = fillcolor1.cgColor
                iconRowLayer4.strokeColor = strokecolor.cgColor
                iconRowLayer4.fillRule = kCAFillRuleEvenOdd
                iconRowLayer4.lineWidth = 0.0

                backdropLayer.addSublayer(iconRowLayer4)

                // Icon Row 6
                //
                let iconRowLayer5 = CAShapeLayer()
                iconRowLayer5.name = "Icon Row 6"
                iconRowLayer5.bounds = CGRect(x: 0.0, y: 0.0, width: 89.0, height: 18.0)
                iconRowLayer5.position = CGPoint(x: 6.0, y: 153.0)
                iconRowLayer5.anchorPoint = CGPoint(x: 0.0, y: 0.0)
                iconRowLayer5.contentsGravity = kCAGravityCenter
                iconRowLayer5.opacity = 0.748641
                iconRowLayer5.path = iconRowPath5
                iconRowLayer5.fillColor = fillcolor1.cgColor
                iconRowLayer5.strokeColor = strokecolor.cgColor
                iconRowLayer5.fillRule = kCAFillRuleEvenOdd
                iconRowLayer5.lineWidth = 0.0

                backdropLayer.addSublayer(iconRowLayer5)

                // Workflow Icon
                //
                let workflowIconLayer = CAShapeLayer()
                workflowIconLayer.name = "Workflow Icon"
                workflowIconLayer.bounds = CGRect(x: 0.0, y: 0.0, width: 18.0, height: 18.0)
                workflowIconLayer.position = CGPoint(x: 77.0, y: 104.0)
                workflowIconLayer.anchorPoint = CGPoint(x: 0.0, y: 0.0)
                workflowIconLayer.contentsGravity = kCAGravityCenter
                workflowIconLayer.opacity = 0.748641
                workflowIconLayer.path = workflowIconPath
                workflowIconLayer.fillColor = fillcolor2.cgColor
                workflowIconLayer.strokeColor = strokecolor.cgColor
                workflowIconLayer.fillRule = kCAFillRuleEvenOdd
                workflowIconLayer.lineWidth = 0.0

                backdropLayer.addSublayer(workflowIconLayer)
            backdropLayer.colors = [ color.cgColor, color1.cgColor ]
            backdropLayer.locations = [ 0, 1 ]
            backdropLayer.startPoint = CGPoint(x: 0.5, y: 0.0)
            backdropLayer.endPoint = CGPoint(x: 0.5, y: 1.0)

            touchExampleLayer.addSublayer(backdropLayer)

            // 3D Touch Pluse
            //
            let dTouchPluseLayer = CALayer()
            dTouchPluseLayer.name = "3D Touch Pluse"
            dTouchPluseLayer.bounds = CGRect(x: 0.0, y: 0.0, width: 8.0, height: 8.0)
            dTouchPluseLayer.position = CGPoint(x: 86.0, y: 113.0)
            dTouchPluseLayer.contentsGravity = kCAGravityCenter
            dTouchPluseLayer.opacity = 0.6
            dTouchPluseLayer.backgroundColor = backgroundcolor1.cgColor
            dTouchPluseLayer.cornerRadius = 4.0
            dTouchPluseLayer.borderWidth = 1.0
            dTouchPluseLayer.borderColor = bordercolor2.cgColor
            dTouchPluseLayer.shadowOffset = CGSize(width: 0.0, height: 1.0)
            dTouchPluseLayer.fillMode = kCAFillModeForwards
            dTouchPluseLayer.transform = CATransform3D( m11: 0.0, m12: 0.0, m13: 0.0, m14: 0.0,
                                                    m21: 0.0, m22: 0.0, m23: 0.0, m24: 0.0,
                                                    m31: 0.0, m32: 0.0, m33: 1.0, m34: 0.0,
                                                    m41: 0.0, m42: 0.0, m43: 0.0, m44: 1.0 )

                // 3D Touch Pluse Animations
                //

                // transform.scale
                //
                let transformScaleAnimation = CABasicAnimation()
                transformScaleAnimation.beginTime = 1.6509716796875
                transformScaleAnimation.duration = 0.698056640625002
                transformScaleAnimation.fillMode = kCAFillModeForwards
                transformScaleAnimation.isRemovedOnCompletion = false
                transformScaleAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                transformScaleAnimation.keyPath = "transform.scale"
                transformScaleAnimation.toValue = 13
                transformScaleAnimation.fromValue = 0


                // opacity
                //
                let opacityAnimation = CABasicAnimation()
                opacityAnimation.beginTime = 2.0649072265625
                opacityAnimation.duration = 0.28412109375
                opacityAnimation.fillMode = kCAFillModeForwards
                opacityAnimation.isRemovedOnCompletion = false
                opacityAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                opacityAnimation.keyPath = "opacity"
                opacityAnimation.toValue = 0


            touchExampleLayer.addSublayer(dTouchPluseLayer)

            // 3D Press
            //
            let dPressLayer = CALayer()
            dPressLayer.name = "3D Press"
            dPressLayer.bounds = CGRect(x: 0.0, y: 0.0, width: 91.0, height: 86.0)
            dPressLayer.position = CGPoint(x: 95.0, y: 120.0)
            dPressLayer.anchorPoint = CGPoint(x: 1.0, y: 1.0)
            dPressLayer.contentsGravity = kCAGravityCenter
            dPressLayer.opacity = 0.0
            dPressLayer.backgroundColor = backgroundcolor2.cgColor
            dPressLayer.borderColor = bordercolor3.cgColor
            dPressLayer.shadowOffset = CGSize(width: 0.0, height: 1.0)
            dPressLayer.fillMode = kCAFillModeForwards
            dPressLayer.transform = CATransform3D( m11: 0.0, m12: 0.0, m13: 0.0, m14: 0.0,
                                               m21: 0.0, m22: 0.0, m23: 0.0, m24: 0.0,
                                               m31: 0.0, m32: 0.0, m33: 1.0, m34: 0.0,
                                               m41: 0.0, m42: 0.0, m43: 0.0, m44: 1.0 )

                // 3D Press Animations
                //

                // transform.scale
                //
                let transformScaleAnimation1 = CABasicAnimation()
                transformScaleAnimation1.beginTime = 1.7969580078125
                transformScaleAnimation1.duration = 0.499999
                transformScaleAnimation1.fillMode = kCAFillModeForwards
                transformScaleAnimation1.isRemovedOnCompletion = false
                transformScaleAnimation1.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                transformScaleAnimation1.keyPath = "transform.scale"
                transformScaleAnimation1.toValue = 1
                transformScaleAnimation1.fromValue = 0


                // opacity
                //
                let opacityAnimation1 = CABasicAnimation()
                opacityAnimation1.beginTime = 1.7969580078125
                opacityAnimation1.duration = 0.5
                opacityAnimation1.fillMode = kCAFillModeForwards
                opacityAnimation1.isRemovedOnCompletion = false
                opacityAnimation1.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                opacityAnimation1.keyPath = "opacity"
                opacityAnimation1.toValue = 1


                // 3D Press Sublayers
                //

                // Widget
                //
                let widgetLayer = CALayer()
                widgetLayer.name = "Widget"
                widgetLayer.bounds = CGRect(x: 0.0, y: 0.0, width: 91.0, height: 37.0)
                widgetLayer.position = CGPoint(x: 0.0, y: 49.0)
                widgetLayer.anchorPoint = CGPoint(x: 0.0, y: 0.0)
                widgetLayer.contentsGravity = kCAGravityCenter
                widgetLayer.cornerRadius = 5.0
                widgetLayer.borderColor = bordercolor4.cgColor
                widgetLayer.shadowRadius = 2.0
                widgetLayer.shadowOffset = CGSize(width: 0.0, height: 1.0)

                    // Widget Sublayers
                    //

                    // Bottom
                    //
                    let bottomLayer = CAShapeLayer()
                    bottomLayer.name = "Bottom"
                    bottomLayer.bounds = CGRect(x: 0.0, y: 0.0, width: 91.0, height: 27.0)
                    bottomLayer.position = CGPoint(x: 0.0, y: 10.0)
                    bottomLayer.anchorPoint = CGPoint(x: 0.0, y: 0.0)
                    bottomLayer.contentsGravity = kCAGravityCenter
                    bottomLayer.path = bottomPath
                    bottomLayer.fillColor = fillcolor3.cgColor
                    bottomLayer.strokeColor = strokecolor.cgColor
                    bottomLayer.fillRule = kCAFillRuleEvenOdd
                    bottomLayer.lineWidth = 0.0

                    widgetLayer.addSublayer(bottomLayer)

                    // Workflow Icon
                    //
                    let workflowIconLayer1 = CAGradientLayer()
                    workflowIconLayer1.name = "Workflow Icon"
                    workflowIconLayer1.bounds = CGRect(x: 0.0, y: 0.0, width: 41.0, height: 9.0)
                    workflowIconLayer1.position = CGPoint(x: 3.0, y: 13.0)
                    workflowIconLayer1.anchorPoint = CGPoint(x: 0.0, y: 0.0)
                    workflowIconLayer1.contentsGravity = kCAGravityCenter
                    workflowIconLayer1.cornerRadius = 2.0
                    workflowIconLayer1.borderColor = bordercolor5.cgColor
                    workflowIconLayer1.shadowOffset = CGSize(width: 0.0, height: 1.0)
                    workflowIconLayer1.fillMode = kCAFillModeForwards
                    workflowIconLayer1.colors = [ color2.cgColor, color3.cgColor ]
                    workflowIconLayer1.locations = [ 0, 1 ]
                    workflowIconLayer1.startPoint = CGPoint(x: 0.0, y: 0.0)
                    workflowIconLayer1.endPoint = CGPoint(x: 1.0, y: 1.0)

                    widgetLayer.addSublayer(workflowIconLayer1)

                    // Workflow Icon
                    //
                    let workflowIconLayer2 = CAGradientLayer()
                    workflowIconLayer2.name = "Workflow Icon"
                    workflowIconLayer2.bounds = CGRect(x: 0.0, y: 0.0, width: 41.0, height: 9.0)
                    workflowIconLayer2.position = CGPoint(x: 46.0, y: 13.0)
                    workflowIconLayer2.anchorPoint = CGPoint(x: 0.0, y: 0.0)
                    workflowIconLayer2.contentsGravity = kCAGravityCenter
                    workflowIconLayer2.cornerRadius = 2.0
                    workflowIconLayer2.borderColor = bordercolor6.cgColor
                    workflowIconLayer2.shadowOffset = CGSize(width: 0.0, height: 1.0)
                    workflowIconLayer2.fillMode = kCAFillModeForwards
                    workflowIconLayer2.colors = [ color4.cgColor, color5.cgColor ]
                    workflowIconLayer2.locations = [ 0, 1 ]
                    workflowIconLayer2.startPoint = CGPoint(x: 0.0, y: 0.0)
                    workflowIconLayer2.endPoint = CGPoint(x: 1.0, y: 1.0)

                    widgetLayer.addSublayer(workflowIconLayer2)

                    // Workflow Icon
                    //
                    let workflowIconLayer3 = CAGradientLayer()
                    workflowIconLayer3.name = "Workflow Icon"
                    workflowIconLayer3.bounds = CGRect(x: 0.0, y: 0.0, width: 41.0, height: 9.0)
                    workflowIconLayer3.position = CGPoint(x: 46.0, y: 25.0)
                    workflowIconLayer3.anchorPoint = CGPoint(x: 0.0, y: 0.0)
                    workflowIconLayer3.contentsGravity = kCAGravityCenter
                    workflowIconLayer3.cornerRadius = 2.0
                    workflowIconLayer3.borderColor = bordercolor6.cgColor
                    workflowIconLayer3.shadowOffset = CGSize(width: 0.0, height: 1.0)
                    workflowIconLayer3.fillMode = kCAFillModeForwards
                    workflowIconLayer3.colors = [ color6.cgColor, color7.cgColor ]
                    workflowIconLayer3.locations = [ 0, 1 ]
                    workflowIconLayer3.startPoint = CGPoint(x: 0.0, y: 0.0)
                    workflowIconLayer3.endPoint = CGPoint(x: 1.0, y: 1.0)

                    widgetLayer.addSublayer(workflowIconLayer3)

                    // Workflow Icon
                    //
                    let workflowIconLayer4 = CAGradientLayer()
                    workflowIconLayer4.name = "Workflow Icon"
                    workflowIconLayer4.bounds = CGRect(x: 0.0, y: 0.0, width: 41.0, height: 9.0)
                    workflowIconLayer4.position = CGPoint(x: 3.0, y: 25.0)
                    workflowIconLayer4.anchorPoint = CGPoint(x: 0.0, y: 0.0)
                    workflowIconLayer4.contentsGravity = kCAGravityCenter
                    workflowIconLayer4.cornerRadius = 2.0
                    workflowIconLayer4.borderColor = bordercolor5.cgColor
                    workflowIconLayer4.shadowOffset = CGSize(width: 0.0, height: 1.0)
                    workflowIconLayer4.fillMode = kCAFillModeForwards
                    workflowIconLayer4.colors = [ color8.cgColor, color9.cgColor ]
                    workflowIconLayer4.locations = [ 0, 1 ]
                    workflowIconLayer4.startPoint = CGPoint(x: 0.0, y: 0.0)
                    workflowIconLayer4.endPoint = CGPoint(x: 1.0, y: 1.0)

                    widgetLayer.addSublayer(workflowIconLayer4)

                    // Top
                    //
                    let topLayer = CAShapeLayer()
                    topLayer.name = "Top"
                    topLayer.bounds = CGRect(x: 0.0, y: 0.0, width: 91.0, height: 10.0)
                    topLayer.position = CGPoint(x: 0.0, y: 0.0)
                    topLayer.anchorPoint = CGPoint(x: 0.0, y: 0.0)
                    topLayer.contentsGravity = kCAGravityCenter
                    topLayer.path = topPath
                    topLayer.fillColor = fillcolor4.cgColor
                    topLayer.strokeColor = strokecolor.cgColor
                    topLayer.fillRule = kCAFillRuleEvenOdd
                    topLayer.lineWidth = 0.0

                    widgetLayer.addSublayer(topLayer)

                    // App Icon
                    //
                    let appIconLayer = CALayer()
                    appIconLayer.name = "App Icon"
                    appIconLayer.bounds = CGRect(x: 0.0, y: 0.0, width: 6.0, height: 6.0)
                    appIconLayer.position = CGPoint(x: 3.0, y: 2.0)
                    appIconLayer.anchorPoint = CGPoint(x: 0.0, y: 0.0)
                    appIconLayer.contentsGravity = kCAGravityCenter
                    appIconLayer.backgroundColor = fillcolor2.cgColor
                    appIconLayer.cornerRadius = 2.0
                    appIconLayer.borderColor = bordercolor7.cgColor
                    appIconLayer.shadowOffset = CGSize(width: 0.0, height: 1.0)
                    appIconLayer.fillMode = kCAFillModeForwards

                    widgetLayer.addSublayer(appIconLayer)

                    // WORKFLOW
                    //
                    let workflowLayer = CATextLayer()
                    workflowLayer.name = "WORKFLOW"
                    workflowLayer.bounds = CGRect(x: 0.0, y: 0.0, width: 30.0, height: 6.0)
                    workflowLayer.position = CGPoint(x: 12.0, y: 2.0)
                    workflowLayer.anchorPoint = CGPoint(x: 0.0, y: 0.0)
                    workflowLayer.contentsGravity = kCAGravityLeft
                    workflowLayer.contentsScale = 2.0
                    workflowLayer.magnificationFilter = kCAFilterNearest
                    workflowLayer.minificationFilter = kCAFilterNearest
                    workflowLayer.needsDisplayOnBoundsChange = true
                    workflowLayer.string = "WORKFLOW"
                    workflowLayer.fontSize = 5.0
                    workflowLayer.foregroundColor = foregroundcolor.cgColor
                    workflowLayer.font = systemFontRegularFont
                    workflowLayer.alignmentMode = kCAAlignmentLeft

                    widgetLayer.addSublayer(workflowLayer)

                dPressLayer.addSublayer(widgetLayer)

                // Actions
                //
                let actionsLayer = CALayer()
                actionsLayer.name = "Actions"
                actionsLayer.bounds = CGRect(x: 0.0, y: 0.0, width: 91.0, height: 44.0)
                actionsLayer.position = CGPoint(x: 0.0, y: 0.0)
                actionsLayer.anchorPoint = CGPoint(x: 0.0, y: 0.0)
                actionsLayer.contentsGravity = kCAGravityCenter

                    // Actions Sublayers
                    //

                    // Rectangle 7
                    //
                    let rectangleLayer = CAShapeLayer()
                    rectangleLayer.name = "Rectangle 7"
                    rectangleLayer.bounds = CGRect(x: 0.0, y: 0.0, width: 91.0, height: 44.0)
                    rectangleLayer.position = CGPoint(x: 0.0, y: 0.0)
                    rectangleLayer.anchorPoint = CGPoint(x: 0.0, y: 0.0)
                    rectangleLayer.contentsGravity = kCAGravityCenter
                    rectangleLayer.opacity = 0.783175
                    rectangleLayer.path = rectanglePath
                    rectangleLayer.fillColor = fillcolor1.cgColor
                    rectangleLayer.strokeColor = strokecolor.cgColor
                    rectangleLayer.fillRule = kCAFillRuleEvenOdd
                    rectangleLayer.lineWidth = 0.0

                    actionsLayer.addSublayer(rectangleLayer)

                    // Rectangle 13
                    //
                    let rectangleLayer1 = CAShapeLayer()
                    rectangleLayer1.name = "Rectangle 13"
                    rectangleLayer1.bounds = CGRect(x: 0.0, y: 0.0, width: 22.0, height: 1.0)
                    rectangleLayer1.position = CGPoint(x: 18.0, y: 35.0)
                    rectangleLayer1.anchorPoint = CGPoint(x: 0.0, y: 0.0)
                    rectangleLayer1.contentsGravity = kCAGravityCenter
                    rectangleLayer1.path = rectanglePath1
                    rectangleLayer1.fillColor = fillcolor.cgColor
                    rectangleLayer1.strokeColor = strokecolor1.cgColor
                    rectangleLayer1.fillRule = kCAFillRuleEvenOdd
                    rectangleLayer1.lineWidth = 1.0

                    actionsLayer.addSublayer(rectangleLayer1)

                    // Rectangle 11
                    //
                    let rectangleLayer2 = CAShapeLayer()
                    rectangleLayer2.name = "Rectangle 11"
                    rectangleLayer2.bounds = CGRect(x: 0.0, y: 0.0, width: 24.0, height: 1.0)
                    rectangleLayer2.position = CGPoint(x: 18.0, y: 22.0)
                    rectangleLayer2.anchorPoint = CGPoint(x: 0.0, y: 0.0)
                    rectangleLayer2.contentsGravity = kCAGravityCenter
                    rectangleLayer2.path = rectanglePath2
                    rectangleLayer2.fillColor = fillcolor.cgColor
                    rectangleLayer2.strokeColor = strokecolor1.cgColor
                    rectangleLayer2.fillRule = kCAFillRuleEvenOdd
                    rectangleLayer2.lineWidth = 1.0

                    actionsLayer.addSublayer(rectangleLayer2)

                    // Rectangle 12
                    //
                    let rectangleLayer3 = CAShapeLayer()
                    rectangleLayer3.name = "Rectangle 12"
                    rectangleLayer3.bounds = CGRect(x: 0.0, y: 0.0, width: 11.0, height: 1.0)
                    rectangleLayer3.position = CGPoint(x: 45.0, y: 22.0)
                    rectangleLayer3.anchorPoint = CGPoint(x: 0.0, y: 0.0)
                    rectangleLayer3.contentsGravity = kCAGravityCenter
                    rectangleLayer3.path = rectanglePath3
                    rectangleLayer3.fillColor = fillcolor.cgColor
                    rectangleLayer3.strokeColor = strokecolor1.cgColor
                    rectangleLayer3.fillRule = kCAFillRuleEvenOdd
                    rectangleLayer3.lineWidth = 1.0

                    actionsLayer.addSublayer(rectangleLayer3)

                    // Rectangle 9
                    //
                    let rectangleLayer4 = CAShapeLayer()
                    rectangleLayer4.name = "Rectangle 9"
                    rectangleLayer4.bounds = CGRect(x: 0.0, y: 0.0, width: 11.0, height: 1.0)
                    rectangleLayer4.position = CGPoint(x: 18.0, y: 9.0)
                    rectangleLayer4.anchorPoint = CGPoint(x: 0.0, y: 0.0)
                    rectangleLayer4.contentsGravity = kCAGravityCenter
                    rectangleLayer4.path = rectanglePath4
                    rectangleLayer4.fillColor = fillcolor.cgColor
                    rectangleLayer4.strokeColor = strokecolor1.cgColor
                    rectangleLayer4.fillRule = kCAFillRuleEvenOdd
                    rectangleLayer4.lineWidth = 1.0

                    actionsLayer.addSublayer(rectangleLayer4)

                    // Rectangle 10
                    //
                    let rectangleLayer5 = CAShapeLayer()
                    rectangleLayer5.name = "Rectangle 10"
                    rectangleLayer5.bounds = CGRect(x: 0.0, y: 0.0, width: 16.0, height: 1.0)
                    rectangleLayer5.position = CGPoint(x: 31.0, y: 9.0)
                    rectangleLayer5.anchorPoint = CGPoint(x: 0.0, y: 0.0)
                    rectangleLayer5.contentsGravity = kCAGravityCenter
                    rectangleLayer5.path = rectanglePath5
                    rectangleLayer5.fillColor = fillcolor.cgColor
                    rectangleLayer5.strokeColor = strokecolor1.cgColor
                    rectangleLayer5.fillRule = kCAFillRuleEvenOdd
                    rectangleLayer5.lineWidth = 1.0

                    actionsLayer.addSublayer(rectangleLayer5)

                    // Oval 3
                    //
                    let ovalLayer = CAShapeLayer()
                    ovalLayer.name = "Oval 3"
                    ovalLayer.bounds = CGRect(x: 0.0, y: 0.0, width: 8.0, height: 8.0)
                    ovalLayer.position = CGPoint(x: 5.0, y: 5.0)
                    ovalLayer.anchorPoint = CGPoint(x: 0.0, y: 0.0)
                    ovalLayer.contentsGravity = kCAGravityCenter
                    ovalLayer.path = ovalPath
                    ovalLayer.fillColor = fillcolor.cgColor
                    ovalLayer.strokeColor = strokecolor.cgColor
                    ovalLayer.fillRule = kCAFillRuleEvenOdd
                    ovalLayer.lineWidth = 0.0

                    actionsLayer.addSublayer(ovalLayer)

                    // Oval 3 Copy
                    //
                    let ovalCopyLayer = CAShapeLayer()
                    ovalCopyLayer.name = "Oval 3 Copy"
                    ovalCopyLayer.bounds = CGRect(x: 0.0, y: 0.0, width: 8.0, height: 8.0)
                    ovalCopyLayer.position = CGPoint(x: 5.0, y: 18.0)
                    ovalCopyLayer.anchorPoint = CGPoint(x: 0.0, y: 0.0)
                    ovalCopyLayer.contentsGravity = kCAGravityCenter
                    ovalCopyLayer.path = ovalCopyPath
                    ovalCopyLayer.fillColor = fillcolor.cgColor
                    ovalCopyLayer.strokeColor = strokecolor.cgColor
                    ovalCopyLayer.fillRule = kCAFillRuleEvenOdd
                    ovalCopyLayer.lineWidth = 0.0

                    actionsLayer.addSublayer(ovalCopyLayer)

                    // Oval 3 Copy 2
                    //
                    let ovalCopyLayer1 = CAShapeLayer()
                    ovalCopyLayer1.name = "Oval 3 Copy 2"
                    ovalCopyLayer1.bounds = CGRect(x: 0.0, y: 0.0, width: 8.0, height: 8.0)
                    ovalCopyLayer1.position = CGPoint(x: 5.0, y: 31.0)
                    ovalCopyLayer1.anchorPoint = CGPoint(x: 0.0, y: 0.0)
                    ovalCopyLayer1.contentsGravity = kCAGravityCenter
                    ovalCopyLayer1.path = ovalCopyPath1
                    ovalCopyLayer1.fillColor = fillcolor.cgColor
                    ovalCopyLayer1.strokeColor = strokecolor.cgColor
                    ovalCopyLayer1.fillRule = kCAFillRuleEvenOdd
                    ovalCopyLayer1.lineWidth = 0.0

                    actionsLayer.addSublayer(ovalCopyLayer1)

                dPressLayer.addSublayer(actionsLayer)

            touchExampleLayer.addSublayer(dPressLayer)

            // Touch
            //
            let touchLayer = CAShapeLayer()
            touchLayer.name = "Touch"
            touchLayer.bounds = CGRect(x: 0.0, y: 0.0, width: 11.0, height: 11.0)
            touchLayer.position = CGPoint(x: 49.5, y: 87.5)
            touchLayer.contentsGravity = kCAGravityCenter
            touchLayer.opacity = 0.820312
            touchLayer.shadowOpacity = 1.0
            touchLayer.shadowOffset = CGSize(width: 0.0, height: 1.0)
            touchLayer.shadowColor = shadowcolor.cgColor

                // Touch Animations
                //

                // transform.scale
                //
                let transformScaleAnimation2 = CAKeyframeAnimation()
                transformScaleAnimation2.beginTime = 1.2969580078125
                transformScaleAnimation2.duration = 0.5
                transformScaleAnimation2.fillMode = kCAFillModeForwards
                transformScaleAnimation2.isRemovedOnCompletion = false
                transformScaleAnimation2.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                transformScaleAnimation2.keyPath = "transform.scale"
                transformScaleAnimation2.values = [ 1, 0.8, 0.65, 1 ]
                transformScaleAnimation2.keyTimes = [ 0, 0.3333333, 0.92, 1 ]
                transformScaleAnimation2.calculationMode = kCAAnimationLinear


                // position
                //
                let positionAnimation = CAKeyframeAnimation()
                positionAnimation.beginTime = 0.608657226562497
                positionAnimation.duration = 0.68830078125
                positionAnimation.fillMode = kCAFillModeForwards
                positionAnimation.isRemovedOnCompletion = false
                positionAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionDefault)
                positionAnimation.keyPath = "position"
                positionAnimation.values = [ CGPoint(x: 0.0, y: 0.0), CGPoint(x: 400.0, y: 400.0) ]
                positionAnimation.path = positionanimationPath
                positionAnimation.calculationMode = kCAAnimationLinear

            touchLayer.path = touchPath
            touchLayer.fillColor = fillcolor1.cgColor
            touchLayer.strokeColor = strokecolor.cgColor
            touchLayer.fillRule = kCAFillRuleEvenOdd
            touchLayer.lineWidth = 0.0

            touchExampleLayer.addSublayer(touchLayer)

        self.layer.addSublayer(touchExampleLayer)
        // Layer Instance Assignments
        //
        self.touchLayer = touchLayer
        self.dPressLayer = dPressLayer
        self.dTouchPluseLayer = dTouchPluseLayer
        self.backdropLayer = backdropLayer
        // Animation Instance Assignments
        //
        self.filtersGaussianBlurInputradiusAnimation = filtersGaussianBlurInputradiusAnimation
        self.transformScaleAnimation = transformScaleAnimation
        self.opacityAnimation = opacityAnimation
        self.transformScaleAnimation1 = transformScaleAnimation1
        self.opacityAnimation1 = opacityAnimation1
        self.transformScaleAnimation2 = transformScaleAnimation2
        self.positionAnimation = positionAnimation

    }

    // MARK: - Responder

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        guard let location = touches.first?.location(in: self.superview),
              let hitLayer = self.layer.presentation()?.hitTest(location) else { return }

        print("Layer \(hitLayer.name ?? String(describing: hitLayer)) was tapped.")

        // Call action methods
        //
        self.playDTouchAction(self)
    }

    // MARK: - Actions

    @IBAction func playDTouchAction(_ sender: Any?)
    {
        self.positionAnimation!.beginTime = self.touchLayer!.convertTime(CACurrentMediaTime(), from: nil) + 0.608657226562497
        self.touchLayer?.add(self.positionAnimation!, forKey: "positionAnimation")

        self.transformScaleAnimation2!.beginTime = self.touchLayer!.convertTime(CACurrentMediaTime(), from: nil) + 1.2969580078125
        self.touchLayer?.add(self.transformScaleAnimation2!, forKey: "transformScaleAnimation2")

        self.transformScaleAnimation1!.beginTime = self.dPressLayer!.convertTime(CACurrentMediaTime(), from: nil) + 1.7969580078125
        self.dPressLayer?.add(self.transformScaleAnimation1!, forKey: "transformScaleAnimation1")

        self.opacityAnimation1!.beginTime = self.dPressLayer!.convertTime(CACurrentMediaTime(), from: nil) + 1.7969580078125
        self.dPressLayer?.add(self.opacityAnimation1!, forKey: "opacityAnimation1")

        self.transformScaleAnimation!.beginTime = self.dTouchPluseLayer!.convertTime(CACurrentMediaTime(), from: nil) + 1.6509716796875
        self.dTouchPluseLayer?.add(self.transformScaleAnimation!, forKey: "transformScaleAnimation")

        self.opacityAnimation!.beginTime = self.dTouchPluseLayer!.convertTime(CACurrentMediaTime(), from: nil) + 2.0649072265625
        self.dTouchPluseLayer?.add(self.opacityAnimation!, forKey: "opacityAnimation")

        self.filtersGaussianBlurInputradiusAnimation!.beginTime = self.backdropLayer!.convertTime(CACurrentMediaTime(), from: nil) + 1.2969580078125
        self.backdropLayer?.add(self.filtersGaussianBlurInputradiusAnimation!, forKey: "filtersGaussianBlurInputradiusAnimation")
    }
}
