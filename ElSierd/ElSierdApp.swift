//
//  ElSierdApp.swift
//  ElSierd
//
//  Created by Nordy Vlasman on 09/04/2021.
//

import SwiftUI

@main
struct ElSierdApp: App {
    @StateObject private var appState = AppState.shared
    var body: some Scene {
        WindowGroup {
            appState.route.makeView()
        }
    }
}
