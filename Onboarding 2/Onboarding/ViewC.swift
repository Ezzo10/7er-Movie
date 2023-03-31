//
//  ViewC.swift
//  Onboarding
//
//  Created by test on 29/03/2023.
//

import SwiftUI

struct ViewC: View {
    
    
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            VStack {
                Image(systemName: "heart")
                    .foregroundColor(.white)
            }
        }
    }
}

struct ViewC_Previews: PreviewProvider {
    static var previews: some View {
        ViewC()
    }
}
