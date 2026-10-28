import SwiftUI

struct MainTabView: View {
    @State private var viewModel = MainTabViewModel()

    var body: some View {
        TabView(selection: $viewModel.selection) {
            ForEach(viewModel.tabs, id: \.self) { tab in
                Tab(value: tab) {
                    Text(tab.title)
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
        .tint(Color("oliv"))
    }
}
