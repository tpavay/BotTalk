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
struct AppView: View {

    @State var appState = AppState()

    var body: some View {
        AppViewBuilder(
            showTabBar: appState.showTabBar,
            onboardingView: {
                WelcomeView()
            },
            tabbarView: {
                TabBarView()
            }
        )
        .environment(appState)
    }
}

#Preview("AppView - Onboarding") {
    AppView(appState: AppState(showTabBar: false))
}

#Preview("AppView - Tabbar") {
    AppView(appState: AppState(showTabBar: true))
}
