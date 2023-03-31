import SwiftUI

struct t2: View {

    
    @State private var lernSet_array: [Lernset] = Lernset.get_all()
    
    var body: some View {
        
        
        VStack(spacing: 0) {
            
            HStack {
                Text("Collection")
                Button {
                    lernSet_array.append(Lernset(setname: "Testing", color: "black"))
                } label: {
                    Image(systemName: "plus")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .padding()
                }
                
            }
            
            ScrollView {
                VStack(alignment: .leading) {
                    ForEach(lernSet_array) { lernset in
                        HStack {
                            Image(lernset.setname)
                                .resizable()
                                .frame(width: 80, height: 80)
                                .foregroundColor(.gray)
                            Text(lernset.color)
                        }
                        
                    }
                }
            }
            
        }.onChange(of: lernSet_array) { newValue in
//            Update this database, and somehow store the data
//            and save it permanently… even after restarting the phone
            print("Update this database, and somehow store the data and save it permanently… even after restarting the phone")
            print(lernSet_array.count)
            
        }
        
    }
    
}


struct Lernset: Identifiable, Equatable {
    let id = UUID()
    let setname: String
    let color: String
    
    static func get_all() -> [Lernset] {
        return [Lernset(setname : "AvengersInf" ,color : "messi")
                                    
        ]
    }
}

struct t2_Previews: PreviewProvider {
    static var previews: some View {
        t2()
    }
}
