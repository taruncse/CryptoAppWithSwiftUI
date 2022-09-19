//
//  CryptoAppWithSwiftUIApp.swift
//  CryptoAppWithSwiftUI
//
//

import SwiftUI

@main
struct CryptoAppWithSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView{
                HomeView()
                    .navigationBarHidden(true)
            }
        }
    }
}
