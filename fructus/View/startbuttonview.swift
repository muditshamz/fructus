//
//  startbuttonview.swift
//  fructus
//
//  Created by Mudit Sharma on 31/12/20.
//

import SwiftUI

struct startbuttonview: View {
    //Properties
    
    
    //Body
    var body: some View {
        Button(action: {
            print("Exit the onboarding")
        }){
            HStack (spacing:8){
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal,16)
            .padding(.vertical,10)
            .background(Capsule().strokeBorder(Color.white, lineWidth: 1.25))
        }//button
        .accentColor(.white)
    }
}

//Preview
struct startbuttonview_Previews: PreviewProvider {
    static var previews: some View {
        startbuttonview()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
