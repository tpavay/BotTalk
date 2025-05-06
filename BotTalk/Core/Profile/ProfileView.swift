//
//  ProfileView.swift
//  BotTalk
//
//  Created by Tyler Pavay on 4/30/25.
//

import SwiftUI

struct ProfileView: View {
    @State private var showSettingsSheet: Bool = false
    
    var body: some View {
        NavigationStack {
            Text("Profile")
                .navigationTitle("Profile")
                .sheet(
                    isPresented: $showSettingsSheet,
                    content: { SettingsView() }
                )
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Image(systemName: "gear")
                            .onTapGesture {
                                showSettingsSheet = true
                            }
                    }
                }
                
        }
    }
}

#Preview {
    ProfileView()
}
