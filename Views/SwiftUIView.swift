//
//  SwiftUIView.swift
//  projet10
//
//  Created by Apprenant 68 on 23/03/2023.
//

import SwiftUI

struct SwiftUIView: View {
    private var columnsMovie =
    
    [GridItem(.adaptive(minimum: 170), spacing: 2)]
    
    var columns = Array (repeating: GridItem(.flexible()), count: 2)
    @State var text = ""
    @State private var toto = "vide"
    @State private var products = productList
    
    @State private var searchText = ""
    
    init() {
        UITextField.appearance(whenContainedInInstancesOf: [UISearchBar.self]).backgroundColor = .white
    }
    
    var filteredList: [Product] {
        //
        //                arrayProduct.filter({
        //                    $0.NameMovie.lowercased().contains(text.lowercased()) || text.isEmpty
        //                })
        if text.isEmpty {
            return   products.filter({
                $0.NameMovie.lowercased().contains(text.lowercased()) || text.isEmpty
            })
        } else {
            return    products.filter({
                $0.TypeMovie.contains(toto)
            })
        }
        
    }
    
    //    @State var text = ""
    var body: some View {
        
        NavigationView {
            
            
            ZStack {
                Color("BlueMovie").ignoresSafeArea()
                
                ScrollView {

                    SearchBar (text: $text, selectedType: $toto)
                        .padding()
                    VStack (alignment: .leading) {
                        Text("A l'affiche")
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.leading)
                            .padding()
                            .font(Font.custom("Kodchasan-Light", size: 30))
                            .font(.largeTitle)

                        Slaide()
                            .frame(height: 230)

                        //                        .padding()
                        
                        //                Text("Des films")
                        VStack (alignment: .leading) {
                            
                            Text("Des films")
                                .padding()
                                .foregroundColor(Color.white)
                                .font(Font.custom("Kodchasan-Light", size: 30))
                                .multilineTextAlignment(.leading)
                        }
                       LazyVGrid(columns: columnsMovie, spacing: 2) {
                        //
                        //
                        //                                ForEach(filteredList){ product in
                        //                                    ZStack(alignment: .bottom) {
                        //                                        Image(product.ImageMovie)
                        //                                            .resizable()
                        //                                            .frame(width: 187, height: 300.0)
                        //                                            .cornerRadius(20)
                        //                                        NavigationLink(destination: MoviePage(product: product), label: {
                        //                                            Screen1(Product: product)
                        //                                        })
                        //                                        //                            .padding()
                        //                                    }
                        //
                        //                                }
                        
                        
                        ForEach(productList.filter({$0.NameMovie.lowercased().contains(text.lowercased()) || text.isEmpty})){ product in
                            ZStack(alignment: .bottom) {
                                Image(product.ImageMovie)
                                    .resizable()
                                    .frame(width: 187, height: 0.0)
                                    .cornerRadius(20)
                                NavigationLink(destination: MoviePage(product: product), label: {
                                    Screen1(Product: product)
                                })
                                                            .padding()
                                
                            }
                            
                        }
                        Text("\(searchText)")
                            .fontWeight(.light)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                        LazyVGrid(columns: columnsMovie, spacing: 33) {
                            ForEach(productList , id : \.id){product in
                                
                                
                            }
                            
                        }
                        .navigationTitle(Text("Bonjour"))
                        .foregroundColor(Color.white)
                        .font(Font.custom("Kodchasan-Light", size: 30))

//                                                       ForEach(productList) { oneItem in
//                                                           HStack {
//                                                               Rectangle()
//                                                                   .frame(width: 100, height:100)
//                                                                   .foregroundColor(oneItem.ImageMovie)
//                                                               Text(oneItem.NameMovie)
//                                                                   Spacer()
//                                                           }
//                                                       }
                        
                    }
                }
            }
            }
        }
    }
    //        SearchBar(text: $text)
    //        .searchable(text: $searchText)
    //    NavBar()
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
