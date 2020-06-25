import SwiftUI

public struct ContentView: View {
    
    @EnvironmentObject var wordSetup: WordSetup
    
    public init() {}
    
    public var body: some View {
        GeometryReader { geometry in
            TwoIslands()
            StyledLabel(text: self.wordSetup.currentLocalWord(place: 0))
                .offset(x: geometry.size.width * 0.05, y: geometry.size.height * 0.3)
            StyledLabel(text: self.wordSetup.currentLocalWord(place: 1))
                .offset(x: geometry.size.width * 0.3, y: geometry.size.height * 0.3)
            StyledLabel(text: self.wordSetup.currentLocalWord(place: 2))
                .offset(x: geometry.size.width * 0.55, y: geometry.size.height * 0.13)
            StyledLabel(text: self.wordSetup.currentLocalWord(place: 3))
                .offset(x: geometry.size.width * 0.66, y: geometry.size.height * 0.3)
            StyledLabel(text: self.wordSetup.currentLocalWord(place: 4))
                .offset(x: geometry.size.width * 0.75, y: geometry.size.height * 0.62)
            StyledLabel(text: self.wordSetup.currentLocalWord(place: 5))
                .offset(x: geometry.size.width * 0.45, y: geometry.size.height * 0.66)
            StyledLabel(text: self.wordSetup.currentLocalWord(place: 6))
                .offset(x: geometry.size.width * 0.48, y: geometry.size.height * 0.85)
        }
    }
    
}
