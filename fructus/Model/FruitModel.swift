//
//  FruitModel.swift
//  fructus
//
//  Created by Mudit Sharma on 31/12/20.
//

import SwiftUI
//Fruit Data Model

struct Fruit:Identifiable {
    
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
