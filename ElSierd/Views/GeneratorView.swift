//
//  GeneratorView.swift
//  ElSierd
//
//  Created by Bram Bijdevaate on 11/06/2021.
//

import SwiftUI

struct GeneratorView: View {
    var body: some View {
        VStack{
            Spacer()
            Text("Random woord hier")
                .font(.title2)
                .bold()
            
            Spacer()
            
            Button(action:{}) {
                Text("Woord generator")
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .padding(10)
                    .frame(width: 250)
            }
            .background(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
            .cornerRadius(10)
        }
    }
    
    
}

struct GeneratorView_Previews: PreviewProvider {
    static var previews: some View {
        GeneratorView()
    }
}
