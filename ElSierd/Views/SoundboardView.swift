//
//  SoundboardView.swift
//  ElSierd
//
//  Created by Nordy Vlasman on 28/05/2021.
//

import SwiftUI

struct SoundboardView: View {
    var body: some View {
        NavigationView {
            VStack {
                Button(action: {
                    playSound(key: "theo-motor")
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

struct SoundboardView_Previews: PreviewProvider {
    static var previews: some View {
        SoundboardView()
    }
}
