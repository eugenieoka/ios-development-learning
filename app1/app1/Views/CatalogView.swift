import SwiftUI

struct CatalogView: View {
    @State private var viewModel = CatalogViewModel()
    
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        ScrollView {
            if viewModel.isLoading {
                ProgressView("Loading...")
            } else {
                LazyVGrid(columns: columns, spacing: 32) {
                    ForEach(viewModel.categories) { category in
                        CategoryCard(category: category)
                    }
                }
                .padding(.horizontal, 12)
                .padding(.vertical, 12)
            }
        }
        .task {
            viewModel.loadCategories()
        }
    }
}
