import Testing
import Foundation
@testable import app1

@MainActor
@Suite("Catalog ViewModel Tests")
struct CatalogViewModelTests {
    
    @Test("MockData parcing is correct")
    func mockDataParsing() throws {
        
        let viewModel = CatalogViewModel()
        viewModel.usedForUnitTesting = true
        viewModel.loadCategories()
        #expect(viewModel.categories.count == 9)
        #expect(viewModel.errorMessage == nil)
        
        let mirrors = viewModel.categories.first { $0.name == "MIRRORS" }
        #expect(mirrors != nil)
        #expect(mirrors?.thumbnailUrl == "")
        
        let rugs = viewModel.categories.first { $0.name == "RUGS" }
        #expect(rugs != nil)
        #expect(rugs?.thumbnailUrl == nil)
        
        let shelves = viewModel.categories.first { $0.name == "SHELVES" }
        #expect(shelves != nil)
        #expect(shelves?.thumbnailUrl == nil)
        #expect(shelves?.subcategories == nil)
    }
}
