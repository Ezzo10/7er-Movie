//
//  Profil3.swift
//  projet10
//
//  Created by Apprenant 68 on 30/03/2023.
//

import SwiftUI

struct Profil3: View {
    var body: some View {
        ZStack {
            Color("BlueMovie")
                .ignoresSafeArea(.all)
            ScrollView{
                ZStack {
                    Rectangle()
                        .foregroundColor(Color("rose"))
                    .frame(width: 700, height: 290)
                    .offset(y:-270)
                   
                        Circle()
                        .foregroundColor(Color("BlueMovie"))

                            .frame(width: 230, height: 290)
                            .offset(x:-10,y:-112)

            VStack (alignment: .leading){
                Text("Mon profil")
                    .font(Font.custom("Kodchasan-Light", size: 36))
                    .foregroundColor(Color.white)
                    .padding(.leading,60)
               
                    Image("leo")
                            .resizable()
                            .frame(width: 200, height: 200)
                            .cornerRadius(100)
                            .padding()
                        .offset(x:30)
                
                
                    Group {
                    HStack {
                        Text("Nom / prénom :")
                            .foregroundColor(Color.yellow)
                            .font(Font.custom("Kodchasan-Light", size: 20))


                            .padding()
                        Text("Leo Messi")
                            .foregroundColor(Color.white)
                            .font(Font.custom("Kodchasan-Light", size: 20))

                    }
                    }
                    
                    HStack {
                        Text("Age :")
                            .foregroundColor(Color.yellow)                     .font(Font.custom("Kodchasan-Light", size: 20))




                            .padding()
                        Text("23")
                            .foregroundColor(Color.white)

                    }
                    
                       Group {
                        HStack {
                            Text("Email :")
                                .foregroundColor(Color.yellow)                     .font(Font.custom("Kodchasan-Light", size: 20))



                                .padding()
                            Text("LeoMessi@gmail.com")
                                .font(Font.custom("Kodchasan-Light", size: 20))

                        }
                      
                           

                Group {
                    HStack {
                        Text("Adresser :")
                            .foregroundColor(Color.yellow)                     .font(Font.custom("Kodchasan-Light", size: 20))



                            .padding()
                        Text("7 rue Victor hugo")
                            .foregroundColor(Color.white)
                            .font(Font.custom("Kodchasan-Light", size: 20))

                    }
                    HStack {
                        Text("75017")
                            .padding(.leading,126)
                            .padding(.top,-20)
                            .foregroundColor(Color.white)
                            .font(Font.custom("Kodchasan-Light", size: 20))

                    }
                    
                    
//                    HStack {
//                        Image(systemName: "book")
//                            .foregroundColor(Color.yellow)
//                            .font(.system(size: 25))
//                            .offset(x:15,y:-37)
//                        Text("Craignant les débordements d'un superhéros aux pouvoirs infinis, le justicier de Gotham City, lui-même doté d'une détermination et d'une force de frappe redoutables, affronte le sauveur des temps modernes adulé de Metropolis sous le regard du monde entier qui se demande quel type de héros lui convient le mieux.")
////                             .foregroundColor(.white)
////                            .foregroundColor(.white)
////                            .multilineTextAlignment(.leading)
////                            .lineLimit(5)
////                            .padding(.leading, 18.0)
////                            .padding()
//                    }
                    
                    }
                }
                

                    }
            }
        }
    }
    }
}

struct Profil3_Previews: PreviewProvider {
    static var previews: some View {
        Profil3()
    }
}
