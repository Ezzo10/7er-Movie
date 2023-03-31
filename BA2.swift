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
                
                Color("vertClair")
                    .edgesIgnoringSafeArea(.top)
                //                    .ignoresSafeArea()
                
                VStack(spacing: -80){
                    Group {
                        Image("ImageQuestionnaire")
                            .resizable()
                            .cornerRadius(30)
                            .padding(.horizontal, 20)
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 250)
                            .padding(-10)
                        
                        
                        
                        VStack(spacing: 0){
                            
                            Rectangle()
                                .fill(Color("vertClair"))
                                .frame(height: 100)
                                .cornerRadius(30)
                                .padding(.horizontal, 10)
                            
                            Rectangle()
                                .fill(Color("vertMoyen"))
                                .cornerRadius(30)
                                .padding(.horizontal, 15)
                                .frame(height: 100)
                                .padding(.top, -80)
                                .padding(.bottom, 80)
                            
                        }
                    } //partie haute
                    
               
                    VStack {
                        Rectangle()
                            .fill(Color("vertMoyen"))
                            .cornerRadius(30)
                            .padding([.horizontal, .top], 15)
                        
                        
//  ---------------------------------------------------------------------------
                            //Questionnaire
                    .overlay {
                                
                                VStack{
                                    ZStack{
                                        Rectangle()
                                            .fill(Color("clementine"))
                                            .cornerRadius(30)
                                            .frame(width: 150, height: 50)
                                        Text("questionnaire")
                                        }
//-----------------------------------------------------------------------------
                                    //question1
                                    VStack(alignment: .leading){
                                        VStack{
                                            HStack{
                                                VStack {
                                                    Text("Ville de départ")
                                                    }

                                                VStack {
                                                    Picker(selection: $selectedOption, label: Text("Ville de départ")) {
                                                        ForEach(0..<options.count) {
                                                            Text(self.options[$0])
                                                    }
                                                }
                                            }
                                                .padding(.leading, 110.0)
                                        }
                                    }
// -----------------------------------------------------------------------------
                                        //question2
                                        HStack{
                                            Text("Période de voyage")
                                                .padding(.vertical, 10.0)
                                            ZStack{
                                                HStack(spacing: -20){
                                                    Rectangle()
                                                        .fill(Color("clementine"))
                                                        .cornerRadius(30)
                                                        .frame(width: 100, height: 30)
                                                    
                                                    
                                                    Rectangle()
                                                        .fill(Color("clementineClaire"))
                                                        .cornerRadius(30)
                                                        .frame(width: 100, height: 30)
                                                    }
                                                }
                                            }
//  -----------------------------------------------------------------------------
                                        //question3
                                        VStack(alignment: .leading){
                                            Text("Durée de voyage")
                                                .padding(.vertical, 10.0)
                                            
                                            HStack{
                                                
                                                Image(systemName: "circle")
                                                Text("Moins d'une semaine")
                                                    .padding(.horizontal, 95.0)
                                                }
                                            HStack{
                                                Image(systemName: "circle")
                                                Text("1 à 3 semaines")
                                                    .padding(.horizontal, 95.0)
                                                
                                                }
                                            
                                            HStack{
                                                Image(systemName: "circle")
                                                Text("Plus de 3 semaines")
                                                    .padding(.horizontal, 95.0)
                                                }
                                           
                                            }
                                        
// -------------------------------------------------------------------------------
                                            //question4
                                            HStack{
                                                VStack{
                                                    Text("Nombre de personnes")
                                                        .padding(.vertical, 10.0)
                                                    }
                                                VStack{
                                                    Picker(selection: $selectedChoix, label: Text("Nombre de personnes")) {
                                                        ForEach(0..<nbrePersonnes.count) {
                                                            Text(self.nbrePersonnes[$0])
                                                                }
                                                            }
                                                    .padding(.leading, 110.0)
                                                    }
                                                }
                                        
//--------------------------------------------------------------------------------
                                            //question5
                                            VStack(alignment: .leading){
                                                
                                                Text("Paysage")
                                                    .padding(.vertical, 10.0)
                                                
                                                HStack{
                                                    Image(systemName: "circle")
                                                    Text("Mer")
                                                    Image(systemName: "circle")
                                                    Text("Campagne")
                                                    
                                                    }
                                                
                                                HStack{
                                                    Image(systemName: "circle")
                                                    Text("Ville")
                                                    Image(systemName: "circle")
                                                    Text("Montagne")
                                                    
                                                    }
                                                }
                                            
//  ----------------------------------------------------------------------------
                                            //question6
                                            VStack(alignment: .leading){
                                                Text("Activités")
                                                    .padding(.vertical, 10.0)
                                                   
                                                    
                                                HStack{
                                                    Image(systemName: "circle")
                                                    Text("Sport")
                                                      
                                                    Image(systemName: "circle")
                                                    Text("Farniente")
                                                    
                                                    }
//    .offset(x: -40, y: 0)
                                                HStack{
                                                    Image(systemName: "circle")
                                                    Text("Culture")
                                                     
                                                    Image(systemName: "circle")
                                                    Text("Découverte")
                                                    }
                                                }
                                        }
                                    }
                                }
                            }
                    }//fin de overlay
                }
            }
        }
    }

        
    



    

    
    

    
    struct Questionnaire_Previews: PreviewProvider {
        static var previews: some View {
            Questionnaire()
        }
    }
