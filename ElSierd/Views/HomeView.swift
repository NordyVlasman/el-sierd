//
//  HomeView.swift
//  ElSierd
//
//  Created by Bram Bijdevaate on 28/05/2021.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack  (alignment: .center, content: {
                NavigationLink(
                    destination: AudiofileList(),
                    label: {
                        Text("Soundboard")
                            .padding(10)
                    })
                .frame(height: 100)
                .frame(maxWidth: .infinity)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
                .padding(.horizontal)
                
                
                HStack(){
                    NavigationLink(destination: PasswordGeneratorView(), label: {
                        Text("Wachtwoord maken")
                            .padding(10)
                            .frame(height: 50)
                    })
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                    
                    NavigationLink(
                        destination: GeneratorView(),
                        label: {
                            Text("Woord generator")
                        })
                        .frame(height:50)
                        .frame(maxWidth: .infinity)
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                }
                .padding(.horizontal)
                Spacer()
            })
            .navigationTitle("SierddeBoss")
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

