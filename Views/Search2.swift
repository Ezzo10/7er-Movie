//
//  Search2.swift
//  projet10
//
//  Created by Apprenant 68 on 26/03/2023.
//

import SwiftUI

struct Search2: View {
    
    var columns = Array (repeating: GridItem(.flexible()), count: 2)
    @State var text = ""
    @State var toto = ""
    var body: some View {
        
        ZStack {
            Color("BlueMovie").ignoresSafeArea()
        VStack {
            SearchBar (text: $text, selectedType: $toto)

        ScrollView(.vertical, showsIndicators: false) {
        LazyVGrid(columns: columns, spacing: 20) {
            ForEach(BoxData.filter({"\($0)".contains (text.lowercased()) || text.isEmpty})){ i in
                ZStack(alignment: .bottom) {
                Image(i.ImageMovie)
                     .resizable()
                     .frame(width: 187, height: 300.0)
                     .cornerRadius(20)
                    
                   
                    
                    VStack(alignment: .leading){
         Spacer()

                        HStack {
                            
                   Image(i.ImageProfil)
                         .resizable()
                         .cornerRadius(100)
                         .foregroundColor(.orange)
                         .frame(width: 30.0, height: 30.0)
                                .cornerRadius(100)
                 
                  

                            Text("\(i.NameMovie)")
                            .font(.caption)
                            .bold()
                            .foregroundColor(.yellow)
                            .font(.largeTitle)
                            .font(.system(size: 10))
                                       VStack(alignment: .leading){
                                       HStack {
                                             
                                          Text("\(i.TypeMovie)")
                                                  .font(.caption)
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .font(.system(size: 10))
                                      
                                Spacer()
                                           
                                                 }
                  
                        }
                                           
                    }

                    }
                        
                                       
                }

                }
        }
        }
        }
        }
    }
}

struct Search2_Previews: PreviewProvider {
    static var previews: some View {
        Search2()
    }
}

struct MyData: Identifiable {
    var id = UUID()
    var ImageMovie : String
    var ImageProfil : String
    var NameProfil: String
    var NameMovie: String
    var Adresse : String
    var Date : String
    var Clock : String
    var TypeMovie : String
    var Dure : String
    var years: Int = 0
    var month: Int = 0
}
var BoxData = [
    
    MyData(ImageMovie : "Avengers agb of ultron" ,ImageProfil : "messi" , NameProfil : "Ezz" ,NameMovie : "Avengers : infinity war", Adresse : "Paris 17éme" , Date : "23/07/2023" , Clock : "20h10", TypeMovie: "Super héros", Dure : "2h"),
    
    MyData( ImageMovie : "JohnWick" ,ImageProfil : "Ezeddin" , NameProfil : "Ezz" ,NameMovie : "Us", Adresse : "Paris 17éme" , Date : "23/07/2023" , Clock: "17h17" , TypeMovie: "hor", Dure : "2h" ),
    
    MyData(ImageMovie : "The fault In Our Stars" ,ImageProfil : "messi" , NameProfil : "Ezz" ,NameMovie : "The fault In Our Stars", Adresse : "Paris 17éme" , Date : "23/07/2023"  , Clock : "20h10", TypeMovie: "hor", Dure : "2h"),
    
    MyData(ImageMovie : "b" ,ImageProfil : "Kaka" , NameProfil : "Ezz" ,NameMovie : "b", Adresse : "Paris 17éme" , Date : "23/07/2023" , Clock : "20h10", TypeMovie: "hor", Dure : "2h" ),
    

    MyData(ImageMovie : "AvengersInf" , ImageProfil: "messi" , NameProfil : "Ezz" ,NameMovie : "Avengersa : infinity war", Adresse : "Paris 19éme" , Date : "23/07/2023" , Clock : "20h10",TypeMovie: "hor", Dure: "35")
//MyData(title: "asd"),
//MyData(title: "qwe"),
//MyData(title: "hgfg"),

      ]
