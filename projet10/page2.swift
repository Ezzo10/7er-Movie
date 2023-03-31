//
//  ContentView.swift
//  MyCustomTabBarFR
//
//  Created by Mathys Kanga on 21/03/2023.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewRouter: ViewRouter
    @State var showPopUp = true
    
    var body: some View {
        
        ZStack {
          
            Rectangle()
            .foregroundColor(Color("backgroundColor"))
            .ignoresSafeArea()
            
            GeometryReader { geometry in
                VStack {
                    Spacer()
                    switch viewRouter.currentPage {
                    case .art:
                        Text("art")
                            .foregroundColor(.white)
                        
                    case .user:
                        Text("Utilisateur")
                            .foregroundColor(.white)
                    }
                    Spacer()
                    ZStack {
                        if showPopUp {
                            PlusMenu(widthAndHeight: geometry.size.width/6)
                                .offset(y: -geometry.size.height/6)
                        }
                        HStack {
                            TabBarIcon(viewRouter: viewRouter, assignedPage: .art, width: geometry.size.width/3, height: geometry.size.height/15, systemIconName: "7.circle", tabName: "art")
                            
                            
                            
                            ZStack {
                                Circle()
                                    .foregroundColor(.white)
                                    .frame(width: geometry.size.width/5, height:  geometry.size.width/5)
                                    .shadow(radius: 4)
                                Image(systemName: "plus.circle.fill")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: geometry.size.width/5-6, height: geometry.size.width/5-6)
                                    .foregroundColor(Color("rose"))
                                    .rotationEffect(Angle(degrees: showPopUp ? 90 : 0))
                            }
                            .offset(y: -geometry.size.height/8/2)
                            .onTapGesture {
                                withAnimation {
                                    showPopUp.toggle()
                                }
                            }
                            
                            
                            
                            TabBarIcon(viewRouter: viewRouter, assignedPage: .user, width: geometry.size.width/3, height: geometry.size.height/15, systemIconName: "person", tabName: "profil")
                            
                        }
                        .frame(width: geometry.size.width, height:  geometry.size.height/8)
                        .background(Color("TabBarBackground").shadow(radius: 2))
                    }
                }
                .edgesIgnoringSafeArea(.bottom)
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewRouter: ViewRouter())
    }
}

struct PlusMenu: View {
   
  let widthAndHeight: CGFloat
   
  var body: some View {
    HStack(spacing: 50) {
      ZStack {
        Circle()
          .foregroundColor(Color("rose"))
          .frame(width: widthAndHeight, height: widthAndHeight)
        Image(systemName: "plus.circle")
          .resizable()
          .aspectRatio(contentMode: .fit)
          .padding(15)
          .frame(width: widthAndHeight, height: widthAndHeight)
          .foregroundColor(.white)
      }
      ZStack {
        Circle()
          .foregroundColor(Color("rose"))
          .frame(width: widthAndHeight, height: widthAndHeight)
        Image(systemName: "menucard.fill")
          .resizable()
          .aspectRatio(contentMode: .fit)
          .padding(15)
          .frame(width: widthAndHeight, height: widthAndHeight)
          .foregroundColor(.white)
      }
    }
    .transition(.scale)
  }
}

struct TabBarIcon: View {
    
    @StateObject var viewRouter: ViewRouter
    let assignedPage: Page
    
    let width, height: CGFloat
    let systemIconName, tabName: String
    
    var body: some View {
        VStack {
            Image(systemName: systemIconName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: width, height: height)
                .padding(.top, 10)
            Text(tabName)
                .font(.footnote)
            Spacer()
        }
        .padding(.horizontal, -4)
        .onTapGesture {
            viewRouter.currentPage = assignedPage
        }
        .foregroundColor(viewRouter.currentPage == assignedPage ? Color("TabBarHighlight") : .black)
    }
}

