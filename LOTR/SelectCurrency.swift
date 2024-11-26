//
//  SelectCurrency.swift
//  LOTR
//
//  Created by Aakash Ambodkar on 11/24/24.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss

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
                
                // Currency icons
                ZStack(alignment: .bottom) {
                    // Currency image
                    LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
                        ForEach(0..<5){ _ in
                            CurrencyIcon(currencyImage: .copperpenny, currencyName: "Copper Penny")
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
    SelectCurrency()
}
