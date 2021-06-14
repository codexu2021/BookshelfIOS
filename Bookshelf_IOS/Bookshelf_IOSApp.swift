//
//  Bookshelf_IOSApp.swift
//  Bookshelf_IOS
//
//  Created by 金岡雄一郎 on 2021/06/14.
//

import SwiftUI

@main
struct Bookshelf_IOSApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentViews()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
