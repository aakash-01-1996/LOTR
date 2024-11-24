//
//  ExchangeInfo.swift
//  LOTR
//
//  Created by Aakash Ambodkar
//

import SwiftUI

struct ExchangeInfo: View {
    var body: some View {
        ZStack{
            // Backgorund Parchment Image
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack{
                // Title text
                Text("Exchange Rates")
                    .font(.largeTitle)
                    .tracking(2)
                
                // Description Text
                Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:")
                    .font(.title3)
                    .padding()
                
                // Exchange rates
                
                HStack{
                    // Left Curr Image
                    Image(.goldpiece)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 33)
                    
                    // Exchange rate text
                    Text("1 Gold Piece = 4 Gold Pennies")
                    
                    // Right Curr Image
                    Image(.goldpenny)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 33)
                    
                }
                // Done Button
                Button("Done"){
                    
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown.mix(with: .black, by: 0.2))
                .font(.title)
                .padding()
                .foregroundStyle(.white)
                
            }
            .foregroundStyle(.black)
        }
        
    }
}

#Preview {
    ExchangeInfo()
}
