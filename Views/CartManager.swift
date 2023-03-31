//import SwiftUI
// struct FontsManager {
//    struct Klee_One {
//        static let regular = "Kodchasan-Light"
//    }
//}

//import SwiftUI
//
////let grisClair = Color(red: 239.0, green: 243.0/255.0, blue: 244.0/255.0)
//
////let storedUserName = "Q"
////let storedPassword = "qqq"
//
//struct CartManager: View {
//    
//    @State var username: String = ""
//    @State var password: String = ""
//    
//    @State var incorrectsLogs: Bool = false
//    @State var correctsLogs: Bool = false
//    
//    var body: some View {
//        
//        
//        ZStack {
//            
//            Rectangle()
//                .foregroundColor(Color("bleu"))
//                .ignoresSafeArea()
//            
//            VStack {
//                
//                inscriptionText()
//                inscriptionImage()
//                emailTextField(username: $username)
//                passwordTextField(password: $password)
//                
//                if incorrectsLogs {
//                    Text("adresse email ou mot de passe incorecte, veuillez réesayer.")
//                        .offset(y: -23)
//                        .foregroundColor(.red)
//                }
//                
//                
//                Button(action: {print("mot de passe oublié")}) {
//                    forgotPasswordButtonContent()
//                }
//                
//                Button(action: {
//                    if self.username == storedUserName && self.password == storedPassword {
//                        self.correctsLogs = true
//                        self.incorrectsLogs = false
//                    } else {
//                        self.incorrectsLogs = true
//                        self.correctsLogs = false
//                    }
//                }) {
//                    loginButtonContent()
//                }
//                .padding()
//                
//                Button(action: {print("créer un profil")}) {
//                    createAccountButtonContent()
//                        
//                }
//            }
//            .padding()
//            if correctsLogs {
//                Text("Connexion réussie !")
//                    .font(.headline)
//                    .frame(width: 250, height: 80)
//                    .background(Color("jaune"))
//                    .cornerRadius(20)
//                    .offset(y: -73)
//            }
//        }
//    }
//    
//    struct CartManager_Previews: PreviewProvider {
//        static var previews: some View {
//            Sc5InscriptionMathys()
//        }
//    }
//    
//    struct inscriptionText: View {
//        var body: some View {
//            Text("CONNEXION")
//                .font(.largeTitle)
//                .fontWeight(.semibold)
//                .padding(.bottom, 20)
//                .foregroundColor(.white)
//        }
//    }
//    
//    struct inscriptionImage: View {
//        var body: some View {
//            Image("logo")
//                .resizable()
//                .aspectRatio(contentMode: .fill)
//                .frame(width: 150, height: 150)
//                .padding(.bottom, 75)
//        }
//    }
//    
//    struct loginButtonContent: View {
//        var body: some View {
//            Text("SE CONNECTER")
//                .font(.headline)
//                .foregroundColor(.white)
//                .padding()
//                .frame(width: 340, height: 50)
//                .background(Color("rose"))
//                .cornerRadius(10)
//        }
//    }
//    
//    struct createAccountButtonContent: View {
//        var body: some View {
//            Text("Créer un nouveau compte")
//                .font(.headline)
//                .foregroundColor(Color("rose"))
//                .padding()
//                .frame(width: 340, height: 50)
//                .background(Color.white)
//                .cornerRadius(10)
//            
//        }
//    }
//    
//    struct forgotPasswordButtonContent: View {
//        
//        var body: some View {
//            
//            Text("mot de passe oublié ?")
//                .foregroundColor(grisClair)
//                .padding()
//                .frame(width: 220, height: 50)
//                .background(Color("bleu"))
//                
//        }
//    }
//    
//    struct emailTextField: View {
//        
//        @Binding var username: String
//        
//        var body: some View {
//            TextField(("email"), text: $username)
//                .padding()
//                .background(grisClair)
//                .cornerRadius(10)
//                .padding(.bottom, 20)
//        }
//    }
//    
//    struct passwordTextField: View {
//        
//        @Binding var password: String
//        
//        var body: some View {
//            SecureField(("mot de passe"), text: $password)
//                .padding()
//                .background(grisClair)
//                .cornerRadius(10)
//                .padding(.bottom, 20)
//        }
//    }
//}
