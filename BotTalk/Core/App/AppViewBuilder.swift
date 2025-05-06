//
//  AppViewBuilder.swift
//  BotTalk
//
//  Created by Tyler Pavay on 4/30/25.
//

import SwiftUI

/// AppViewBuilder that constructs the app view depending on if the user
/// has completed onboarding or not.
struct AppViewBuilder<OnboardingView: View, TabbarView: View>: View {
    
    /// Whether or not the user has completed onboarding
    var userCompletedOnboarding: Bool
    
    /// Onboarding view to show if the user hasn't completed onboarding
    @ViewBuilder var onboardingView: OnboardingView
    
    /// Tab bar to show if the user has completed onboarding
    @ViewBuilder var tabbarView: TabbarView
    
    var body: some View {
        ZStack {
            if !userCompletedOnboarding {
                onboardingView
                // Push the onboarding view onto the screen
                // moving in from the leading edge
                .transition(.move(edge: .leading))
                
            } else {
                tabbarView
                // Push the tab bar view onto the screen moving in
                // from the trailing edge
                .transition(.move(edge: .trailing))
            }
        }
        .animation(.smooth, value: userCompletedOnboarding)
    }
}

/// This view is specific to this file and is used to show a preview of this view
private struct PreviewView: View {
    @State var userCompletedOnboarding: Bool = false
    
    var body: some View {
        AppViewBuilder(
            userCompletedOnboarding: userCompletedOnboarding,
            onboardingView: {
                ZStack {
                    Color.blue.ignoresSafeArea()
                    Text("Onboarding")
                }
            },
            tabbarView: {
                ZStack {
                    Color.red.ignoresSafeArea()
                    Text("Tabbar")
                }
            }
        )
        .onTapGesture {
            userCompletedOnboarding.toggle()
        }
    }
}

#Preview {
    PreviewView()
}
