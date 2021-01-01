//
//  ContentView.swift
//  fructus
//
//  Created by Mudit Sharma on 31/12/20.
//

import SwiftUI

struct ContentView: View {
    //Properties
    var fruits: [Fruit] = fruitdata
    //Body
    var body: some View {
        NavigationView{
            List{
                ForEach (fruits.shuffled()){
                    item in FruitRowView(fruit: item)
                        .padding(.vertical,4)
                }
            }
            .navigationTitle("Fruits")
        }//Navigation
        
    }
}
//Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitdata)
    }
}
