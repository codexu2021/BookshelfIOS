//
//  ContentView.swift
//  Bookshelf_IOS
//
//  Created by 金岡雄一郎 on 2021/06/14.
//

import SwiftUI

struct ContentViews: View {
    @State private var textField: String = ""
    var body: some View {
        
        ScrollView{
            VStack(alignment: .leading) {
                TextField("ここに検索したい本を入力", text: $textField)
                Text("最近追加した本の一覧")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Spacer()
                VStack{
                    Text("本の一覧がバーって出る")
                    Text("本の一覧がバーって出る")
                    Text("本の一覧がバーって出る")
                    Text("本の一覧がバーって出る")
                }
                Spacer()
                    .padding()
            }
            VStack{
                Text("ライブラリ")
                ForEach((0..<10), id: \.self) { i in
                    HStack{ForEach((0..<3), id: \.self){ f in
                    VStack {
                        Image("sample")
                            .resizable()
                            .frame(width: 90.0, height: 90.0)
                            .clipShape(Circle())
                        Text("本\(i)")
                    }
                    }
                }
                }
                    
                
            }
                    }
                }
}

            
        

struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ContentViews()
            .padding(.bottom)
    }
}
