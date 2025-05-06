//
//  View+EXT.swift
//  BotTalk
//
//  Created by Tyler Pavay on 4/30/25.
//

import SwiftUI

extension View {
    
    /// Modifier that applies CTA button styles to the view 
    func callToActionButton() -> some View {
        self
            .foregroundStyle(.white)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(.accent, in: .rect(cornerRadius: 10))
    }
}
