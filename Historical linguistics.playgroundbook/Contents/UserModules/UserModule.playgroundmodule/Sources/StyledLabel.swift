import SwiftUI

public struct StyledLabel: View {
    
    var text: String
    var visible: Bool
    
    public init(text: String?) {
        self.text = text ?? ""
        self.visible = text != nil
    }
    
    public var body: some View {
        Group {
            if visible {
                Text(text)
                    .font(.largeTitle)
                    .fontWeight(.regular)
                    .padding()
                    .background(Color.systemBackground
                        .blur(radius: 35, opaque: false)
                )
                    .cornerRadius(20)
            } else {
                EmptyView()
            }
        }
    }
}

struct StyledLabel_Previews: PreviewProvider {
    static var previews: some View {
        StyledLabel(text: "Hallo Welt!")
            .previewLayout(.sizeThatFits)
    }
}
