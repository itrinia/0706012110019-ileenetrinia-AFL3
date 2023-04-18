//
//  _706012110019_ileenetrinia_AFL3App.swift
//  0706012110019-ileenetrinia-AFL3
//
//  Created by MacBook Pro on 11/04/23.
//

import SwiftUI

@main
struct _706012110019_ileenetrinia_AFL3App: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}


