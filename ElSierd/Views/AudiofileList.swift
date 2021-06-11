//
//  AudiofileRow.swift
//  ElSierd
//
//  Created by Bram Bijdevaate on 28/05/2021.
//

import SwiftUI

struct AudiofileList: View {
    var body: some View {
        NavigationView {
            
            List(){
                HStack(){
                    Image ("suarez")
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                        .shadow(radius: 10)
                    
                    VStack(alignment: .leading) {
                        Text("El pistelero")
                            .font(.title2)
                        
                        Text("Luis Suarez")
                            .font(.caption)
                    }
                    Spacer()
                    
                    Text("0:06")
                        .font(.caption)
                }
            }
            
            
            
        }
    }
}

struct AudiofileList_Previews: PreviewProvider {
    static var previews: some View {
        AudiofileList()
    }
}
