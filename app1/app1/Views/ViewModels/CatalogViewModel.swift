import SwiftUI

@Observable
class CatalogViewModel {
    var categories: [Category] = []
    var isLoading = false
    var errorMessage: String?
    
    func loadCategories() {
        isLoading = true
        defer { isLoading = false }
        
        guard let url = Bundle.main.url(forResource: "MockData", withExtension: "json") else {
            errorMessage = "Error: cannot find MockData file"
            return
        }
        
        do {
            let data = try Data(contentsOf: url)
            categories = try JSONDecoder().decode([Category].self, from: data)
        } catch {
            errorMessage = "Decoding error"
        }
    }
}
