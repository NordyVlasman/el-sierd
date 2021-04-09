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
        Text("Hello, world!")
            .padding()
    }
    
    func setupRemoteTransportControls() {
        let commandCenter = MPRemoteCommandCenter.shared()
        
        commandCenter.playCommand.addTarget { [self] event in
            if !self.player.isPlaying {
                self.player.play()
                return .success
            }
            return .commandFailed
        }
        
        commandCenter.pauseCommand.addTarget { [self] event in
            if self.player.isPlaying {
                self.player.pause()
                return .success
            }
            return .commandFailed
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
