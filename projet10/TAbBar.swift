//
//  TAbBar.swift
//  projet10
//
//  Created by Apprenant 68 on 23/03/2023.
//

import SwiftUI

struct TAbBar: View {
    var body: some View {
        ScrollView{
//        ContentView()
            
        }
        
        VStack {
            TabView{
                   
                        Color.clear
                            .background(.ultraThinMaterial)
                            .blur(radius : 6)

                        Text("Featured")
                        .font(.largeTitle.weight(.bold))
                        .frame(maxWidth : .infinity, alignment : .leading)
                    .padding(.leading, 130)
                    }
                        .frame(height: 70)
                    .frame(maxHeight: .infinity, alignment: .bottom)
        }
            
       
    }
}

struct TAbBar_Previews: PreviewProvider {
    static var previews: some View {
        TAbBar()
    }
}
