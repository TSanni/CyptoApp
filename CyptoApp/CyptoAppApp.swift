//
//  CyptoAppApp.swift
//  CyptoApp
//
//  Created by Tomas Sanni on 3/19/23.
//

import SwiftUI

@main
struct CyptoAppApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomView()
                    .navigationBarHidden(true)
            }
        }
    }
}
