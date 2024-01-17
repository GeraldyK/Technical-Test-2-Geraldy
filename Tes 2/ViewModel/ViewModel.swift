//
//  ViewModel.swift
//  Tes 2
//
//  Created by Geraldy Kumara on 17/01/24.
//

import Foundation

final class ViewModel: ObservableObject {
    
    @Published private(set) var errorMessage: String = ""
    @Published var username: String = ""
    @Published var password: String = ""
    @Published var showLoginScreen: Bool = false
}

extension ViewModel{
    func login() {
        
        guard self.username != "" else {
            self.errorMessage = "Username must be filled!"
            return
        }
        
        guard self.password != "" else {
            self.errorMessage = "Password must be filled!"
            return
        }
        
        guard self.username == "alfagift-admin" && self.password == "asdf" else {
            self.errorMessage = "You are not authenticated"
            return
        }
        
        self.showLoginScreen = true
        print("User logged in with \(username)")
    }
}
