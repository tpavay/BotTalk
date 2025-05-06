//
//  AppState.swift
//  BotTalk
//
//  Created by Tyler Pavay on 5/6/25.
//

import Observation
import Foundation

/// Class that encapsulates the root state for this application.
///
/// This includes whether or to display the TabBarView.
@Observable
class AppState {
    /// Whether or not we should display the `TabBarView`.
    ///
    /// Currently this should be displayed if the user has completed onboarding. This is a private(set) so it can only be updated
    /// from within this class.
    private(set) var showTabBar: Bool {
        didSet {
            UserDefaults.showTabBar = showTabBar
        }
    }

    init(showTabBar: Bool = UserDefaults.showTabBar) {
        self.showTabBar = showTabBar
    }

    func updateViewState(showTabBarView: Bool) {
        showTabBar = showTabBarView
    }
}

extension UserDefaults {
    /// Struct containing mappings to strings for all our keys within `UserDefaults`
    private struct Keys {
        static let showTabBar = "showTabBar"
    }

    /// Whether or not we should show the tab bar.
    static var showTabBar: Bool {
        get {
            standard.bool(forKey: Keys.showTabBar)
        }
        set {
            standard.set(newValue, forKey: Keys.showTabBar)
        }
    }
}
