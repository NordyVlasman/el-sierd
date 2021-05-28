//
//  ContentView.swift
//  ElSierd
//
//  Created by Nordy Vlasman on 09/04/2021.
//

import SwiftUI
import AVFoundation
import MediaPlayer

struct ContentView: View {
    
    @State var currentSelect: Int = 0
    
    var body: some View {
        TabView(selection: $currentSelect){
            HomeView()
                .tabItem {
                    Text("Home")
                }.tag(0)
            AddSoundboardView()
                .tabItem {
                    Text("Toevoegen")
                }.tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
