//
//  swiftApp1.swift
//  projet10
//
//  Created by Apprenant 68 on 21/03/2023.
//

import SwiftUI

struct PageProfil: View {
    @State private var prenom = ""
    @State private var nom = ""
    @State private var age = ""
    @State private var email = ""

    @State private var motDePasse = ""
    @State private var adresse = ""
    @State private var ville = ""
    @State private var codePostal : String = "75019"


    @State private var today: Date = Date()
    @State private var years: Int = 0
    @State private var month: Int = 0
    @State private var daye: Int = 0




    var body: some View {
				
				 
	
				
				
								ZStack {
								
												Color("BlueMovie").ignoresSafeArea()
								
								ZStack {
				
//					TAbBar()
								
							
				
								
								ScrollView {
								
															VStack {
															
								
												Text("Profil")
																.foregroundColor(.white)
																.font(Font.custom("Kodchasan-Light", size: 35))
												Spacer()
//            Image(systemName:"person.circle")
//								              .font(.system(size:150))
//																						.foregroundColor(.white)
//								Image("plus.circle")

								ZStack {
								
								Circle()

											.opacity (0.3)
											.frame(width: 200, height: 240)
								
//								Image(systemName:"plus.circle")
//								.font(.system(size: 76))
//								.foregroundColor(.white)
								ProfilePhotoView()
								}
								

																VStack{
																Group {
												
																//groupe prenom
																ExtractedView(textState: $prenom, placeholder: "Prenom")
																
													
																
																ExtractedView(textState: $nom, placeholder: "Nom")
																
											
																
																
																ExtractedView(textState: $age, placeholder: "Age")
																					.frame (width: 157)
																					.padding (.trailing ,272)

															
																ExtractedView(textState: $email, placeholder: "Email")

																
																ExtractedView(textState: $motDePasse, placeholder: "Mot de passe")
																
																
																ExtractedView(textState: $adresse, placeholder: "Adresse")
																//
																ExtractedView(textState: $ville, placeholder: "Ville")
																//
																//
																ExtractedView(textState: $codePostal , placeholder: "codePostal")
																	
																
																}
																
																
																
																										
			
																
																}
																
	// // // // // // // // // // // // // // // // // //

																
															
															VStack{
																			NavigationLink(destination:NavBar()){
																							Text("Start")
																			}
																			.font(Font.custom("Kodchasan-Light", size: 20))

																			
															}
															.padding ()
															.font(Font.custom("Kodchasan-Light", size: 20))
															.keyboardType (.numberPad)
															.frame (maxWidth: .infinity)
															.foregroundColor(.white)
															.background(Color("rose"))
															.cornerRadius (5)
															.frame (height: 75)
															.padding ([.leading, .trailing])
																				.padding ([.leading, .trailing])
																				.padding()
															
																			
															}
														
								
																}
							
//																}
															
								
												}
																
												
											}
				}
				
				
				
}
    

struct swiftApp1_Previews: PreviewProvider {
				static var previews: some View {
								PageProfil()
				}

}

struct ExtractedView: View {
@Binding var textState: String
let placeholder: String
var body: some View {
Group {
Text(placeholder)
.font(Font.custom("Kodchasan-Light", size: 23))
.frame(maxWidth: .infinity, alignment: .leading)
.foregroundColor(.white)
.padding(.bottom,-20)
.padding ()


// // // // // // // // // // // // // // // // // //


TextField(placeholder, text: $textState)
.padding()
.font(Font.custom("Kodchasan-Light", size: 23))
.keyboardType (.numberPad)
.frame (maxWidth: .infinity)
.frame (height: 50)
.background(.white)
.cornerRadius (5)
.padding()



//Text(placeholder)
//
//
//																SecureField(placeholder, text: $textState)
//																.padding ()
//																.font (.headline)
//																.keyboardType (.numberPad)
//																.frame (maxWidth: .infinity)
//																.frame (height: 45)
//																.background(.white)
//																.opacity (0.3)
//																.cornerRadius (5)
//																.padding ([.leading, .trailing])

}

}
}

