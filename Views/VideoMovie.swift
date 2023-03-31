//
//  VideoMovie.swift
//  projet10
//
//  Created by Apprenant 68 on 25/03/2023.
//
import AVKit
import SwiftUI

struct VideoMovie: View {
    
    let url = URL(string: "https://youtu.be/27EF723ZDmI?t=1")
    var body: some View {
       
        ZStack {
            Color("BlueMovie").ignoresSafeArea()

            VStack (alignment: .leading) {
                Text("Annonce")
                    .foregroundColor(Color.white)
                    .font(Font.custom("Kodchasan-Light", size: 30))

                    .font(.largeTitle)
                    .multilineTextAlignment(.leading)
                    .lineLimit(nil)
//          Spacer()
                   Image("avengersAnnance")
                        .resizable()
                        .cornerRadius(5)
                                   .scaledToFill()
                                   .frame(width: 370.0, height: 12.0)
                                   .opacity(0.5)

//                    })
            .frame(width: 380 , height: 200)
        
            }
            Image(systemName: "play.circle")
                .foregroundColor(Color.yellow)
                .foregroundColor(Color.white)
                .offset(x:-12,y: 30)
                .font(.system(size: 56))

        
        

    }
    }
}

struct VideoMovie_Previews: PreviewProvider {
    static var previews: some View {
        VideoMovie()
    }
}
