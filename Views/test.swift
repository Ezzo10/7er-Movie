//
//  test.swift
//  projet10
//
//  Created by Apprenant 68 on 27/03/2023.
//

import SwiftUI

struct test: View {
    @Binding var text: String

    var body: some View {
        VStack {
            TextField("Enter your name", text: $text)
                .padding (10)
                .padding (.horizontal, 25)
                .background (Color(.systemGray6))
                .foregroundColor (.black)
                .cornerRadius(7)
    }
}
}
struct test_Previews: PreviewProvider {
    static var previews: some View {
        test(text: <#Binding<String>#>)
    }
}
