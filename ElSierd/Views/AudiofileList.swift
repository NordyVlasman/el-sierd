//
//  AudiofileRow.swift
//  ElSierd
//
//  Created by Bram Bijdevaate on 28/05/2021.
//

import SwiftUI

struct AudiofileList: View {
    var body: some View {
        List {
            HStack {
                Image("suarez")
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .shadow(radius: 10)
                
                VStack(alignment: .leading) {
                    Text("Zet de motor maar aan")
                        .font(.title2)
                    
                    Text("Chrstian Tello.")
                        .font(.caption)
                }
                Spacer()
                
                Text("0:09")
                    .font(.caption)
            }
            .onTapGesture {
                playSound(key: "theo-motor")
            }
        }
        .navigationTitle("El Sierd")
        .navigationBarItems(trailing:
            Button(action: {
                
            }, label: {
                Image(systemName: "plus.circle")
            })
        )
    }
}

struct AudiofileList_Previews: PreviewProvider {
    static var previews: some View {
        AudiofileList()
    }
}
