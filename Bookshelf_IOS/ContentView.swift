//
//  ContentView.swift
//  Bookshelf_IOS
//
//  Created by 金岡雄一郎 on 2021/06/14.
//

import SwiftUI


    
    
struct ContentViews: View {
    @State private var textField: String = ""
    @State var isOpenSideMenu: Bool = false
    var body: some View {
        NavigationView{
        ScrollView{
            ZStack{
            VStack{
            RecentAddView()
            librallyView()
                .navigationBarTitle("BookShelf", displayMode: .inline)
                .navigationBarItems(
                    leading:
                        HStack{
                            //ここにサイドバー
                    Button(action: {}){
                        Image(systemName: "folder.badge.plus")
                    }
                            //お気に入り登録
                    Button(action: {}){
                        Image(systemName: "square.and.arrow.up")
                    }
                },
                trailing:
                            //検索バー
                    Button(action: {}){
                        Image(systemName: "folder.badge.plus")
                        })
                    }
                //sidemenuはここに表示
                
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


//最近追加した本をforeachでぶん回す
struct RecentAddView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("お帰りなさい")
            Text("最近追加した本の一覧")
            Spacer()
            ForEach((0..<10), id: \.self) { i in
                Text("本の一覧がバーって出る")
            
                }.frame(width: 300, alignment:.leading )
            }.padding()
        
        }
    }
//ライブラリをforeachでぶん回す　写真の下にタイトルを出す
//横に３つ出したら繰り下がるようにしたい
struct librallyView: View {
    var body: some View {
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
