//
//  SourceLinkView.swift
//  fructus
//
//  Created by Mudit Sharma on 01/01/21.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox(){
            HStack{
                Text("Content Source")
                Spacer()
                Link("Wikipedia",destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.circle")
            }
            .font(.footnote)
        }
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
