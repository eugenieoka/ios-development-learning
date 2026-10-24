import SwiftUI

struct MainTabView: View {
    
    @State private var selection: String = "catalog"
    
    var body: some View{
        TabView(selection: $selection){
            Tab("Catalog",
                image: selection == "catalog" ? "collection" : "collectionOff",
                value: "catalog"){
                Text("Catalog")
            }
            Tab("Favourites",
                image: selection == "favourites" ? "heart" : "heartOff",
                value: "favourites"){
                Text ("Favourites")
            }
            Tab("Cart",
                image: selection == "cart" ? "cart" : "cartOff",
                value: "cart"){
                Text("Cart")
            }
            Tab("Settings",
                image: selection == "settings" ? "glyph" : "glyphOff",
                value: "settings"){
                Text("Settings")
            }
        }
    }
}
