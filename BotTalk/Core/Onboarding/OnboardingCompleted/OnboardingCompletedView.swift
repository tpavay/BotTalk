//
//  OnboardingCompletedView.swift
//  BotTalk
//
//  Created by Tyler Pavay on 4/30/25.
//

import SwiftUI

struct OnboardingCompletedView: View {

    /// The application state
    @Environment(AppState.self) private var appState

    var body: some View {
        VStack {
            Text("Onboarding Completed!")
                .frame(maxHeight: .infinity)
            
            Button {
                onFinishButtonPressed()
            } label: {
                Text("Finish")
                    .callToActionButton()
            }
        }
        .padding()
    }

    func onFinishButtonPressed() {
        appState.updateViewState(showTabBarView: true)
    }
}

#Preview {
    OnboardingCompletedView()
        .environment(AppState())
}
