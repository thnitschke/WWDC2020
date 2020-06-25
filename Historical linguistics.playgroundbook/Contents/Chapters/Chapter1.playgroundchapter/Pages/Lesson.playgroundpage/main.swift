//#-hidden-code

import PlaygroundSupport
import SwiftUI

let wordSetup = WordSetup()

func setYearsPassed(_ years: UInt) {
    wordSetup.changeTime(increment: years)
}

//#-end-hidden-code

/*:
 # Historical linguistics
 \
 This playground book aims to be a brief introduction to a complex topic, which is historical linguistics. With this purpose in mind, we will view an example of how languages gradually change, eventually to become a different one.
\
 On the map aside, we can observe a fictitious land. In the beginning, people who spoke a common language inhabited only a small part of the area. After a while, the land became too small for them, so they decided to move to other areas. Time passed, and the people, who once were one,  became isolated from each other.
 Their languages also changed as the years drew by. And since they were apart, the changes that occurred were also different.
\
 Below, you can now set the years that passed since they first grew apart from each other. As you move across the years, a common word they once spoke, becomes different reflecting this change. This word meant "eye".
 \

 - Tip:
 Use `setYearsPassed()` function to change the time. Start with 0 as argument to see the original word. You can call the function multiple times.
 */

//#-code-completion(everything, hide)
//#-code-completion(identifier, show, "setYearsPassed()")

//#-editable-code
setYearsPassed(<#T##number of years##UInt#>)
//#-end-editable-code

//#-hidden-code
PlaygroundPage.current.setLiveView(ContentView().environmentObject(wordSetup))
//#-end-hidden-code

/*:
Explanation:
\
The language examples used are all from Indo-European, a language group that contains all Germanic, Romance, Slavic, Hindi languages, and more.
*/
