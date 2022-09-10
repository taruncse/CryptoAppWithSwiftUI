//
//  Color.swift
//  CryptoAppWithSwiftUI
//
//

import Foundation
import SwiftUI

extension Color{
    static let theme = ThemeColor()
}

struct ThemeColor{
    let background = Color("background")
    let green = Color("green")
    let red = Color("red")
    let accent = Color("accent")
    let secondaryText = Color("secondaryText")
}
