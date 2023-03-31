import SwiftUI

struct ImageSlider: View {
    
    // 1
    private let images = ["movieSlaider1", "movieSlaider2", "plagMovie", "movieSlaider4"]
    
    public let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
       @State private var selection = 0
    var body: some View {
        

        // 2
        VStack {
            TabView(selection : $selection){
                            
                            ForEach(0..<3){ i in
                                Image("\(images[i])").resizable()
                                    .frame(width: .infinity
                                           
                                    )
                                    .cornerRadius(20)

                                    .ignoresSafeArea()
                            }
                            
                        }.tabViewStyle(PageTabViewStyle())
                        
                        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                        .onReceive(timer, perform: { _ in
                                
                            withAnimation{
                                print("selection is",selection)
                                selection = selection < 3 ? selection + 1 : 0
                            }
                        })
                    }
        .padding()
    }
}

struct ImageSlider_Previews: PreviewProvider {
    static var previews: some View {
        // 4
        ImageSlider()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
