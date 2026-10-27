import SwiftUI

struct HomeView: View{
    @State private var showTabView: Bool = false
    var body: some View{
        if showTabView{
            MainTabView()
        }
        else{
            VStack{
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 125, height: 125)
                    .padding(.top, 240)
                Text("MINIMALIST")
                    .font(.custom("SFProText-Semibold", size: 25))
                    .tracking(5)
                    .padding(.top, 6)
                Text("furniture store")
                    .font(.custom("SFProText-Regular", size: 14))
                Spacer()
                Button{
                    showTabView = true
                } label:{
                    Image("startButton")
                }
                .padding(.bottom, 145)
            }
        }
    }
}
