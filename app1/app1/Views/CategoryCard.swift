import SwiftUI

struct CategoryCard: View {
    let category: Category
    
    var body: some View {
            VStack {
                Image(iconName(for: category.name))
                    .resizable()
                    .scaledToFit()
                    .frame(height: 120)
                    .padding(.top, 70)
                Text(iconName(for: category.name))
                    .font(.appSubtitle)
                    .padding(.bottom, 70)
            }
            .frame(width: 160, height: 160)
            .background(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(Color.appGray, lineWidth: 2)
                    )
    }
    
    private func iconName(for name: String) -> String {
        switch name.uppercased() {
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
