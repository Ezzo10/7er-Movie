//
//  Filt.swift
//  projet10
//
//  Created by Apprenant 68 on 27/03/2023.
//

import SwiftUI

struct Filt: View {
    @State private var showingCredits = false
    @State private var date = Date.now

    @State var text = ""
    @State private var km: Double = 10

    @Binding var selectedType: String
    
    
    @State private var isButtonClicked = false
    @State private var AcrionButtonClicked = false
    @State private var ComeButtonClicked = false
    @State private var DramaButtonClicked = false
    @State private var HorrButtonClicked = false
    @State private var AnimaButtonClicked = false
    @State private var SuprButtonClicked = false
    @State private var SciButtonClicked = false
    @State private var AvuButtonClicked = false
    @State private var GButtonClicked = false

    
    var body: some View {
        
        ZStack {
            Color("BlueMovie").ignoresSafeArea()
            
            Button("Filtre") {
                
                showingCredits.toggle()
                    
            }
            .padding()
            .foregroundColor(Color.black)
            .background(Color.yellow)
            .cornerRadius(5)
            .font(Font.custom("Kodchasan-Light", size: 15).weight(.bold))

            
            .sheet(isPresented: $showingCredits) {
                Text("Filtre")
                    .font(Font.custom("Kodchasan-Light", size: 43).weight(.bold))

                    .presentationDetents([.medium, .large])
  
                // .Color("BlueMovie").ignoresSafeArea()
                    .padding()
                
                ScrollView{
                    
                    
                    
                    VStack {
                        Text("Séléctionnez la distance")
//                            .font(.largeTitle)
                            .font(Font.custom("Kodchasan-Light", size: 30).weight(.bold))

                            .padding()
                        Slider(value: $km, in: 0...100)
                        
                            Spacer()
                            Text("\(Int(km))\("") Km")
                                .padding()
                                .background(Color("BlueMovie"))
                                .foregroundColor(Color.white)
                                .cornerRadius(5)
                            
                        
                        .padding()
                    }
                    Divider()
                    Color.white
                        .frame(height:1)
                        .padding()
                    VStack  {
                        
                        Text("Date de Film")
                            .font(Font.custom("Kodchasan-Light", size: 30))

                            .padding()
//                            .foregroundColor(Color.white)
                        DatePicker("Date de Film", selection: $date)
                            .datePickerStyle(GraphicalDatePickerStyle())
                            .frame(maxHeight: 400)
                            .accentColor(Color("rose"))
                            .background(Color.white)
                            .font(Font.custom("Kodchasan-Light", size: 30))

                    }
                    Divider()
                    Color.white
                        .frame(height:1)
                        .padding()
                    
                    
//$$$$$$$$$$$$$$$$$$$$$$$$$$$$ Type de Film

                    VStack(alignment: .leading)  {
                        Text("Type de Film")
                            .font(Font.custom("Kodchasan-Light", size: 30))

                    }
                    
                    HStack {
                        
                        
                        Button("Action 🔫") {
                            self.AcrionButtonClicked.toggle()

                        }
                        .padding()
                        .background(AcrionButtonClicked ? Color("rose") : Color("BlueMovie"))
                        .foregroundColor(Color.white).cornerRadius(5)
                        .font(Font.custom("Kodchasan-Light", size: 13))

                        Button("Comédie 😂") {
                            self.ComeButtonClicked.toggle()

                        }
                        .padding()
                        .background(ComeButtonClicked ? Color("rose") : Color("BlueMovie"))
                        .cornerRadius(5)
                        .font(Font.custom("Kodchasan-Light", size: 13))
                        .foregroundColor(Color.white)

                        Button("Drame🥺") {
                            self.DramaButtonClicked.toggle()

                        }
                        .padding()
                        .background(DramaButtonClicked ? Color("rose") : Color("BlueMovie"))
                        .foregroundColor(Color.white)                  .cornerRadius(5)
                        .font(Font.custom("Kodchasan-Light", size: 13))

                        
                    }
                    
                    ///$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
                    
                    
                    HStack {
                        Button("Horreur😧") {
                            selectedType = "hor"
                            self.HorrButtonClicked.toggle()

                        }
                        .padding()
                        .background(HorrButtonClicked ? Color("rose") : Color("BlueMovie"))                        .foregroundColor(Color.white)                 .cornerRadius(5)
                        .cornerRadius(5)
                        .font(Font.custom("Kodchasan-Light", size: 13))

                        Button("Animation🐻") {
                            self.AnimaButtonClicked.toggle()

                        }
                        .padding()
                        .background(AnimaButtonClicked ? Color("rose") : Color("BlueMovie"))                        .foregroundColor(Color.white)                  .cornerRadius(5)
                        .cornerRadius(5)
                        .font(Font.custom("Kodchasan-Light", size: 13))

                        Button("Super-héros🦸") {
                            self.SuprButtonClicked.toggle()

                        }
                        .padding()
                        .background(SuprButtonClicked ? Color("rose") : Color("BlueMovie"))                        .foregroundColor(Color.white)                .cornerRadius(5)
                        .cornerRadius(5)
                        .font(Font.custom("Kodchasan-Light", size: 13))

                    }
                    ///$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
                    
                    HStack {
                        Button("Science-fiction🦸"){
                            self.SciButtonClicked.toggle()

                        }
                        .padding()
                        .background(SciButtonClicked ? Color("rose") : Color("BlueMovie"))                        .foregroundColor(Color.white)

                        .cornerRadius(5)
                        .font(Font.custom("Kodchasan-Light", size: 13))

                        Button("Aventure🤠") {
                            self.AvuButtonClicked.toggle()

                        }
                        .padding()
                        .background(AvuButtonClicked ? Color("rose") : Color("BlueMovie"))                        .foregroundColor(Color.white)
                        .cornerRadius(5)
                        .font(Font.custom("Kodchasan-Light", size: 13))

                        Button("Guerre‍ ⚔️") {
                            self.GButtonClicked.toggle()

                        }
                        .padding()
                        .background(GButtonClicked ? Color("rose") : Color("BlueMovie"))                        .foregroundColor(Color.white)
                        .font(Font.custom("Kodchasan-Light", size: 13))
//                        .border(.blue)
                        .cornerRadius(5)

                    }
                    
                    
                }
                .padding()
//                .background(Color("BlueMovie"))
                
                Button("Start") {
                    
                }
                .padding ()
                .font (.headline)
                .keyboardType (.numberPad)
                .frame (width:360)
                .foregroundColor(.black)
                .background(Color.yellow)
                //flou
                //                    .opacity (0.3)
                .cornerRadius (5)
                //                   .frame (height: 75)
                
                .padding ([.leading, .trailing])
                .padding()
                
            }
            
            
           }
//        .foregroundColor(Color("rose"))

    }
    
}

struct Filt_Previews: PreviewProvider {
    static var previews: some View {
        Filt(selectedType: .constant("hor"))
    }
}
    

