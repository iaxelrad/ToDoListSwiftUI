//
//  RegisterView.swift
//  ToDoListSwiftUI
//
//  Created by Itamar Axelrad on 18/05/2024.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        VStack {
            // Header
            HeaderView(title: "Register",
                       subtitle: "Start organizing todos",
                       angle: -15,
                       background: .orange)

            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
