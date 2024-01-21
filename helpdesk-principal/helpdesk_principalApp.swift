//
//  helpdesk_principalApp.swift
//  helpdesk-principal
//
//  Created by Arlid Henao Rueda on 20/01/24.
//

import SwiftUI

@main
struct helpdesk_principalApp: App {

    @State private var isShowingSplash = true

    var body: some Scene {
        WindowGroup {
            if isShowingSplash {
                SplashView()
            } else {
                LoginView()
            }
        }
    }
}
