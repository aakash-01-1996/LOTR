//
//  ContentView.swift
//  LOTR
//
//  Created by Aakash Ambodkar
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // Background Image
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                // Prancing Pony
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                
                // Currency exchange text
                Text("Currency Exchange")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
            
                // Conversion section
                HStack{
                    // Left Conversion
                    VStack {
                        // Currency
                        HStack{
                            // Currency Image
                            Image(.silverpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 35)
                            
                            // Currency Text
                            Text("Silver Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                        }
                        // Text Field | Placeholder
                        Text("TextField")
                        
                    }
                    // Equal Signs : System Symbols : SF symbols
                    Image(systemName: "arrow.right.arrow.left")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .symbolEffect(.pulse)
                    
                    // Right Conversion
                    VStack {
                        // Currency
                        HStack{
                            // Currency Text
                            Text("Gold Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                            
                            // Currency Image
                            Image(.goldpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 35)
                        }
                        // Text Field | placeholder
                        Text("Text Field")
                    }
                }
                Spacer()
                
                // info button
                Button {
                    
                    
                } label:  {
                    Image(systemName: "info.circle.fill")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                }
                
            }
//            .border(.blue)
        }
    }
}

#Preview {
    ContentView()
}
