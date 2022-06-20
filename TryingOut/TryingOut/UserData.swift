//
//  UserData.swift
//  TryingOut
//
//  Created by H on 6/14/22.
//

import Foundation

@MainActor
class UserData: ObservableObject {
    
    @Published var users: [User] = [] // Initiates an empty array
    
    init() {  Task { await loadUsers() }  }
    
    func loadUsers() async {
        do {
            let users = try await UserFetchingClient.getUsers()
            self.users = users 
            }
        
        catch { print(error) }
    }
    
}
