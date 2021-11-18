//
//  ViewBuilderView.swift
//  Thinking_in_SwiftUI
//
//  Created by 陳鈺翎 on 2021/11/18.
//

import SwiftUI

struct ViewBuilderView: View {
    var counter: Int
    var body: some View {
        if counter > 0 {
            Text("You've tapped \(counter) times")
        } else { //如果沒有else會不知道要return 什麼，不能compile
            Text("couner <= 0")
        }
    }
}
/*
struct ViewBuilderView2: View {
    var counter: Int
    var body: some View {
        if counter > 0 {
            return Text("ViewBuilderView2")
        } else {
            return Image(systemName: "lightbulb")
        }
    }
    //這邊if 和 else放的都是不同的view(一個Text，一個是Image)，因為SwiftUI會編譯成optional的Text和Image，但因為 if和else條件不同，返回的 opaque return type無法判定，編譯器會叫
 // error: Function declares an opaque return type, but the return statements
 // in its body do not have matching underlying types
 
 虽然 Text 和 Image 都遵守 View 协议，但是我们无法从 body 的不同分支返回具有不同具体类型的值。我们可以返回遵守 View 的任何内容，但是我们必须从所有分支都返回相同类型的内容。
}
*/
struct ViewBuilderView_Previews: PreviewProvider {
    
    static var previews: some View {
        ViewBuilderView(counter:0)
        //ViewBuilderView2(counter: 0)
    }
}

