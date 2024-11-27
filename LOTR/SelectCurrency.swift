//
//  SelectCurrency.swift
//  LOTR
//
//  Created by Aakash Ambodkar on 11/24/24.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    @State var currency: Currency
    
    var body: some View {
        ZStack {
            // Parchment details
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack {
                // Text
                Text("Select the currency you are starting with: ")
                    .fontWeight(.bold)
                
                // Currency icons | Use LazyVGrid to set the cols
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
                
                // Text
                Text("Select the currency you are converting to: ")
                    .fontWeight(.bold)
                
                // Currency icons
                
                
                
                
                // Done button
                Button("Done"){
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown.mix(with: .black, by: 0.2))
                .font(.title)
                .padding()
                .foregroundStyle(.white)
            }
            .padding()
            .multilineTextAlignment(.center)
        }
    }
}




#Preview {
    SelectCurrency(currency: .silverPiece)
}
