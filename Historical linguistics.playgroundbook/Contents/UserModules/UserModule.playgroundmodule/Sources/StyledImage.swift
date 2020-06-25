import SwiftUI

struct StyledImage: View {
    
    let image: String
    let ratio: CGFloat
    let width: CGFloat
    let alignment: Alignment
    
    var body: some View {
        Image(uiImage: UIImage(named: image)!)
            .resizable()
            .aspectRatio(ratio, contentMode: .fit)
            .frame(width: width, alignment: alignment)
        
    }
    
}

struct StyledImage_Previews: PreviewProvider {
    static var previews: some View {
        StyledImage(image: "firstIsland", ratio: 1.1, width: 1024, alignment: .center)
            .previewLayout(.sizeThatFits)
    }
}
