//
//  audrey.swift
//  projet10
//
//  Created by Apprenant 68 on 28/03/2023.
//

import SwiftUI

struct audrey: View {
    
    @State private var imageName = "myimage"
       
       @State var Adresse: String  = ""
       @State var nomDuFilm: String = ""
       @State var typeDuFilm: String = ""
       @State var resume = ""
       
       @State var date = Date()
       @State var pickerSelection = ""
       @State var datePickerSelection = Date()
       
       
       var type = ["Aventure", "Action", "Romantique","Horreur","Comédie","Drame","Fantaisie","Guerre","Animation","Science-fiction","Musical","Super-héros"]
       
       @State private var selectedType = ""
    
    var body: some View {
        
        ZStack {
            
           
            
            
            Color("BlueMovie")
            
                .ignoresSafeArea(.all)
            
            ZStack {
                
                
                
               ScrollView {
                    
                    
                    
                    VStack {
                        Text("Créer un évènement")
                            .font(Font.custom("Kodchasan-Light", size: 36))
                            .foregroundColor(Color.white)

                    }
                    
                    
                    
                    VStack {
                        
                        
                       
                        ZStack {
                        Rectangle()

                                    .opacity (0.3)
                                    .frame(width: 300, height: 180)
                                    .cornerRadius(5)
                                    .padding()
                                
                        ProfilePhotoView()
                        
                        }
                    }
                    
                    
                    VStack(alignment: .leading) {
                    
                        Text("Adresse")
                            .font(Font.custom("Kodchasan-Light", size: 28))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding ([.leading, .trailing])
                            .foregroundColor(.white)

                        //.font(.title2)
                        
                        
                        TextField("Entrer une adresse", text: $Adresse, axis: .vertical)
                            .font(Font.custom("Kodchasan-Light", size: 17))

                            .padding ()
                            .font (.headline)
                            .keyboardType (.numberPad)
                            .frame (maxWidth: .infinity)
                            .frame (height: 50)
                            .background(.white)
                            .cornerRadius (5)
                            .padding ([.leading, .trailing])
                            .padding (.bottom, 5)
                            

                        
                        
//                            .padding()
//                            .background()
//                            .cornerRadius(10)
//                            //.padding(.bottom, 20)
//                            .padding ([.leading, .trailing])
//                            .padding (.bottom, 5)
                        
                        
                        
                        
                    }
                    
                    VStack (alignment: .leading) {
                        
                        Text("Nom du film ")
                            .font(Font.custom("Kodchasan-Light", size: 28))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding ([.leading, .trailing])
                            .foregroundColor(.white)

                        if #available(iOS 15.0, *) {
                            TextField("Titre du film ", text: $nomDuFilm, axis: .vertical)
                                .padding ()
                                .font(Font.custom("Kodchasan-Light", size: 17))
                                .frame (maxWidth: .infinity)
                                .frame (height: 50)
                                .background(.white)
                                .cornerRadius (5)
                                .padding ([.leading, .trailing])
                                .padding (.bottom, 5)
                                .font(Font.custom("Kodchasan-Light", size: 17))

                        } else {
                            // Fallback on earlier versions
                        }
                            
                            
                            
                            VStack {
                                Text("Genre du film")
                    
                                    .font(Font.custom("Kodchasan-Light", size: 17))
//                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding ([.leading, .trailing])
                                    .foregroundColor(.white)

                                
                                Picker("", selection: $selectedType) {
                                    
                                    ForEach(type, id: \.self) {
                                        Text($0)
                                }
                                
                            }
                                .padding()
                                .background()
                                .cornerRadius(12)
                                .frame(width: 180, height: 90)
                                .font(Font.custom("Kodchasan-Light", size: 17))

                        }
                       
                        
                        
                        
                        
                        
                        Text("Résumé du film")
                            .font(.custom("Kodchasan",fixedSize: 20))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding ([.leading, .trailing])
                            .foregroundColor(.white)

                        
                        //.font(.title2)
                        TextField("Type de Film", text: $typeDuFilm, axis: .vertical)
                            .padding ()
                            .font(Font.custom("Kodchasan-Light", size: 17))
                            .keyboardType (.numberPad)
                            .frame (maxWidth: .infinity)
                            .frame (height: 120)
                            .background(.white)
                            .cornerRadius (5)
                            .padding ([.leading, .trailing])
                            .padding (.bottom, 5)
                            

                        
                        
                        
                    // description de l'évènement
//                        Text("Description de l'évènement")
//                            .font(.custom("Kodchasan",fixedSize: 20))
//                            .frame(maxWidth: .infinity, alignment: .leading)
//                            .padding ([.leading, .trailing])
//                            .foregroundColor(.white)

                        //.font(.title2)
//                        TextField("Résumé du film", text: $resume, axis: .vertical)
//
//                            .padding ()
//                            .font (.headline)
//                            .keyboardType (.numberPad)
//                            .frame (maxWidth: .infinity)
//                            .frame (height: 50)
//                            .background(.white)
//                            .cornerRadius (5)
//                            .padding ([.leading, .trailing])
//                            .padding (.bottom, 5)

                        
                        // barre de recherche de la date et heure
                        
                            .pickerStyle(SegmentedPickerStyle())
                        DatePicker("Date et heure ", selection: $datePickerSelection)
                         
                                .padding ()
                                .font(Font.custom("Kodchasan-Light", size: 17))
                                .keyboardType (.numberPad)
                                .frame (maxWidth: .infinity)
                                .frame (height: 50)
                                .background(.white)
                                .cornerRadius (5)
                                .padding ([.leading, .trailing])
                                .padding (.bottom, 5)
                                .padding (.top, 19)

                        
                        
                        
                    
                        
                        
                        
                    }
                    
                    
                    
                    Button(action: {
                        
                    }) {
                        
                        
                        
                        // mettre rose de l'appli
                        NavigationLink(destination:Profil2()){
                            Text("Click my")
                        }
                        

                        

                            .padding ()
                            .font(Font.custom("Kodchasan-Light", size: 17))
                            .keyboardType (.numberPad)
                            .frame (maxWidth: .infinity)
                            .frame (height: 50)
                            .cornerRadius (5)
                            .padding ([.leading, .trailing])
                            .padding (.bottom, 5)
                            .foregroundColor(Color.white)
                            .background(Color("rose"))
                        //flou
                        //                    .opacity (0.3)
                        .cornerRadius (5)
                                           .frame (height: 75)
                        
                        
                        
                        // fin scroll  ?
                        
                        
                        
                        
                    }.padding()
                }
                
                
            }
            
        }
    }
}


struct audrey_Previews: PreviewProvider {
    static var previews: some View {
        audrey()
    }
}
