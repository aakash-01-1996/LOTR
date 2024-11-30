//
//  SelectCurrency.swift
//  LOTR
//
//  Created by Aakash Ambodkar
//

import SwiftUI

struct IconGrid: View {
    @Binding var currency: Currency
    
    var body: some View {
       
        LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
            ForEach(Currency.allCases){ currency in
                if self.currency == currency {
                    CurrencyIcon(currencyImage: currency.image,
                                 currencyName: currency.name)
                    .shadow(color: .black, radius: 10)
                    .overlay{
                        RoundedRectangle(cornerRadius:25)
                            .stroke(lineWidth: 3)
                            .opacity(0.5)
                    }
                } else {
                    CurrencyIcon(currencyImage: currency.image,
                                 currencyName: currency.name)
                    .onTapGesture {
                        self.currency = currency
                    }
                }
            }
        }
    }
}


#Preview {
    @Previewable @State var currency: Currency = .silverPiece
    
    IconGrid(currency: $currency)
}

/* {
Notes:
 - Currency icons | Use LazyVGrid to set the cols
 }*/
