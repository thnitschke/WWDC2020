import SwiftUI

public class WordSetup: ObservableObject {
    
    @Published public var currentTime: UInt = 0
    
    public init() {}
    
    let wordChangesArray = [
        WordChanges(changes: ["*ḥokws", "*augō", "ēaġe", "eye"], increment: 500, initialTime: 50),
        WordChanges(changes: ["*ḥokws", "*augō", "auga", "øye"], increment: 550, initialTime: 45),
        WordChanges(changes: ["*ḥokws", "*ak", "*oko", "ȍko"], increment: 500, initialTime: 35),
        WordChanges(changes: ["*ḥokws", "*augō", "Auge"], increment: 600, initialTime: 40),
        WordChanges(changes: ["*ḥokws", "oculus", "oclus", "olho"], increment: 400, initialTime: 0),
        WordChanges(changes: ["*ḥokws", "oculus", "oclus", "œil"], increment: 375, initialTime: 0),
        WordChanges(changes: ["*ḥokws", "áksi", "akh"], increment: 750, initialTime: 0)
    ]
    
    func currentLocalWord(place: Int) -> String? {
        return wordChangesArray[place].wordForTimeinterval(for: currentTime)
    }
    
    public func changeTime(increment: UInt) {
        self.currentTime += increment
    }
    
}

class WordChanges {
    var changesArray: [String]
    var timeIncrement: UInt
    var initialTime: UInt
    
    init(changes: [String], increment: UInt, initialTime: UInt) {
        self.changesArray = changes
        self.timeIncrement = increment
        self.initialTime = initialTime
    }
    
    func wordForTimeinterval(for currentTime: UInt) -> String? {
        if currentTime < initialTime {
            return nil
        } else {
            let position = currentTime / timeIncrement
            if position < changesArray.count {
                return changesArray[Int(position)]
            } else {
                return changesArray.last
            }
        }
    }
}
