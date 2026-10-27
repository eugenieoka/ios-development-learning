import SwiftUI

struct BasicButtonStyle: ButtonStyle {
    var height: CGFloat = 48
    var width: CGFloat? = nil
    var backgroundColor: Color = Color("oliv")
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(size: 17, weight: .semibold))
            .foregroundStyle(.white)
            .frame(width: width, height: height)
            .background(backgroundColor)
            .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}
