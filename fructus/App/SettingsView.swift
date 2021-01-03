//
//  SettingsView.swift
//  fructus
//
//  Created by Mudit Sharma on 03/01/21.
//

import SwiftUI

struct SettingsView: View {
    //Properties
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    //Body
    var body: some View {
        NavigationView{
            ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false){
                
                VStack (spacing: 20){
                    //Section 1
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    )
                    {
                        Divider().padding(.vertical,4)
                        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholestorol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    }
                    //Section 2
                    GroupBox(
                        label:SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")){
                        Divider().padding(.vertical,4)
                        Text("If you wish you can restart the onboarding of this application by the toggle switch below.")
                            .padding(.vertical,8)
                            .frame(minHeight:60)
                            .layoutPriority(1)//No truncation of text
                            .font(.footnote)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(Color.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                        
                    }
                    
                    //Section 3
                    GroupBox(
                        label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")){
                       
                        SettingsRowView(name: "Developer",Content: "Mudit Sharma")
                        SettingsRowView(name: "Designer",Content: "Robert Patras")
                        SettingsRowView(name: "Compatibility",Content: "iOS 14")
                        SettingsRowView(name: "SourceCode", Content: nil, linklabel: "Repository", linkDestination: "github.com/muditshamz/fructus")
                        SettingsRowView(name: "Swift UI",Content: "2.0")
                        SettingsRowView(name: "Version",Content: "1.0")
                    }//Box
                }//Vstack
                .navigationBarTitle(Text( "Settings"),displayMode: .large)
                .navigationBarItems(trailing: Button(action:{
                    presentationMode.wrappedValue.dismiss()
                }){
                    Image(systemName: "xmark")
                })
                .padding()
            }// Scroll View
        }//navigation View
    }
}
//Preview
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
