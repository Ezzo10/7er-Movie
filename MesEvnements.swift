import SwiftUI

struct Events: Identifiable {
    var id = UUID()
    var title: String
    var date: String
    var ville: String
    var heure: String
    
}


struct MesEvenements: View {
    var body: some View {
        ZStack {
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(usersevents) { event in
                        HStack {
                            
                            
                        }
                    }
                }
            }
        }
    }
}


struct UsersView: View {
    var body: some View {
        
        
        
        
        NavigationView {
            GeometryReader { geometry in
                
                Color("BlueMovie")
                    .edgesIgnoringSafeArea(.all)
                ZStack {
                    Rectangle()
                        .foregroundColor(Color("rose"))
                    .frame(width: 700, height: 290)
                    .offset(y:-270)
                   
                        Circle()
                        .foregroundColor(Color("BlueMovie"))

                            .frame(width: 230, height: 290)
                            .offset(x:4,y:-108)
                
                VStack (alignment: .leading) {
                    Text("Mes événements")
                        .foregroundColor(Color.white)
                        .font(.system(size: 30))

                        .padding()
                    
                
                
         
                    
                    
                    Spacer()
                        .frame(height: 20)
                    
                    Divider()
                        .foregroundColor(.white)
              
                    HStack {
                        Spacer()
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.blue)
                        Spacer()
                        
                        VStack{
                            ForEach(usersevents) { Events in
                                VStack(alignment: .leading) {
                                    Divider()
                                    
                                    HStack {
                                      
                                        Image("AvengersInf")
                                            .resizable()
                                            .frame(width: 120 , height: 180)
                                            .shadow(radius: 30)
                                            .padding(.leading, 10)
                                        
                                        
                                       
                                        HStack {
                                            
                                            VStack {
                                                Text(Events.title)
                                                    .foregroundColor(.white)
//                                                    .padding()
                                                    .offset(x:-2,y:-20)
                                                    .font(Font.custom("Kodchasan-Light", size: 23))

                                                HStack {
                                                    Image(systemName: "clock")
                                                        .foregroundColor(.yellow)
                                                        .font(Font.custom("Kodchasan-Light", size: 23))

                                                        .offset(x:-19,y:-15)

                                                    Text(Events.heure)
                                                        .foregroundColor(.white)
                                                        .offset(x:-19,y:-15)

                                                }
                                               Spacer()
                                                    .foregroundColor(.white)
                                                    
                                               
                                                HStack {
                                                  
                                                    Image(systemName: "calendar")
                                                        .foregroundColor(.yellow)
                                                        .offset(x:2,y:-15)

                                                    Text(Events.date)
                                                        .offset(x:2,y:-15)

                                                }
                                                .foregroundColor(.white)

                                                    HStack {
                                                        Image(systemName: "location")
                                                            .foregroundColor(.yellow)
                                                            .offset(x:-10,y:5)
                                                        Text(Events.ville)
                                                            .foregroundColor(.white)
                                                            .offset(x:-10,y:5)

                                                    }
                                                    
                                                Spacer()

                                               
                                               
                                        }
                                            Spacer()
                                            Image(systemName:"trash.circle")
                                                .offset(x:-43,y:-30)
                                                .font(.system(size: 47))
                                                .foregroundColor(Color("rose"))
                                        
                                        Spacer()
                                        
                                    }
                                    .frame(width: geometry.size.width, height: 10 )
                                    }
                                }
                                
                            }
                        }
                    }
                    
                }
            }
                
            .toolbar {
                
                ToolbarItem(placement: .navigationBarTrailing) {
           
                    NavigationLink(destination:audrey()){
                        
                            Image(systemName: "plus")
                                .font(.system(size: 17))
                                .foregroundColor(.white)
                                .padding(17)
                                .background(Color("rose"))
                            .cornerRadius(40)
                        }

                    }

                }
            }
        }
    }
}



var usersevents = [
    Events(title: "Avengers", date: "04/04/2023", ville: "Montreuil", heure: "14h00"),
]



struct MesEvenements_Previews: PreviewProvider {
    static var previews: some View {
        //        MesEvenements()
        UsersView()
    }
}
