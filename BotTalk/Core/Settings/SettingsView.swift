//
//  SettingsView.swift
//  BotTalk
//
//  Created by Tyler Pavay on 4/30/25.
//

import SwiftUI

struct SettingsView: View {
    @Environment(AppState.self) private var appState
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationStack {
            List {
                Button("Sign Out", action: { onSignOutButtonPressed() })
            }
        }
    }
    
    private func onSignOutButtonPressed() {
        // Dismiss the settings sheet
        dismiss()

        Task {
            // Sleep for one second then switch back to onboarding flow
            try? await Task.sleep(for: .seconds(1))
            // Sign the user out
            appState.updateViewState(showTabBarView: false)
        }
    }
}

#Preview {
    SettingsView()
}
