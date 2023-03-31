//
//  ContentView.swift
//  projet10
//
//  Created by Apprenant 68 on 20/03/2023.
//

import SwiftUI

struct Audrey: View {
    @State private var name: String = "Dark Vador"

    var body: some View {
       
        
        ZStack{
            VStack {
                Text("Bonjour")
                    .font(.title3)
                    .foregroundColor(.white)
                
            }
            Image("Image")
                .ignoresSafeArea(.all)
//                .edgesIgnoringSafeArea(.all)
            Image("logo")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Audrey()
    }
}
