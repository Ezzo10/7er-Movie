//
//  NavBar.swift
//  projet10
//
//  Created by Apprenant 68 on 24/03/2023.
//

import SwiftUI

struct NavBar: View {
    
    init() {
//        UITabBar.appearance().backgroundColor = UIColor(Color("rose"))
        UITabBar.appearance().barTintColor = UIColor(Color("BlueMovie"))
        
       }
    var body: some View {

        TabView {
    
                SwiftUIView()
                          .tabItem {
                              Image(systemName: "7.circle")
//                                  .shadow(color: .white, radius: 5, x: 20, y: 20)

                              Text("art")
                                  .shadow(color: .white, radius: 5, x: 20, y: 20)

                          }
                          

            UsersView()
                          .tabItem {
                              Image(systemName: "film.stack")
                              Text("evenements")
                          }

            
            Profil3()
                          .tabItem {
                              Image(systemName: "person")
                              Text("profil")
                        }
            
                    }
        .accentColor(Color("rose"))


                }
            

//            struct homeView: View {
//                var body: some View{
//                    Color("bleu")
////                        .edgesIgnoringSafeArea(.top)
//                }
//            }
//            struct plusView: View {
//                var body: some View{
//                    Color("bleu")
////                        .edgesIgnoringSafeArea(.top)
//                }
//            }
//            struct profilView: View {
//                var body: some View{
//                    Color("bleu")
////                        .edgesIgnoringSafeArea(.top)
//                }
//            
//    }
}

struct NavBar_Previews: PreviewProvider {
    static var previews: some View {
        NavBar()
    }
}
