//
//  FruitNutrientsView.swift
//  fructus
//
//  Created by Mudit Sharma on 01/01/21.
//

import SwiftUI

struct FruitNutrientsView: View {
    //Properties
    var fruit: Fruit
    let nutrients:[String] = ["Energy","Sugar","Fat","Protein","Vitamins","Minerals"]
    //body
    var body: some View {
        GroupBox(){
            DisclosureGroup("Nutrition value per 100g"){
                ForEach(0 ..< nutrients.count,id:\.self) { item in
                    Divider().padding(.vertical,2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }
    }
}
//Preview
struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitdata[4])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
