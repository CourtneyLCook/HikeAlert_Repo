//
//  HikeAlertGitHubApp.swift
//  HikeAlertGitHub
//
//  Created by Courtney Cook on 12/24/22.
//

import SwiftUI

@main
struct HikeAlertGitHubApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
