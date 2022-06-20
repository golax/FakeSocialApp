//
//  Main.swift
//  TryingOut
//
//  Created by ... on 6/14/22.
//

import Foundation
struct UserFetchingClient {
    static private let url = URL(string:"https://randomuser.me/api/?results=10&format=pretty")! /// acts as a requester for the api, which returns a raw JSON file
    
    static func getUsers() async throws -> [User] {
        async let (data, _) = URLSession.shared.data(from: url)
        let response = try await JSONDecoder().decode(Response.self, from: data)
        return response.users
    }
    
}
