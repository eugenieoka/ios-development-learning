import Testing
import SwiftUI
@testable import app1

@MainActor
@Suite("Font Constants")
struct FontConstantsTests {
    
    @Test("appTitle is 25pt semibold")
    func appTitle() {
        #expect(Font.appTitle == Font.system(size: 25, weight: .semibold))
    }
    
    @Test("appSubtitle is 14pt regular")
    func appSubtitle() {
        #expect(Font.appSubtitle == Font.system(size: 14, weight: .regular))
    }
    
    @Test("buttonText is 17pt semibold")
    func buttonText() {
        #expect(Font.buttonText == Font.system(size: 17, weight: .semibold))
    }
}
