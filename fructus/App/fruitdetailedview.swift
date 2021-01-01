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
        Text(fruit.title)
    }
}
//Body
struct fruitdetailedview_Previews: PreviewProvider {
    static var previews: some View {
        fruitdetailedview(fruit: fruitdata[1])
    }
}
