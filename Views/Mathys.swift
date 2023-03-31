//
//  Mathys.swift
//  projet10
//
//  Created by Apprenant 68 on 28/03/2023.
//

import SwiftUI



let grisClair = Color(red: 239.0, green: 243.0/255.0, blue: 244.0/255.0)

let storedUserName = "q"
let storedPassword = "111"
  
//@Binding var correctsLogs:  = String



struct Sc5InscriptionMathys: View {
    
    @State var username: String = ""
    @State var password: String = ""
    
    @State var incorrectsLogs: Bool = false
    @State var correctsLogs: Bool = false
    
    
    var body: some View {
        ZStack {
            
            Color("BlueMovie").ignoresSafeArea(.all)
            VStack {
                
//                inscriptionText()
                inscriptionImage()
                emailTextField(username: $username)
                passwordTextField(password: $password)
                
                if incorrectsLogs {
                    Text("adresse email ou mot de passe incorecte, veuillez réesayer.")
                        .foregroundColor(.red)
                        .font(Font.custom("Kodchasan-Light", size: 17))

                }
               
                Button(action: {
                    print("mot de passe oublié")}) {
                    forgotPasswordButtonContent()
                }
                    .font(Font.custom("Kodchasan-Light", size: 17))

                
                Button(action: {
                    if self.username == storedUserName && self.password == storedPassword {
                        self.correctsLogs = true
                        self.incorrectsLogs = false
                    } else {
                        self.incorrectsLogs = true
                        self.correctsLogs = false
                    }
                }) {
                    loginButtonContent()
                        
                }
                                           
                                                           
                
                
//              Button(action: {
//                                     if self.username == storedUserName && self.password == storedPassword {
//                                          self.correctsLogs = true
//                                                self.incorrectsLogs = false
//                                          } else {
//                                               self.incorrectsLogs = true
//                                                    self.correctsLogs = false
//                                                }
//                                            })
//                                            {loginButtonContent()}
//                                            .padding(.bottom,20)
//
//                                            NavigationLink(destination:PageProfil()) {
         createAccountButtonContent()
//
//                                            }
//                                            })
//                                        .padding()
                if correctsLogs {
//                    Text("Connexion réussie !")
//                        .font(.headline)
//                        .frame(width: 250, height: 80)
//                        .background(Color("jaune"))
//                        .cornerRadius(20)
//                        .offset(y: -73)
                    
                }
                
            }
            
            
            if correctsLogs {
                NavBar()
            }
        }
    }
    
    
    struct Sc5InscriptionMathys_Previews: PreviewProvider {
        static var previews: some View {
            Sc5InscriptionMathys()
        }
    }
    
    
//    struct inscriptionText: View {
//        var body: some View {
//            Text("Connexion")
//                .font(.largeTitle)
//                .padding(.bottom, 20)
//                .foregroundColor(.white)
//        }
//    }
    
    struct inscriptionImage: View {
        var body: some View {
            Image("pass")
                .resizable()

                .aspectRatio(contentMode: .fill)
                .frame(width: 190, height: 140)
                .padding(.bottom, 35)
        }
    }
    
    struct loginButtonContent: View {
        var body: some View {
            Text("Se connecter")
                .padding ()
                .font(Font.custom("Kodchasan-Light", size: 23))
                .keyboardType (.numberPad)
                .frame (maxWidth: .infinity)
                .frame (height: 50)
                .cornerRadius (5)
                .padding ([.leading, .trailing])
                .padding (.bottom, 5)
                .foregroundColor(Color.white)
                .background(Color("rose"))
                .cornerRadius(5)
                .padding()
        }
    }
    
    struct createAccountButtonContent: View {
        var body: some View {
            Text("Créer un nouveau compte")
               
                .padding ()
                .font(Font.custom("Kodchasan-Light", size: 19))
                .keyboardType (.numberPad)
                .frame (maxWidth: .infinity)
                .frame (height: 50)
                .cornerRadius (5)
                .padding ([.leading, .trailing])
                .padding (.bottom, 5)
                .foregroundColor(Color("rose"))
                .background(Color.white)
                .cornerRadius(5)
                .padding()
            
            Text("")
        }
    }
    
    struct forgotPasswordButtonContent: View {
        
        var body: some View {
            
            Text("mot de passe oublié ?")
                .foregroundColor(Color.white)
                .padding()
                .frame(width: 220, height: 50)
                .background(Color("bleu"))
            
        }
    }
    
    struct emailTextField: View {
        
        @Binding var username: String
        
        var body: some View {
            
            VStack(alignment: .leading) {
                
                Text("Votre Email")
                    .font(Font.custom("Kodchasan-Light", size: 23))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(.white)
                    .padding(.bottom,-20)
                    .padding ()
                TextField(("email"), text: $username)
                    .padding()
                    .font(Font.custom("Kodchasan-Light", size: 23))
                    .keyboardType (.numberPad)
                    .frame (maxWidth: .infinity)
                    .frame (height: 50)
                    .background(.white)
                    .cornerRadius (5)
                    .padding()
            }
            .padding(.bottom,-10)
            
        }
        
    }
    
    struct passwordTextField: View {
        
        @Binding var password: String
        
        var body: some View {
            
            VStack(alignment: .leading) {
                
                Text("Votre mot de passe")
                    .padding(.bottom,-20)
                    .font(Font.custom("Kodchasan-Light", size: 19))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(.white)
                    .padding()

                
                SecureField(("mot de passe"), text: $password)
                    .padding()
                    .font(Font.custom("Kodchasan-Light", size: 19))
                    .keyboardType (.numberPad)
                    .frame (maxWidth: .infinity)
                    .frame (height: 50)
                    .background(.white)
                    .cornerRadius (5)
                    .padding()

            }
        }
    }
    
}
