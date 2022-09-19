//
//  ButtonView.swift
//  CryptoAppWithSwiftUI
//
//

import SwiftUI

struct CircleButtonView: View {
    let iconName : String
    var body: some View {
        Image(systemName: iconName)
            .font(.headline)
            .frame(width: 50, height: 50, alignment: .center)
            .foregroundColor(Color.theme.accent)
            .background(
                Circle()
                    .foregroundColor(Color.theme.background)
            ).shadow(
                color: Color.theme.accent.opacity(0.25), radius: 10, x: 0, y: 0)
            .padding()
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CircleButtonView(iconName: "plus")
            .previewLayout(.sizeThatFits)
        
        CircleButtonView(iconName: "info")
            .previewLayout(.sizeThatFits)
            .colorScheme(.dark)
    }
}
