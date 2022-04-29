//
//  CampusApp.swift
//  Campus
//
//  Created by bowtie on 21.04.2022.
//

import SwiftUI

@main
struct CampusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
