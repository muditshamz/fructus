//
//  SettingsLabelView.swift
//  fructus
//
//  Created by Mudit Sharma on 03/01/21.
//

import SwiftUI

struct SettingsLabelView: View {
    //Properties
    var labelText:String
    var labelImage: String
    //Body
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}
//Preview
struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
