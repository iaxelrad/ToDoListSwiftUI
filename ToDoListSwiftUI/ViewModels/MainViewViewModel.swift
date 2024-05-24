//
//  MainViewViewModel.swift
//  ToDoListSwiftUI
//
//  Created by Itamar Axelrad on 18/05/2024.
//

import FirebaseAuth
import Foundation

class MainViewViewModel: ObservableObject {
    @Published var currentUserId: String = ""
    private var handler: AuthStateDidChangeListenerHandle?

    init() {
        self.handler = Auth.auth().addStateDidChangeListener { [weak self] _, user in
            DispatchQueue.main.async {
                self?.currentUserId = user?.uid ?? ""
            }
        }
    }

    public var isSignedIn: Bool {
        return Auth.auth().currentUser != nil
    }
}
