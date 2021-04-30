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
//    let url = Bundle.main.url(for)
}
//
//struct AudioPicker: UIViewControllerRepresentable {
//    @Binding var show: Bool
//    @Binding var isLoading: Bool
//
//    func makeUIViewController(context: Context) -> some UIDocumentPickerViewController {
////        let picker = UIDocumentPickerViewController(documentTypes: [String()], in: <#T##UIDocumentPickerMode#>)
//    }
//}
