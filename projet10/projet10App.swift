//
//  projet10App.swift
//  projet10
//
//  Created by Apprenant 68 on 20/03/2023.


import SwiftUI
@main
struct projet10App: App {
    
    init(){
        printFonts()
    }
    func printFonts() {
           let fontFamilyNames = UIFont.familyNames
           
           for familyName in fontFamilyNames {
               print("----------")
               print("Font Family Name -> [\(familyName)]")
               let names = UIFont.fontNames(forFamilyName: familyName)
               print("Font Names ==> [\(names)]")
           }
       }
    
    var body: some Scene {
        WindowGroup {
            NavBar()
        }
    }
}
