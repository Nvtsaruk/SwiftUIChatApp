//
//  LoginScreen.swift
//  SwiftUIChatApp
//
//  Created by Tsaruk Nick on 4.01.24.
//

import SwiftUI

struct LoginScreen: View {
    @EnvironmentObject private var coordinator: Coordinator
    @State var login: String = ""
    @State var password: String = ""
    var body: some View {
        VStack {
            Image("Logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .shadow(color: Color(CGColor(gray: 0.1, alpha: 0.1)), radius: 10, x: 5, y: 5)
                .padding(.vertical)
            Group {
                VStack(alignment: .leading) {
                    Text("Login")
                    TextField("Логин", text: $login)
                }
                .padding(.horizontal, 5)
                .padding(5)
            }
            .background(Color(UIColor.systemGray6))
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding(.horizontal)
            Group {
                VStack(alignment: .leading) {
                    Text("Password")
                    SecureField("Пароль", text: $password)
                    
                }
                .padding(.horizontal, 5)
                .padding(5)
            }
            .background(Color(UIColor.systemGray6))
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding(.horizontal)
            Button{
                
            }label: {
                Text("Login")
            }
            .buttonStyle(.borderedProminent)
            .padding()
            Button{
                coordinator.push(.registerScreen)
            }label: {
                Text("Register")
                    .font(.system(size: 16, weight: .medium))
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 8)
            }
            .buttonStyle(.borderless)
            .padding(5)
        }
    }
}

#Preview {
    LoginScreen()
}
