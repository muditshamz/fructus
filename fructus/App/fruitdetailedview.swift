//
//  fruitdetailedview.swift
//  fructus
//
//  Created by Mudit Sharma on 01/01/21.
//

import SwiftUI

struct fruitdetailedview: View {
    //Properties
    var fruit:Fruit
    //Body
    var body: some View {
        NavigationView{
            ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false){
                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20){
                    //Header
                    
                    FruitHeaderVIew(fruit: fruit)
                    
                    VStack (alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20){
                        //Title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //Headline
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        //Nutrition
                        FruitNutrientsView(fruit: fruit)
                        //Subheading
                        Text("Learn More about \(fruit.title)")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //Description
                        Text(fruit.description).multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        
                        //Link
                        SourceLinkView()
                            .padding(.top,10)
                            .padding(.bottom,40)
                    }//Vstack
                    .padding(.horizontal,20)
                    .frame(maxWidth:640,alignment: .center)
                }//Vstack
                .navigationBarTitle(fruit.title,displayMode: .inline)
                .navigationBarHidden(true)
            }// Scroll View
            .edgesIgnoringSafeArea(.top)
        }//Navigation View
    }
}
//Body
struct fruitdetailedview_Previews: PreviewProvider {
    static var previews: some View {
        fruitdetailedview(fruit: fruitdata[1])
    }
}
