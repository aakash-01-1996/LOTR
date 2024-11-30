//
//  CurrencyIcon.swift
//  LOTR
//
//  Created by Aakash Ambodkar
//

import SwiftUI

struct CurrencyIcon: View {
    @Environment(\.dismiss) var dismiss
    let currencyImage: ImageResource
    let currencyName: String

        var body: some View {
                // Currency icons
                ZStack(alignment: .bottom) {
                    // Currency image
                    Image(currencyImage)
                        .resizable()
                        .scaledToFit()
                    
                    //Currency name
                    Text(currencyName)
                        .padding(3)
                        .font(.caption)
                        .frame(maxWidth: .infinity)
                        .background(.brown.opacity(0.75))
                    
                }
                .padding(3)
                .frame(width:100, height:100)
                .background(.brown)
                .clipShape(.rect(cornerRadius: 25))

        }
    }


#Preview {
    CurrencyIcon(currencyImage: .goldpiece, currencyName: "Gold Piece")
}
