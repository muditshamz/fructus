//
//  SettingsRowView.swift
//  fructus
//
//  Created by Mudit Sharma on 03/01/21.
//

import SwiftUI

struct SettingsRowView: View {
    //Properties
    var name : String
    var Content : String? = nil
    var linklabel: String? = nil
    var linkDestination: String? = nil
    
    //Body
    var body: some View {
        VStack {
            Divider().padding(.vertical,4)
            HStack{
                Text(name).foregroundColor(.gray)
                Spacer()
                if (Content != nil) {
                    Text(Content!)
                } else if (linklabel != nil && linkDestination != nil){
                    Link(linklabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.circle")
                        .foregroundColor(.purple)
                }else {
                    /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                }
            }
        }
    }
}

//Preview
struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: "Developer", Content: "Mudit Sharma")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
            SettingsRowView(name: "Source Code",  linklabel: "Repository", linkDestination: "github.com/muditshamz/fructus")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
           
    }
}
