//
//  ContentView.swift
//  Shared
//
//  Created by 陳鈺翎 on 2021/11/10.
//

import SwiftUI

struct ContentView: View {
    @State var counter = 0
    var body: some View {
        VStack {
            Button(action: { counter += 1 }, label: {
                Text("Tap me!")
                    .padding()
                    .background(Color(.tertiarySystemFill))
                    .cornerRadius(5)
            })
            if counter > 0 {
                Text("You've tapped \(counter) times")
            } else {
                Text("You've not yet tapped")
            }
        }
    }
    //    var body: some View {
//        Text("Hello, world!")
//            .frame(width: 200, height: 100) //比.frame(width: 400, height: 200)上面一層
//            .background(Color.green)
//            .frame(width: 400, height: 200) // 最底層
//            .background(Color.red)
//    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
