//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Nathan on 10/06/2021.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: DailyScrum.data)
            }
        }
    }
}
