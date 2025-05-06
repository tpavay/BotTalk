//
//  WelcomeView.swift
//  BotTalk
//
//  Created by Tyler Pavay on 4/30/25.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Welcome")
                    .frame(maxHeight: .infinity)
                NavigationLink {
                    OnboardingCompletedView()
                } label: {
                    Text("Get Started")
                        .callToActionButton()
                }
            }
            .padding()
        }
    }
}

#Preview {
    WelcomeView()
}
