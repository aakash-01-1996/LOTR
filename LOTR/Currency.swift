//
//  Currency.swift
//  LOTR
//
//  Created by Aakash Ambodkar on 11/25/24.
//
import SwiftUI

enum Currency: Double {
    case copperPenny = 6400
    case silverPenny = 64
    case silverPiece = 16
    case goldPenny = 4
    case goldPiece = 1
        
    var image: ImageResource{
        switch self {
        case .copperPenny: .copperpenny
        case .silverPenny: .silverpenny
        case .silverPiece: .silverpiece
        case .goldPenny: .goldpenny
        case .goldPiece: .goldpiece
        }
    }
    
    var name: String{
        switch self {
        case .copperPenny:
            "Copper Penny"
        case .silverPenny:
            "Silver Penny"
        case .silverPiece:
            "Silver Peice"
        case .goldPenny:
            "Gold Penny"
        case .goldPiece:
            "Gold Peice3"
        }
    }
}
// To connect these values, we need a Computed property : Value of the property is used when the property is used

