import Foundation

enum Tabs: String, CaseIterable {
    case catalog
    case favorites
    case cart
    case settings

    var icon: String {
        switch self {
        case .catalog: return "collection"
        case .favorites: return "heart"
        case .cart: return "cart"
        case .settings: return "glyph"
        }
    }

    var title: String {
        switch self {
        case .catalog: return "Catalog"
        case .favorites: return "Favorites"
        case .cart: return "Cart"
        case .settings: return "Settings"
        }
    }
}
