//
//  fruitcardview.swift
//  fructus
//
//  Created by Mudit Sharma on 31/12/20.
//

import SwiftUI

struct fruitcardview: View {
    //Mark - Properties
    var fruit:Fruit
    @State private var isAnimating: Bool = false
    //Mark :- Body
    var body: some View {
        ZStack {
            VStack (spacing: 20){
                //Fruit:Image
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color( red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                //Fruit:Title
                Text(fruit.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color( red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                //Fruit:Headline
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,16)
                    .frame(maxWidth:480)
                //Button:Start
                startbuttonview()
            }//Vstack
        }//Zstack
        .onAppear{
            withAnimation(.easeOut(duration: 1)){
                isAnimating = true
            }
        }
        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .background(LinearGradient(gradient: Gradient(colors:fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(30)
        .padding(.horizontal,15)
    }
}

//Mark-Preview
struct fruitcardview_Previews: PreviewProvider {
    static var previews: some View {
        fruitcardview(fruit: fruitdata[3])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
