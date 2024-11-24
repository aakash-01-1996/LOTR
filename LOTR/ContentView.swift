//
//  ContentView.swift
//  LOTR
//
//  Created by Aakash Ambodkar
//

import SwiftUI

struct ContentView: View {
    @State var showExchangeInfo = false
    @State var leftAmount = ""
    @State var rightAmount = ""
    
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
                        .padding(.bottom, -5)
                        // Left Text Field | Placeholder
                        TextField("Amount", text: $leftAmount)
                            .textFieldStyle(.roundedBorder)
                        
                        
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
                        .padding(.bottom, -5)

                        // Right Text Field | placeholder
                        TextField("Amount", text: $rightAmount)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.trailing)
                    }
                }
                .padding()
                .background(.black.opacity(0.5))
                .clipShape(.capsule)
                Spacer()
                
                // info button
                HStack{
                    Spacer()
                    Button {
                        showExchangeInfo.toggle()
                    } label:  {
                        Image(systemName: "info.circle.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
