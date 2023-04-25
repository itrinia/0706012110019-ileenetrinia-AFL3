//
//  LandmarkCommands.swift
//  0706012110019-ileenetrinia-AFL3
//
//  Created by MacBook Pro on 25/04/23.
//

import Foundation
import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
        .commands {
            LandmarkCommands()
        }

        #if os(watchOS)
        WKNotificationScene(controller: NotificationController.self, category: "LandmarkNear")
        #endif
    }
}
