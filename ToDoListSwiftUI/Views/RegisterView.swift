//
//  RegisterView.swift
//  ToDoListSwiftUI
//
//  Created by Itamar Axelrad on 18/05/2024.
//

import SwiftUI

struct RegisterView: View {

    @State var name = ""
    @State var email = ""
    @State var password = ""

    var body: some View {
        VStack {
            // Header
            HeaderView(title: "Register",
                       subtitle: "Start organizing todos",
                       angle: -15,
                       background: .orange)

            Form {
                TextField("Full Name", text: $name)
                    .textFieldStyle(DefaultTextFieldStyle())

                TextField("Email Address", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .textInputAutocapitalization(.none)
                    .autocorrectionDisabled()

                SecureField("Password", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())

                TLButton(title: "Create Account",
                         background: .green
                ) {
                    // Attempt registration
                }
                .padding()
            }
            .offset(y: -50)

            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
