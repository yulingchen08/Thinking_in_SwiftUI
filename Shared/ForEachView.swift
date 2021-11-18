//
//  ForEachView.swift
//  Thinking_in_SwiftUI
//
//  Created by Eric Chen 陳鈺翎 on 2021/11/11.
//

import SwiftUI

struct ForEachView: View {
    var body: some View {
        
        ForEach(1...3, id: \.self) { x in
            Text("Item \(x)")
        }
    
    }
}



struct ForEachView_Previews: PreviewProvider {
    static var previews: some View {
        ForEachView()
    }
}
