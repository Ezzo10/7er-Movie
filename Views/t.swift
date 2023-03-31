import SwiftUI

struct Item: Identifiable {
    var id = UUID()
    let name: String
    let category: ItemCategory
    let price: Int
    let color: String
}

enum ItemCategory: String, CaseIterable {
    case happy = "logo"
    case sad = "Sad"
    case joyful = "Joyful"
    case thoughtful = "Thoughtful"
    case none
}

struct SearchBy: View {
    
    @State private var arrayOfItems = [
        Item(name: "Lemon", category: .happy, price: 2, color: "Samara Weaving"),
        Item(name: "Orange", category: .joyful, price: 1, color: "emma-watson"),
        Item(name: "Grapes", category: .thoughtful, price: 4, color: "Samara Weaving"),
        Item(name: "Blackberry", category: .sad, price: 4, color: "Samara Weaving"),
    ]
    @State private var products = productList

    @State private var searching: String = ""
    @State private var categorySelection = ItemCategory.none
    
    var filteredArray: [Item] {
        if categorySelection != .none {
            return arrayOfItems.filter({
                $0.category == categorySelection || $0.name.lowercased().contains(searching.lowercased())
            })
        } else if !searching.isEmpty {
            return arrayOfItems.filter({
                $0.name.lowercased().contains(searching.lowercased())
            })
        } else if !searching.isEmpty && categorySelection != .none {
            return arrayOfItems.filter({
                $0.name.lowercased().contains(searching.lowercased()) &&
                $0.category == categorySelection
            })
        }  else {
            return arrayOfItems
        }
    }
    
    var body: some View {
        VStack {
            TextField("Search", text: $searching)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
             
            HStack {
                ForEach(ItemCategory.allCases.prefix(4), id: \.hashValue) { cat in
                    Button(action: {
                        categorySelection = cat
                    }, label: {
                        Text(cat.rawValue)
                    })
                    .padding()
                    .background(Color.gray)
                    .foregroundColor(.black)
                    .cornerRadius(20)
                }
            }
            
            ForEach(filteredArray) { oneItem in
                HStack {
                    Image(oneItem.color)
                        .resizable()
                        .frame(width: 100, height:100)
                        
                    Text(oneItem.name)
                        Spacer()
                }
            }
            .padding(.horizontal)
        }
    }
}

struct SearchBy_Previews: PreviewProvider {
    static var previews: some View {
        SearchBy()
    }
}
