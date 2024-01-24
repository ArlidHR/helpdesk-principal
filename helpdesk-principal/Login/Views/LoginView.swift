//
//  LoginView.swift
//  helpdesk-principal
//
//  Created by Arlid Henao Rueda on 21/01/24.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        ZStack () {
            Image("BackgroundLoginImage")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            
            VStack() {
                ImageLoginView()
                TextFieldLoginView()
                Spacer()
            }
        }
    }
}

struct ImageLoginView: View {
    var body: some View {
        Image("LoginImage")
            .resizable()
            .scaledToFit()
            .frame(width: 200, height: 200)
    }
}

struct TextFieldLoginView: View {
    @State private var emailTextField = ""
    @State private var passwordTextField = ""
    
    var body: some View {
        VStack {
            ZStack(alignment: .leading) {
                if emailTextField.isEmpty {
                    Text("* E-mail")
                    .foregroundColor(.white)
                    .font(.custom("Nunito-Bold", size: 17))
                }
                TextField("", text: $emailTextField)
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 2))

            ZStack(alignment: .leading) {
                if passwordTextField.isEmpty {
                    Text("* Contraseña")
                    .foregroundColor(.white)
                    
                }
                TextField("", text: $passwordTextField)
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 2))
            
            .padding(.bottom, 40)

            Button(action: {
                print("Button was tapped")
            }) {
                HStack {
                    Spacer()
                    Text("Continuar")
                    .font(.custom("Nunito-Bold", size: 17))
                    Spacer()
                }
                .padding()
                .background(Color(red: 214/255, green: 215/255, blue: 215/255))
                .foregroundColor(.white)
                .cornerRadius(20)
            }
        }
        .padding()
    }
}

#Preview {
    LoginView()
}
