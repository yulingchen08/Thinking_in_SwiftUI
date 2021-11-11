//
//  LabelView.swift
//  Thinking_in_SwiftUI
//
//  Created by Eric Chen 陳鈺翎 on 2021/11/11.
//

import SwiftUI

//struct LabelView: View {
//    let number: Int
//    var body: some View {
//        print("LabelView")
//        return Group {
//            if number > 0 {
//                Text("You've tapped \(number) times")
//            }
//        }
//    }
//}
//struct LabelContentView: View {
//    @State var counter = 0
//    var body: some View {
//        print("ContentView")
//        return VStack {
//            Button("Tap me!") { self.counter += 1 }
//            LabelView(number: counter)
//        }
//    }
//}


//turn into

//struct LabelView: View {
//    @State var counter = 0
//    var body: some View {
//        print("LabelView")
//        return VStack {
//            Button("Tap me!") { self.counter += 1 }
//            if counter > 0 {
//                Text("You've tapped \(counter) times")
//            }
//        }
//    }
//}
//
//struct LabelContentView: View {
//    var body: some View {
//
//        print("ContentView")
//        return LabelView()
//
//    }
//}

//with binding
struct LabelView: View {
    @Binding var number: Int
    var body: some View {
        print("LabelView")
        return Group {
            if number > 0 {
                Text("You've tapped \(number) times")
            }
        }
    }
}
struct LabelContentView: View {
    @State var counter = 0
    var body: some View {
        print("ContentView")
        return VStack {
            Button("Tap me!") { self.counter += 1 }
            LabelView(number: $counter)
        }
    }
}


struct LabelView_Previews: PreviewProvider {
    static var previews: some View {
        LabelContentView()
    }
}
