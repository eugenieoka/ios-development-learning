import SwiftUI

struct MainTabView: View {
    var body: some View{
        TabView{
            Tab("Catalog", image: "collection"){
                Text("Catalog")
            }
            Tab("Favourites", image: "heart"){
                Text ("Favourites")
            }
            Tab("Cart", image: "cart"){
                Text("Cart")
            }
            Tab("Settings", image: "glyph"){
                Text("Settings")
            }
        }
    }
}
