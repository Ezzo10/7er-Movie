//
//  ContentView.swift
//  Onboarding
//
//  Created by test on 29/03/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var next = 0
    var body: some View {
        
        if next == 0 {
            TabView {
                ViewA()
                ViewB(next: $next)
            }
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .always))
        } else {
            ViewC()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
