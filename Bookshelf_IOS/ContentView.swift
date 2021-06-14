//
//  ContentView.swift
//  Bookshelf_IOS
//
//  Created by 金岡雄一郎 on 2021/06/14.
//

import SwiftUI

struct ContentViews: View {
    var body: some View {
            VStack{
                Text("ここに文字が表示されます")
                Text("アイウエオ")
                Text("そうです私がおいなりさんです")
            }
            
        }
}

struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ContentViews()
            .padding(.bottom)
    }
}
