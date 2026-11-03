import SwiftUI

struct MainTabView: View {
    @State private var viewModel = MainTabViewModel()

    var body: some View {
        TabView(selection: $viewModel.selection) {
            ForEach(viewModel.tabs, id: \.self) { tab in
                Tab(value: tab) {
                    content(for: tab)
                } label: {
                    Label {
                        Text(tab.title)
                    } icon: {
                        Image(tab.icon)
                            .renderingMode(viewModel.selection == tab ? .template : .original)
                    }
                }
            }
        }
        .tint(.appOliv)
    }
    
    @ViewBuilder
        private func content(for tab: Tabs) -> some View {
            switch tab {
            case .catalog:
                CatalogView()
            case .favorites:
                Text("Favorites")
            case .cart:
                Text("Cart")
            case .settings:
                Text("Settings")
            }
        }
}
