import SwiftUI

@Observable
class MainTabViewModel {
    var selection: Tabs = .catalog
    let tabs: [Tabs] = Tabs.allCases
}
