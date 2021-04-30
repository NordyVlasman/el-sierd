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
    
    @State var player: AVAudioPlayer!
    
    var body: some View {
        NavigationView {
            VStack {
                Button(action: {
                    playSound(key: "20190113_5c3bafc9aec369039cdd1523")
                }, label: {
                    Text("Theo")
                })
                .padding()
                .background(Color.gray.opacity(0.2))
                .foregroundColor(Color.gray.opacity(1))
                .cornerRadius(10)
            }
            .navigationBarTitle("El Sierd.")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
