//
//  AppView.swift
//  BotTalk
//
//  Created by Tyler Pavay on 4/30/25.
//

import SwiftUI

/// This is the main starting view of our app
///
/// We want to display the onboarding view if the user hasn't completed onboarding. If they have, then we want to display the tab bar view. Once the user completes onboarding,
/// we should persist this into user defaults so we only show the onboarding screen if the
/// user has not completed on boarding.
///
///
struct AppView: View {
    
    /// Whether or not the user has completed onboarding. If there is no value in UserDefaults
    /// this will get set to false, otherwise it will pull the value associated with the userCompletedOnboarding key from `UserDefaults`
    @AppStorage("userCompletedOnboarding") var userCompletedOnboarding: Bool = false
    
    var body: some View {
        AppViewBuilder(
            userCompletedOnboarding: userCompletedOnboarding,
            onboardingView: {
                WelcomeView()
            },
            tabbarView: {
                TabBarView()
            }
        )
    }
}

#Preview("AppView - Onboarding") {
    AppView(userCompletedOnboarding: false)
}

#Preview("AppView - Tabbar") {
    AppView(userCompletedOnboarding: true)
}
