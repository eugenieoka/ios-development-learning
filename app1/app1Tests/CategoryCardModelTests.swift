import Testing
import SwiftUI
@testable import app1

@Suite("Category card model tests")
struct CategoryCardModelTests {
    
    @Test("Names match the correct icons")
    func testCategories() {
        
        let sofas = Category(id: "1", name: "SOFAS", thumbnailUrl: nil, subcategories: nil)
        let sofasModel = CategoryCardModel(category: sofas)
        #expect(sofasModel.iconName == "Couch")
        
        let tables = Category(id: "2", name: "TABLES", thumbnailUrl: nil, subcategories: nil)
        let tablesModel = CategoryCardModel(category: tables)
        #expect(tablesModel.iconName == "Table")
        
        let chairs = Category(id: "3", name: "CHAIRS", thumbnailUrl: nil, subcategories: nil)
        let chairsModel = CategoryCardModel(category: chairs)
        #expect(chairsModel.iconName == "Chair")
        
        let lamps = Category(id: "4", name: "LAMPS", thumbnailUrl: nil, subcategories: nil)
        let lampsModel = CategoryCardModel(category: lamps)
        #expect(lampsModel.iconName == "Lamp")
        
        let wardrobes = Category(id: "5", name: "WARDROBES", thumbnailUrl: nil, subcategories: nil)
        let wardrobesModel = CategoryCardModel(category: wardrobes)
        #expect(wardrobesModel.iconName == "Wardrobe")
        
        let beds = Category(id: "6", name: "BEDS", thumbnailUrl: nil, subcategories: nil)
        let bedsModel = CategoryCardModel(category: beds)
        #expect(bedsModel.iconName == "Bed")
    }
    
    @Test("Chair for unknown category")
    func testUnknownCategory() {
        let unknownCategory = Category(id: "99", name: "UNKNOWN", thumbnailUrl: nil, subcategories: nil)
        let model = CategoryCardModel(category: unknownCategory)
        #expect(model.iconName == "Chair")
    }}

