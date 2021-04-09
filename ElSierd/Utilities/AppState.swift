//
//  AppState.swift
//  ElSierd
//
//  Created by Nordy Vlasman on 09/04/2021.
//

import SwiftUI

class AppState: ObservableObject {
    public static let shared = AppState()
    
    init() {
        //
    }
    
    @Published var route: Route = .home
    
    enum Route: Identifiable {
        case home
        
        var id: String {
            switch self {
            case .home: return "home"
            }
        }
        
        @ViewBuilder
        func makeView() -> some View {
            switch self {
            case .home:
                ContentView()
            }
        }
    }
}
