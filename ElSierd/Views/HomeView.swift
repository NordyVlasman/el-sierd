//
//  HomeView.swift
//  ElSierd
//
//  Created by Bram Bijdevaate on 28/05/2021.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack  (alignment: .center, content: {
            Button(action:{}) {
                Text("Soundboard")
                    .padding(10)
                    .frame(minWidth: .infinity)
                    .frame(height: 100)
                    .cornerRadius(10)
            }

            
            HStack(){
                Button(action:{}) {
                    Text("Wachtword generator")
                        .padding(10)
                        .frame(height: 50)
                        .cornerRadius(10)
                }
                
                Button(action:{}) {
                    Text("Random woord generator")
                        .padding(10)
                        .frame(height: 50)
                }
            }
            
                    

            
           
        })
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
