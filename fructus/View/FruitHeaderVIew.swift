//
//  FruitHeaderVIew.swift
//  fructus
//
//  Created by Mudit Sharma on 01/01/21.
//

import SwiftUI

struct FruitHeaderVIew: View {
    //Properties
    var fruit : Fruit
    @State private var isAnimatingImage : Bool = false
    //Body
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color( red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical,20)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6 )
        }//Zstack
        .frame(height:440)
        .onAppear(){
            withAnimation(.easeOut(duration : 0.5)){
                isAnimatingImage = true
            }
        }
    }
}
//Preview
struct FruitHeaderVIew_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderVIew(fruit: fruitdata[1 ])
            .previewLayout(.fixed(width: 375, height: 440 ))
    }
}
