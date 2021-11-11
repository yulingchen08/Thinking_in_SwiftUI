//
//  ContentView.swift
//  Shared
//
//  Created by 陳鈺翎 on 2021/11/10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .frame(width: 200, height: 100) //比.frame(width: 400, height: 200)上面一層
            .background(Color.green)
            .frame(width: 400, height: 200) // 最底層
            .background(Color.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
