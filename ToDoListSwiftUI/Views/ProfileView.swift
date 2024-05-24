//
//  ProfileView.swift
//  ToDoListSwiftUI
//
//  Created by Itamar Axelrad on 18/05/2024.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {

            }
            .navigationTitle("Profile")
        }
    }
}

#Preview {
    ProfileView()
}
