import Foundation

struct CategoryCardModel {
    
    let category: Category
    
    var iconName: String {
        switch category.name.uppercased() {
        case "SOFAS":     return "Couch"
        case "TABLES":    return "Table"
        case "CHAIRS":    return "Chair"
        case "LAMPS":     return "Lamp"
        case "WARDROBES": return "Wardrobe"
        case "BEDS":      return "Bed"
        default:          return "Chair"
        }
    }
}
