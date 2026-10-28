import SwiftUI

struct MainTabView: View {
    @State private var selection: Tabs = .catalog

    var body: some View {
        TabView(selection: $selection) {
            ForEach(Tabs.allCases, id: \.self) { tab in
                Tab(value: tab) {
                    Text(tab.title)
                } label: {
                    Label {
                        Text(tab.title)
                    } icon: {
                        Image(tab.icon)
                            .renderingMode(selection == tab ? .template : .original)
                    }
                }
            }
        }
        .tint(Color("oliv"))
    }
}
