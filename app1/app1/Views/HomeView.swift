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
                    .font(.system(size: 25, weight: .semibold))
                    .tracking(5)
                    .padding(.top, 6)
                Text("furniture store")
                    .font(.system(size: 14, weight: .regular))
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
