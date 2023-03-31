//
//  SMovie.swift
//  projet10
//
//  Created by Apprenant 68 on 30/03/2023.
//

import SwiftUI

struct SMovie: View {
    
    let product : Product

    var body: some View {
        
        ZStack{
            
            Color("BlueMovie").ignoresSafeArea()
            Group {
                VStack(alignment: .leading){

                HStack {
                Image(product.ImageProfil)
                    .resizable()
                     .clipShape(Circle())
                    .foregroundColor(.orange)
                    .frame(width: 35, height: 35)
                    .padding(.bottom ,7)
                    .padding()

                Text(product.NameProfil)
                    .foregroundColor(.white)
                    .font(.system(size: 17))
                    .padding(.leading)
                    .padding()
                    
                }
            }
            }
    }
    }
}

struct SMovie_Previews: PreviewProvider {
    static var previews: some View {
        SMovie(product: productList[0])
    }
}
