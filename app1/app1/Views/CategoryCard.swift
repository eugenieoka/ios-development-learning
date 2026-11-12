import SwiftUI

struct CategoryCard: View {
    let model: CategoryCardModel
    
    var body: some View {
        VStack {
            Image(model.iconName)
                .resizable()
                .scaledToFit()
                .frame(height: 120)
                .padding(.top, 70)
            Text(model.iconName)
                .font(.appSubtitle)
                .padding(.bottom, 70)
        }
        .frame(width: 160, height: 160)
        .background(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.appGray, lineWidth: 2)
        )
    }
}
