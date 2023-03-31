//
//  MoviePage.swift
//  projet10
//
//  Created by Apprenant 68 on 23/03/2023.
//

import SwiftUI

struct MoviePage: View {
    let product : Product

    var body: some View {
//        NavigationView{
        ZStack{
            
            Color("BlueMovie").ignoresSafeArea()
            ScrollView {
            VStack {
                Group{
                    
             
                    Image(product.ImageMovie)
                        .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
//                        .frame(height: 370.0)
//                        .ignoresSafeArea()
                        .aspectRatio(contentMode: .fill)
                        .edgesIgnoringSafeArea(.top)
                        .overlay(
                            LinearGradient(stops: [.init(color: .clear, location: 0.5)  ,.init(color: Color("BlueMovie") , location: 0.1)], startPoint: .bottom, endPoint: .top))
                        .offset(y: -110)

                VStack(alignment: .leading) {

                    Text(product.NameMovie)
                        .foregroundColor(.yellow)
//                        .lineLimit(7)
                        .font(.largeTitle)
                        .padding(.leading, 10.0)
                        .padding(.bottom, -7)
                        .padding()
                    HStack {
                        Text(product.TypeMovie)
                            .foregroundColor(.gray)
                        Spacer()
                        Text(product.Date)
                            .foregroundColor(.gray)
                            .multilineTextAlignment(.leading)
                        
                    }
                    .padding ([.leading, .trailing])

                    .padding()

                    Text(product.TextMovie)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.leading)
                        .lineLimit(4)
                        .padding(.leading, 18.0)
                        .padding()

                }
                
                
                .offset(y: -240)

                VStack(alignment: .leading){
                    Group{
//                Text("Annonce")
//                    .font(.largeTitle)
//
//                    .foregroundColor(.white)
//                    .padding(.leading, 10.0)
                VideoMovie()
                    .padding(10.0)

                    .offset(y: -240)
                    Divider()
                        Color.white
                            .frame(height:1)
                            .padding()
                            .offset(y: -240)

                    ZStack(alignment: .bottom) {
                        
                        
                     
                        
                        VStack(alignment: .leading){
                            Spacer()
                            
//                            HStack {
//                                Image(product.ImageProfil)
//                                    .resizable()
//                                     .clipShape(Circle())
//                                    .foregroundColor(.orange)
//                                    .frame(width: 35, height: 35)
//                                    .padding(.bottom ,7)
//                                    .padding()
//
//                                Text(product.NameProfil)
//                                    .foregroundColor(.white)
//                                    .font(.system(size: 17))
//                                    .padding(.leadi)
//                                    .padding()                            }

//                            SMovie()
                            
                            Text("\(product.TextMovie)")
                                .foregroundColor(.white)
                                .multilineTextAlignment(.leading)
                                .lineLimit(4)
                                .padding(.leading, 18.0)
                                .padding()
                            
                            VStack(alignment: .leading){
                                HStack {
                                    Image(systemName: "calendar")
                                        .foregroundColor(Color.yellow)
                                        .padding(.top, 4.0)
                                        .font(.system(size: 20))

                                    Text("\(product.Date)")
                                        .font(.caption)
                                        .foregroundColor(Color.white)
                                        .font(.largeTitle)
                                        .font(.system(size: 10))
                                }
                                HStack{
                                    Image(systemName: "clock")
                                        .foregroundColor(Color.yellow)
                                        .padding(.top, 4.0)
                                        .font(.system(size: 20))

                                    Text("\(product.Clock)")
                                        .font(.caption)
                                        .foregroundColor(.white)
                                        .font(.largeTitle)
                                        .font(.system(size: 10))
                                }
                                
                                HStack{
                                    Image(systemName: "location")
                                        .foregroundColor(Color.yellow)
                                        .padding(.top, 4.0)
                                        .font(.system(size: 20))
                                        

                                    Text("\(product.Adresse)")
                                        .font(.caption)
                                        .foregroundColor(.white)
                                        .font(.largeTitle)
                                        .font(.system(size: 10))
                                }
                                
                                }                            .padding ([.leading, .trailing])

                      
                        }
                        .offset(y: -240)

                            }
                        
                        Group {
                            VStack{
                                NavigationLink(destination:Sc5InscriptionMathys()){
                                    Text("Valider")
                                }
                                
                            }
                            .padding ()
                            .font (.headline)
                            .keyboardType (.numberPad)
                            .frame (maxWidth: .infinity)
                            .foregroundColor(.white)
                            .background(Color("rose"))
                            .cornerRadius (5)
                            .frame (height: 75)
                            .padding ([.leading, .trailing])
                        .offset(y: -240)
                        }

                    }
                    
                    }
                .padding ([.leading, .trailing])

            }
            }
            }
        }
        
           
    
    }
        
}

struct MoviePage_Previews: PreviewProvider {
    static var previews: some View {
        MoviePage(product: productList[0])
    }
    
}
