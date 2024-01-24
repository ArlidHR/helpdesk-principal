//
//  SplashView.swift
//  helpdesk-principal
//
//  Created by Arlid Henao Rueda on 21/01/24.
//

import SwiftUI

struct SplashView: View {
    @State private var isActive = false
    @Environment(\.colorScheme) var colorScheme

    var body: some View {
        ZStack {
            if isActive {
                LoginView()
            } else {
                if colorScheme == .dark {
                    Image("SplashScreenImage")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                } else {
                    Image("SplashScreenImage")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                }
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}

#Preview {
    SplashView()
}
