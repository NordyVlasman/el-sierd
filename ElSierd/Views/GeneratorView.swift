//
//  GeneratorView.swift
//  ElSierd
//
//  Created by Bram Bijdevaate on 11/06/2021.
//

import SwiftUI

struct GeneratorView: View {
    
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
    
    @State var randWord: String = ""
    
    var body: some View {
        VStack{
            Spacer()
            Text(randWord.isEmpty ? "Random woord hier" : randWord)
                .font(.title2)
                .bold()
            
            Spacer()
            
            Button(action:{ makeWord() }) {
                Text("Woord generator")
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .padding(10)
                    .frame(width: 250)
            }
            .background(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(10)
        }
        .navigationTitle("Verzin maar wat")
    }
    
    func makeWord() {
        let firstWord = words.randomElement()
        let secondWord = words.randomElement()
        let lastWord = words.randomElement()
        
        randWord = "\(firstWord!)\(secondWord!)\(lastWord!)"
    }
}

struct GeneratorView_Previews: PreviewProvider {
    static var previews: some View {
        GeneratorView()
    }
}
