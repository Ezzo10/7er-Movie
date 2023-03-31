//
//  Questionnaire.swift
//  NewADV
//
//  Created by apprenant71 on 25/03/2023.
//


import SwiftUI

struct Questionnaire: View {
    let options = ["Paris", "Marseille", "Strasbourg","Lille", "Lyon", "Bordeaux"]
    let nbrePersonnes = ["1", "2","3","4","5","6"]
    @State private var selectedOption = 0
    @State private var isToggleOn1 = false
    @State private var selectedChoix = 0
    @State private var isToggleOn4 = false
    
    
    var body: some View {
        
        
        NavigationView{
            
            ZStack{
                
                Color.white.ignoresSafeArea()
                
                VStack(spacing: -80){
                    Group {
                        Image("messi")
                            .resizable()
                            .cornerRadius(30)
                            .padding(.horizontal, 20)
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 250)
//                            .padding(-10)
                        
                        
                        
                        VStack{
                            
                            Rectangle()
                                .fill(Color("BA1"))
                            
                                .frame(height: 100)
                                .cornerRadius(30)
                                .padding(.horizontal, 10)
                            
                            Rectangle()
                                .fill(Color("BA1"))
                                .cornerRadius(30)
                                .padding(.horizontal, 15)
                                .frame(height: 100)
                                .padding(.top, -80)
                                .padding(.bottom, 80)
                            
                        }
                    } //partie haute
                    
               
                    VStack {
                       
                        
                        
//  ---------------------------------------------------------------------------
                            //Questionnaire
                 
                                
                                VStack{
                                    ZStack{
                                        Rectangle()
                                            .fill(Color.orange)
                                            .foregroundColor(Color.white)
                                            .cornerRadius(30)
                                            .frame(width: 150, height: 80)
                                        Text("questionnaire")
                                        }
//-----------------------------------------------------------------------------
                                    //question1
                                
                                        BA2()
//                                        .padding()
                                        
// -------------------------------------------------------------------------------
                                            //question4
                                        }
                                    }
                                }
                            }
                    }//fin de overlay
                }
            }

    

        
    



    

    
    

    
    struct Questionnaire_Previews: PreviewProvider {
        static var previews: some View {
            Questionnaire()
        }
    }
