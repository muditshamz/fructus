//
//  fructusApp.swift
//  fructus
//
//  Created by Mudit Sharma on 31/12/20.
//

import SwiftUI

@main
struct fructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
                onboardingview()
            }
            else{
                ContentView()
            }
        }
    }
}
