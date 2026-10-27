import SwiftUI

struct BasicButtonStyle: ButtonStyle {
    var height: CGFloat = 48
    var width: CGFloat? = nil
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(size: 17, weight: .semibold))
            .foregroundStyle(.white)
            .frame(width: width, height: height)
            .background(Color("oliv"))
            .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}
