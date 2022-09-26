//
//  CoinRowView.swift
//  CryptoAppWithSwiftUI
//
//

import SwiftUI

struct CoinRowView: View {
    let coin : CoinModel
    let showHoldingsColumn : Bool
    var body: some View {
        HStack{
            leftView
            Spacer()
            if showHoldingsColumn{
                middleView
            }
            Spacer()
            rightView
        }.font(.subheadline)
    }
}

struct CoinRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            CoinRowView(coin: dev.coin, showHoldingsColumn: true)
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.light)
            
            CoinRowView(coin: dev.coin, showHoldingsColumn: true)
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
        }
    }
}

extension CoinRowView{
    var leftView : some View{
        HStack{
            Text("\(coin.rank)")
                .font(.caption)
                .foregroundColor(.theme.secondaryText)
                .frame(width: 25)
            Circle()
                .frame(width: 25, height: 25, alignment: .center)
            Text(coin.symbol.uppercased())
                .font(.headline)
                .padding(.leading, 6)
                .foregroundColor(.theme.accent)
        }
    }
    
    var middleView : some View{
        VStack(alignment: .trailing){
            Text(coin.currentHoldingsValue.asCurrencyWith6Decimal())
            Text((coin.currentHoldings ?? 0).asNumberString())
        }.foregroundColor(.theme.accent)
    }
    
    var rightView : some View{
        VStack(alignment: .trailing){
            Text(coin.currentPrice.asCurrencyWith6Decimal())
                .bold()
            Text((coin.priceChangePercentage24H ?? 0.0).asPercentString())
                .foregroundColor(
                    (coin.priceChangePercentage24H ?? 0.0) >= 0 ?
                    Color.theme.green : Color.theme.red
                )
        }.padding(.trailing)
    }
}
