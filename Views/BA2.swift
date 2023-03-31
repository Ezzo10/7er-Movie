//
//  BA2.swift
//  projet10
//
//  Created by Apprenant 68 on 25/03/2023.
//

import SwiftUI

struct BA2: View {
    let options = ["Paris", "Marseille", "Strasbourg","Lille", "Lyon", "Bordeaux"]
    let nbrePersonnes = ["1", "2","3","4","5","6"]
    @State private var selectedOption = 0
    @State private var isToggleOn1 = false
    @State private var selectedChoix = 0
    @State private var isToggleOn4 = false
    var body: some View {
        ZStack {
            
          
            VStack{
                ScrollView {
                HStack{
                       VStack{
                          Text("Nombre de personnes")
                               .padding(.vertical, 10.0)
                                }
                       VStack{
                       Picker(selection: $selectedChoix, label: Text("Nombre de personnes")) {
                                                                      ForEach(0..<nbrePersonnes.count) {
                                                                          Text(self.nbrePersonnes[$0])
                                                                              }
                                                                          }
                                                                  .padding(.leading, 110.0)
                                                                  }
                                                              }
                                                      
              //--------------------------------------------------------------------------------
                                                          //question5
                
                
                    VStack(alignment: .leading){
                           VStack{
                           HStack{
                           VStack {
                           Text("Ville de départ")
                          }

                          VStack {Picker(selection: $selectedOption, label: Text("Ville de départ")) {ForEach(0..<options.count) {Text(self.options[$0])
                                                                        }
                                                                    }
                          .background(.white)
                          .cornerRadius(10)
                          .padding(30.0)
                                                                }
                                                                    .padding(.leading, 110.0)
                                                            }
                                                        }
                
                        //question2
                                                              HStack{
                                                                  Text("Période de voyage")
                                                                      .padding(.vertical, 10.0)
                                                                  ZStack{
                                                                      HStack(spacing: -20){
                                                                          Rectangle()
                                                                              .fill(Color("clementine"))
                                                                              .cornerRadius(30)
                                                                              .frame(width: 100, height: 30)
                                                                          
                                                                          
                                                                          Rectangle()
                                                                              .fill(Color("clementineClaire"))
                                                                              .cornerRadius(30)
                                                                              .frame(width: 100, height: 30)
                                                                          }
                                                                      }
                                                                  }
                
                
                        //question3
                                                               VStack(alignment: .leading){
                                                                   Text("Durée de voyage")
                                                                       .padding(.vertical, 10.0)
                                                                   
                                                                   HStack{
                                                                       
                                                                       Image(systemName: "circle")
                                                                       Text("Moins d'une semaine")
                                                                           .padding(.horizontal, 95.0)
                                                                       }
                                                                   HStack{
                                                                       Image(systemName: "circle")
                                                                       Text("1 à 3 semaines")
                                                                           .padding(.horizontal, 95.0)
                                                                       
                                                                       }
                                                                   
                                                                   HStack{
                                                                       Image(systemName: "circle")
                                                                       Text("Plus de 3 semaines")
                                                                           .padding(.horizontal, 95.0)
                                                                       }
                                                                  
                                                                   //question4
                                                                                                               HStack{
                                                                                                                   VStack{
                                                                                                                       Text("Nombre de personnes")
                                                                                                                           .padding(.vertical, 10.0)
                                                                                                                       }
                                                                                                                   VStack{
                                                                                                                       Picker(selection: $selectedChoix, label: Text("Nombre de personnes")) {
                                                                                                                           ForEach(0..<nbrePersonnes.count) {
                                                                                                                               Text(self.nbrePersonnes[$0])
                                                                                                                                   }
                                                                                                                               }
                                                                                                                       .background(.white)
                                                                                                                       .cornerRadius(10)
                                                                                                                                    .padding(.leading, 110.0)
                                                                                                                       }
                                                                                                                   }
                                                                                                           
                                                                   //question5
                                                                                                            VStack(alignment: .leading){
                                                                                                                
                                                                                                                Text("Paysage")
                                                                                                                    .padding(.vertical, 10.0)
                                                                                                                
                                                                                                                HStack{
                                                                                                                    Image(systemName: "circle")
                                                                                                                    Text("Mer")
                                                                                                                    Image(systemName: "circle")
                                                                                                                    Text("Campagne")
                                                                                                                    
                                                                                                                    }
                                                                                                                
                                                                                                                HStack{
                                                                                                                    Image(systemName: "circle")
                                                                                                                    Text("Ville")
                                                                                                                    Image(systemName: "circle")
                                                                                                                    Text("Montagne")
                                                                                                                    
                                                                                                                    }
                                                                                                                }
                VStack(alignment: .leading){
                    
                    Text("Paysage")
                        .padding(.vertical, 10.0)
                    
                    HStack{
                        Image(systemName: "circle")
                        Text("Mer")
                        Image(systemName: "circle")
                        Text("Campagne")
                        
                        }
                    
                    HStack{
                        Image(systemName: "circle")
                        Text("Ville")
                        Image(systemName: "circle")
                        Text("Montagne")
                        
                        }
                    }
                
                                                                   VStack(alignment: .leading){
                                                                                                                   Text("Activités")
                                                                                                                       .padding(.vertical, 10.0)
                                                                                                                      
                                                                                                                       
                                                                                                                   HStack{
                                                                                                                       Image(systemName: "circle")
                                                                                                                       Text("Sport")
                                                                                                                         
                                                                                                                       Image(systemName: "circle")
                                                                                                                       Text("Farniente")
                                                                                                                       
                                                                                                                       }
                                                                   //    .offset(x: -40, y: 0)
                                                                                                                   HStack{
                                                                                                                       Image(systemName: "circle")
                                                                                                                       Text("Culture")
                                                                                                                        
                                                                                                                       Image(systemName: "circle")
                                                                                                                       Text("Découverte")
                                                                                                                       }
                                                                                                                   }
                                                          
              //  ----------------------------------------------------------------------------
                                                          //question6
//                                                          VStack(alignment: .leading){
//                                                              Text("Activités")
//                                                                  .padding(.vertical, 10.0)
//
//
//                                                              HStack{
//                                                                  Image(systemName: "circle")
//                                                                  Text("Sport")
//
//                                                                  Image(systemName: "circle")
//                                                                  Text("Farniente")
//
//                                                                  }
//              //    .offset(x: -40, y: 0)
//                                                              HStack{
//                                                                  Image(systemName: "circle")
//                                                                  Text("Culture")
//
//                                                                  Image(systemName: "circle")
//                                                                  Text("Découverte")
                                                                  }
                                       
                    }
                    .padding()

          }
            .background(Color("BA1"))
            .cornerRadius(20)
        
            }
                    
        }
    }
}

struct BA2_Previews: PreviewProvider {
    static var previews: some View {
        BA2()
    }
}
