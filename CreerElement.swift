//
//  Profil2.swift
//  projet10
//
//  Created by Apprenant 68 on 30/03/2023.
//

import SwiftUI

struct Profil2: View {
    var body: some View {
        ZStack {
        Color("BlueMovie")

            .ignoresSafeArea(.all)

       
            ZStack {
                ScrollView{
                    
                VStack (alignment: .leading){
                    
                    VStack (alignment: .center){
                        Text("1917")
                            .font(Font.custom("Kodchasan-Light", size: 37))
                            .foregroundColor(Color.white)
                        .padding(.leading,50)
                   
                    
                    Image("1917")
                            .resizable()
                       .frame(width: 340, height: 200)
                            .cornerRadius(5)
                            .padding()
                            .offset(x:20)
                    }
                        Group {
                        HStack {
                            Image(systemName: "location")
                                .foregroundColor(Color.yellow)
                                .font(Font.custom("Kodchasan-Light", size: 25))

                                .padding()
                            Text("Paris 17éme")
                                .foregroundColor(Color.white)
                                .font(Font.custom("Kodchasan-Light", size: 25))

                        }
                           
                        
                        HStack {
                            Image(systemName: "calendar")
                                .foregroundColor(Color.yellow)
                                .font(Font.custom("Kodchasan-Light", size: 25))

                                .padding()
                            Text("10/08/2023")
                                .foregroundColor(Color.white)
                                .font(Font.custom("Kodchasan-Light", size: 25))

                        }
                        
                           Group {
                            HStack {
                                Image(systemName: "clock")
                                    .foregroundColor(Color.yellow)
                                    .font(Font.custom("Kodchasan-Light", size: 25))

                                    .padding()
                                Text("20h15")
                                    .foregroundColor(Color.white)
                                    .font(Font.custom("Kodchasan-Light", size: 25))
                            }
                          
                        
                    Group {
                        HStack {
                            Image(systemName: "popcorn")
                                .foregroundColor(Color.yellow)
                                .font(Font.custom("Kodchasan-Light", size: 25))

                                .padding()
                            Text("Guerre‍ ⚔️")
                                .foregroundColor(Color.white)
                                .font(Font.custom("Kodchasan-Light", size: 25))

                        }
                      
                        
                        HStack {
                            Image(systemName: "book")
                                .foregroundColor(Color.yellow)
                                .font(Font.custom("Kodchasan-Light", size: 25))
                                .offset(x:15,y:-37)
                            
                            Text("Craignant les débordements d'un superhéros aux pouvoirs infinis, le justicier de Gotham City, lui-même doté d'une détermination et d'une force de frappe redoutables, affronte le sauveur des temps modernes adulé de Metropolis sous le regard du monde entier qui se demande quel type de héros lui convient le mieux.")
    //                             .foregroundColor(.white)
                                .foregroundColor(.white)
                                .font(Font.custom("Kodchasan-Light", size: 23))
                                .multilineTextAlignment(.leading)
                                .lineLimit(5)
                                .padding(.leading, 18.0)
                                .padding()
                        }
                        }
                    }
    Spacer()
                        }
                }
            }
            }
        }
    }
}

struct Profil2_Previews: PreviewProvider {
    static var previews: some View {
        Profil2()
    }
}
