import SwiftUI

struct HomeView: View {
    @State private var showTabView: Bool = false
    var body: some View {
        if showTabView {
            MainTabView()
        }
        else {
            VStack {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 125, height: 125)
                    .padding(.top, 240)
                Text("MINIMALIST")
                    .font(.appTitle)
                    .tracking(5)
                    .padding(.top, 6)
                Text("furniture store")
                    .font(.appSubtitle)
                Spacer()
                Button {
                    showTabView = true
                } label: {
                    Text("START SHOP")
                }
                .buttonStyle(BasicButtonStyle(width: 200))
                .padding(.bottom, 145)
            }
        }
    }
}
