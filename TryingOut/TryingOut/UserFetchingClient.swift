//
//  Main.swift
//  TryingOut
//
//  Created by ... on 6/14/22.
//

import Foundation
struct UserFetchingClient {
    static private let url = URL(string:"https://randomuser.me/api/?results=10&format=pretty")!
    
    static func getUsers() async throws -> String {
        async let (data, _) = URLSession.shared.data(from: url)
        return try await String(data: data, encoding: .utf8)!
    }
    
}

