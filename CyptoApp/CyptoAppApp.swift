//
//  CyptoAppApp.swift
//  CyptoApp
//
//  Created by Tomas Sanni on 3/19/23.
//

import SwiftUI

@main
struct CyptoAppApp: App {
    @StateObject private var vm = HomeViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}
