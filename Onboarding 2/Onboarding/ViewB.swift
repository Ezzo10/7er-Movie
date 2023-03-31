//
//  ViewB.swift
//  Onboarding
//
//  Created by test on 29/03/2023.
//

import SwiftUI

struct ViewB: View {
    
    @Binding var next: Int
    
    var body: some View {
            
            VStack {
            
                Button {
                    next = 1
                  
                } label: {
                    Text("Next")
                }
                
            }
    }
}

struct ViewB_Previews: PreviewProvider {
    static var previews: some View {
        ViewB(next: .constant(1))
    }
}
