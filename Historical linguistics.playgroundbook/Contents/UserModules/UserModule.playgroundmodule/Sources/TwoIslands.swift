import SwiftUI

struct TwoIslands: View {
    
    var body: some View {
        GeometryReader { geometry in
            Color.blueSapphire.edgesIgnoringSafeArea(.all)
            ZStack {
                StyledImage(
                    image: "firstIsland",
                    ratio: 1.1,
                    width: geometry.size.width * 0.45,
                    alignment: .topLeading)
                    .offset(x: geometry.size.width * -0.125, y: geometry.size.height * -0.2)
                StyledImage(
                    image: "secondIsland",
                    ratio: 0.69,
                    width: geometry.size.width * 0.7,
                    alignment: .bottomTrailing)
                    .offset(x: geometry.size.width * 0.25, y: geometry.size.height * 0.05)
            }
        .padding()
        }
    }
    
}

struct TwoIslands_Previews: PreviewProvider {
    static var previews: some View {
        TwoIslands()
            .previewLayout(.fixed(width: 2732/2, height: 1800))
        
    }
}
