//
//  AudioPicker.swift
//  ElSierd
//
//  Created by Nordy Vlasman on 30/04/2021.
//
//
import Foundation
import SwiftUI
import AVFoundation

var player: AVAudioPlayer!

func playSound(key: String) {
    let url = Bundle.main.url(forResource: key, withExtension: "m4a")
    guard url != nil else {
        return
    }
    
    do {
        player = try AVAudioPlayer(contentsOf: url!)
        player.play()
    } catch {
        print("Error")
    }
}
