import Testing
import SwiftUI
import UIKit
@testable import app1

@MainActor
@Suite("Color Constants")
struct ColorConstantsTests {

    private func expectRGB(
        _ color: Color,
        red: CGFloat,
        green: CGFloat,
        blue: CGFloat,
        opacity: CGFloat = 1.0,
        sourceLocation: SourceLocation = #_sourceLocation
    ) {
        let ui = UIColor(color)
        var r: CGFloat = 0, g: CGFloat = 0, b: CGFloat = 0, a: CGFloat = 0
        ui.getRed(&r, green: &g, blue: &b, alpha: &a)

        #expect(abs(r - red) < 0.001,     "red mismatch: got \(r), expected \(red)",           sourceLocation: sourceLocation)
        #expect(abs(g - green) < 0.001,   "green mismatch: got \(g), expected \(green)",       sourceLocation: sourceLocation)
        #expect(abs(b - blue) < 0.001,    "blue mismatch: got \(b), expected \(blue)",         sourceLocation: sourceLocation)
        #expect(abs(a - opacity) < 0.001, "opacity mismatch: got \(a), expected \(opacity)",   sourceLocation: sourceLocation)
    }

    @Test("appBlack is #000000")
    func appBlack() {
        expectRGB(.appBlack, red: 0, green: 0, blue: 0)
    }

    @Test("appGray is #999999")
    func appGray() {
        expectRGB(.appGray, red: 229.0/255, green: 229.0/255, blue: 229.0/255)
    }

    @Test("appGreen is #34C759")
    func appGreen() {
        expectRGB(.appGreen, red: 52.0/255, green: 199.0/255, blue: 89.0/255)
    }

    @Test("appOliv is #A3BD80")
    func appOliv() {
        expectRGB(.appOliv, red: 163.0/255, green: 189.0/255, blue: 128.0/255)
    }

    @Test("appRed is #FF3B30")
    func appRed() {
        expectRGB(.appRed, red: 255.0/255, green: 59.0/255, blue: 48.0/255)
    }

    @Test("appSwamp is #809761")
    func appSwamp() {
        expectRGB(.appSwamp, red: 128.0/255, green: 151.0/255, blue: 97.0/255)
    }

    @Test("appWhite is #FFFFFF")
    func appWhite() {
        expectRGB(.appWhite, red: 255.0/255, green: 255.0/255, blue: 255.0/255)
    }

    @Test("appWhiteGray is #E5E5E5")
    func appWhiteGray() {
        expectRGB(.appWhiteGray, red: 237.0/255, green: 237.0/255, blue: 237.0/255)
    }

    @Test("appWolf is #EDEDED")
    func appWolf() {
        expectRGB(.appWolf, red: 153.0/255, green: 153.0/255, blue: 153.0/255)
    }

    @Test("appYellow is #E9CA5D")
    func appYellow() {
        expectRGB(.appYellow, red: 233.0/255, green: 202.0/255, blue: 93.0/255)
    }
}
