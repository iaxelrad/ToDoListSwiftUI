//
//  LoginView.swift
//  ToDoListSwiftUI
//
//  Created by Itamar Axelrad on 18/05/2024.
//

import SwiftUI

struct LoginView: View {

    @State var email = ""
    @State var password = ""

    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView()

                // Login Form
                Form {
                    TextField("Email Address", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    SecureField("Password", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())

                    Button {
                        // Attempt log in
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundStyle(Color.blue)

                            Text("Log In")
                                .foregroundStyle(Color.white)
                                .bold()
                        }
                    }
                    .padding()
                }


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
    LoginView()
}
