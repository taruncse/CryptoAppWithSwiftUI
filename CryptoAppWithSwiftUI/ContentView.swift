//
//  ContentView.swift
//  CryptoAppWithSwiftUI
//
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.theme.background
                .ignoresSafeArea()
            
            VStack{
                Text("Hello, world!")
                    .foregroundColor(Color.theme.accent)
                    .padding()
                Text("Hello, world!")
                    .foregroundColor(Color.theme.red)
                    .padding()
                Text("Hello, world!")
                    .foregroundColor(Color.theme.green)
                    .padding()
                Text("Hello, world!")
                    .foregroundColor(Color.theme.secondaryText)
                    .padding()
                    
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    }
}
