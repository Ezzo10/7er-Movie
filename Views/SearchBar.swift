//
//  SearchBar.swift
//  projet10
//
//  Created by Apprenant 68 on 26/03/2023.
//

import SwiftUI

struct SearchBar: View {

@Binding var text: String
@Binding var selectedType: String
    
@State private var Ajouter = false
    var body: some View {
        
        VStack {
            HStack {
                TextField("Rechercher un film", text: $text)
                    .padding (10)
                    .padding (.horizontal, 25)
                    .frame(width: 310 , height: 55)
                    .background (Color(.systemGray6))
                    .foregroundColor (.black)
                    .cornerRadius(7)
                    .overlay(
                        HStack{
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.gray)
                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                .padding(.leading , 15)
                            
                            if Ajouter {
                                Button(action:{
                                    self.text = ""
                                }, label :{
                                    Image(systemName: "multiply.circle.fill")
                                        .foregroundColor(.gray)
                                        .padding(.leading , 15)

                            })
                           
                            }
                        }).onTapGesture {
                            self.Ajouter = true
                    }
                
                Button(action: {
                    
                }, label: {
                   
                    Filt(selectedType: $selectedType)
                })
            }
//            if Ajouter {
//            Button (action: {
//            self.Ajouter = false
//
//                UIApplication.shared.sendAction (#selector (UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
//                }){
//                Text("Supprimer")
//            }
//            .padding(.trailing,10)
//            .transition(.move(edge: .trailing))
//            .animation(.default)
//            }
        
        }
    }
}

// 
