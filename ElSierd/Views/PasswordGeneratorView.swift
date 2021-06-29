//
//  PasswordGeneratorView.swift
//  ElSierd
//
//  Created by Nordy Vlasman on 29/06/2021.
//

import SwiftUI
import Foundation
import CryptoKit
import MobileCoreServices

func MD5(string: String) -> String {
    let digest = Insecure.MD5.hash(data: string.data(using: .utf8) ?? Data())

    return digest.map {
        String(format: "%02hhx", $0)
    }.joined()
}

struct PasswordGeneratorView: View {
    
    @State var words: [String] = [
        "koekoek",
        "boem",
        "doe-het-zelf-stekker",
        "brommer",
        "godsallemachtig",
        "hersencellen",
        "raak",
        "kinderbedje",
        "fles-rioja"
    ]
    
    @State var wordsUsed: [String] = []
    
    @State var passwordWord: String = ""
    
    var body: some View {
            VStack {
                Text(passwordWord.isEmpty ? "Make it pop" : passwordWord)
                    .font(.title)
                    .bold()
                    .padding(.bottom)
                    .onTapGesture {
                        UIPasteboard.general.setValue(passwordWord, forPasteboardType: kUTTypePlainText as String)
                    }
                
                HStack() {
                    ForEach(wordsUsed, id: \.self) {
                        Text("\($0)")
                            .padding(2)
                    }
                }
                Button(action: {
                    password()
                }, label: {
                    Text("Boom boom")
                        .padding(10)
                        .frame(height: 50)
                })
                .frame(maxWidth: .infinity)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
            }
            .padding()
            .navigationTitle("Maak je wachtwoord")
    }
    
    func password() {
        wordsUsed.removeAll()
        
        let firstWord = words.randomElement()
        let secondWord = words.randomElement()
        let lastWord = words.randomElement()
        
        wordsUsed.append(firstWord!)
        wordsUsed.append(secondWord!)
        wordsUsed.append(lastWord!)
        
        passwordWord = MD5(string: "\(firstWord!)\(secondWord!)\(lastWord!)")
    }
    
}

struct PasswordGeneratorView_Previews: PreviewProvider {
    static var previews: some View {
        PasswordGeneratorView()
    }
}
