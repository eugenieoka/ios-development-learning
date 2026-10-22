import SwiftUI

struct BasicButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.custom("SFProText-Bold", size: 20))
            .foregroundStyle(.white)
            .background(
                Image(.basic)
                    .resizable()
                    .scaledToFill()
            )
    }
}

extension ButtonStyle where Self == BasicButtonStyle {
    static var myAppBasicButton: BasicButtonStyle { .init() }
}

struct HomeView: View {
    @State private var showTabView: Bool = false
    var body: some View{
        if showTabView{
            MainTabView()
        }
        else{
            VStack{
                Button("Start shop"){
                    showTabView = true
                }.buttonStyle(.myAppBasicButton)
            }
        }
    }
}
