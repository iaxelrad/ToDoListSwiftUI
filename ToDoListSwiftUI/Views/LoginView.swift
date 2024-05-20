//
//  LoginView.swift
//  ToDoListSwiftUI
//
//  Created by Itamar Axelrad on 18/05/2024.
//

import SwiftUI

struct LoginView: View {

    @StateObject var viewModel: LoginViewViewModel

    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView(title: "To Do List",
                           subtitle: "Get things done",
                           angle: 15,
                           background: .pink)

                // Login Form
                Form {
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .textInputAutocapitalization(.none)
                    
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())

                    TLButton(title: "Login",
                             background: .blue
                    ) {
                        // Attempt log in
                    }
                    .padding()
                }
                .offset(y: -50)


                // Create Account
                VStack {
                    Text("New around here?")

                    NavigationLink("Create an account",
                                   destination: RegisterView())
                }
                .padding(.bottom, 50)

                Spacer()
            }
        }
    }
}

#Preview {
    LoginView(viewModel: .init())
}
