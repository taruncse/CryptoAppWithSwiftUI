//
//  HomeView.swift
//  CryptoAppWithSwiftUI
//
//

import SwiftUI

struct HomeView: View {
    @State private var showPortfolio : Bool = false

    var body: some View {
        ZStack{
            Color.theme.background
                .ignoresSafeArea()
            
            VStack{
                homeHeader
                Spacer()
            }
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            HomeView()
                .navigationBarHidden(true)
        }
    }
}

extension HomeView{
    private var homeHeader : some View {
        HStack{
            CircleButtonView(iconName: showPortfolio ? "plus" : "info")
                //.animation(.none, value: UUID())
                .transaction { transction in
                    transction.animation = nil
                }.background(
                    CircleButtonAnimation(animate: $showPortfolio)
                )
            Spacer()
            Text( showPortfolio ? "Portfolio" : "Live Prices")
                .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(Color.theme.accent)
                .transaction { transction in
                    transction.animation = nil
                }
            Spacer()
            CircleButtonView(iconName: "chevron.forward")
                .rotationEffect(Angle(degrees: showPortfolio ? 180 : 0))
                .onTapGesture {
                    withAnimation(.spring()){
                        showPortfolio.toggle()
                    }
                    
                }
            
        }
    }
}
