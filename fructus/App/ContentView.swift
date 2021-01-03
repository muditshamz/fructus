//
//  ContentView.swift
//  fructus
//
//  Created by Mudit Sharma on 31/12/20.
//

import SwiftUI

struct ContentView: View {
    //Properties
    @State private var isShowingSettings: Bool = false
    var fruits: [Fruit] = fruitdata
    //Body
    var body: some View {
        NavigationView{
            List{
                ForEach (fruits.shuffled()){
                    item in
                    NavigationLink(destination: fruitdetailedview(fruit: item)){
                    FruitRowView(fruit: item)
                        .padding(.vertical,4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing: Button(action:{
                isShowingSettings = true
            }){
                Image(systemName: "slider.horizontal.3")
            }//Button
            .sheet(isPresented: $isShowingSettings){
                SettingsView()
            }
        )
        }//Navigation
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}
//Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitdata)
    }
}
