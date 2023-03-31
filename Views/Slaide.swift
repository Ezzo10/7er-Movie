//
//  Slaide.swift
//  projet10
//
//  Created by Apprenant 68 on 25/03/2023.
//

import SwiftUI

struct Slaide: View {
    var body: some View {
       
            ZStack {
                Color("BlueMovie").ignoresSafeArea()
            

            // 2
            VStack(alignment: .leading) {
                
                ImageSlider()
                    .frame(width:440 ,height: 253)
                    .cornerRadius(5)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            }
           
            
           //: List
//            .navigationBarTitle("Image Slider", displayMode: .large)
        } //: Navigation View
    }
    
}

struct Slaide_Previews: PreviewProvider {
    static var previews: some View {
        Slaide()
    }
}
