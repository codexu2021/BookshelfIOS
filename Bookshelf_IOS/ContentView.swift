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
            VStack{
                TextField("ここに検索したい本を入力", text: $textField)
                Text("最近追加した本の一覧")
                VStack{
                    Text("本の一覧がバーって出る")
                    Text("本の一覧がバーって出る")
                    Text("本の一覧がバーって出る")
                    Text("本の一覧がバーって出る")
                }
                VStack{
                    HStack{
                        VStack{
                            Image("sample")
                            Text("本のタイトル")
                        }
                        VStack{
                            Image("sample")
                            Text("本のタイトル")
                        }
                        VStack{
                            Image("sample")
                            Text("本のタイトル")
                        }
                        
                    }
                    HStack{
                        VStack{
                            Image("sample")
                            Text("本のタイトル")
                        }
                        VStack{
                            Image("sample")
                            Text("本のタイトル")
                        }
                        VStack{
                            Image("sample")
                            Text("本のタイトル")
                        }
                        
                    }
                    HStack{
                        VStack{
                            Image("sample")
                            Text("本のタイトル")
                        }
                        VStack{
                            Image("sample")
                            Text("本のタイトル")
                        }
                        VStack{
                            Image("sample")
                            Text("本のタイトル")
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
