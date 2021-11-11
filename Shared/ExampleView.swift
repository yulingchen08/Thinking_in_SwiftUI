//
//  ExampleView.swift
//  Thinking_in_SwiftUI
//
//  Created by Eric Chen 陳鈺翎 on 2021/11/10.
//

import SwiftUI

struct ExampleView: View {
    @State private var width: CGFloat = 50

    var body: some View {
        VStack {
            SubView()
                .frame(width: self.width, height: 120)
                .border(Color.blue, width: 2) //parent view

            Text("Offered Width \(Int(width))")
            Slider(value: $width, in: 0...200, step: 1)
        }
    }
}


struct SubView: View {
    var body: some View {
        GeometryReader { proxy in
            Rectangle()
                .fill(Color.yellow.opacity(0.7)) //child view
                .frame(width: max(proxy.size.width, 120), height: max(proxy.size.height, 120))
        }
    }
}


struct ExampleView2: View {
    var body: some View {
        Text("这个文本还挺长的，到达了一定字数后，就超过了一行的显示范围了！！！")
            .border(Color.blue)
            .frame(width: 200, height: 100)
            .border(Color.green)
            .font(.title)
    }
}

struct ExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleView()
    }
}
