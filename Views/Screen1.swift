//
//  Screen1.swift
//  projet10
//
//  Created by Apprenant 68 on 23/03/2023.
//

import SwiftUI

struct Screen1: View {
               
    var Product : Product
    var body: some View {
                   
        ZStack {
            Color("BlueMovie").ignoresSafeArea()

            ZStack(alignment: .bottom) {
	

               Image(Product.ImageMovie)
                    .resizable()
                    .frame(width: 187, height: 300.0)
                    .cornerRadius(20)

                VStack(alignment: .leading){
	 Spacer()

                    HStack {
               Image(Product.ImageProfil)
                     .resizable()
                     .font(Font.custom("Kodchasan-Light", size: 10))
                     .cornerRadius(100)
                     .foregroundColor(.orange)
                     .frame(width: 30.0, height: 30.0)
//                            .cornerRadius(100)
	         
               Text(Product.NameProfil)
                    .foregroundColor(.white)
                    .font(Font.custom("Kodchasan-Light", size: 13))

              
                    }
	Text("\(Product.NameMovie)")
	.font(Font.custom("Kodchasan-Light", size: 13))
	.bold()
	.foregroundColor(.yellow)
	.font(.largeTitle)
               VStack(alignment: .leading){
               HStack {
                     
                  Text("\(Product.TypeMovie)")
	 .font(Font.custom("Kodchasan-Light", size: 13))
	.foregroundColor(.white)
	.font(.largeTitle)
              
	    Spacer()
               Text("\(Product.Dure)")
	                   .font(Font.custom("Kodchasan-Light", size: 13))
	          .foregroundColor(.white)
	          .font(.largeTitle)
	    
               }

                  

              


              HStack {
	Text(Product.Adresse)
	.foregroundColor(.white)
	.multilineTextAlignment(.leading)
	.font(Font.custom("Kodchasan-Light", size: 13))
	   Spacer()

	   Text(Product.Date)
	   .foregroundColor(.white)
	   .multilineTextAlignment(.leading)
	   .font(Font.custom("Kodchasan-Light", size: 13))
	 }

                   

               
               }
	                 
	     
                }
	
                .padding()
	 
                .frame(width: 187 , height: 170 , alignment : .leading)
	 
//                .background(.ultraThinMaterial)
                .background(
               LinearGradient(colors: [Color.black, Color.clear], startPoint: .bottom, endPoint: .top)
	    .cornerRadius(12)

                )
	 
                
            }
//            .frame(width: 180 , height: 250)
                       
                      
        }
                       
    }
}

struct Screen1_Previews: PreviewProvider {
    static var previews: some View {
        Screen1(Product : productList [0])
    }
}
