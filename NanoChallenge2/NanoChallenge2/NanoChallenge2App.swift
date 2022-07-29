//
//  NanoChallenge2App.swift
//  NanoChallenge2
//
//  Created by Jeffrey Clay Setiawan on 26/07/22.
//

import SwiftUI
@main
struct NanoChallenge2App: App {
    @StateObject private var dataController = DataController()
    var body: some Scene {
        WindowGroup{
            TitleView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
            
        }
    }
}
