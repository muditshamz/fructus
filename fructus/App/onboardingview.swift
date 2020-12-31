//
//  onboardingview.swift
//  fructus
//
//  Created by Mudit Sharma on 31/12/20.
//

import SwiftUI

struct onboardingview: View {
    //Properties
    var fruits: [Fruit] = fruitdata
    //body
    var body: some View {
        TabView{
            ForEach(fruits[0...5]){ item in
                fruitcardview(fruit: item)
                
            }
        
        }//tabView
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,20)
        
    }
}
//Preview
struct onboardingview_Previews: PreviewProvider {
    static var previews: some View {
        onboardingview(fruits: fruitdata)
    }
}
