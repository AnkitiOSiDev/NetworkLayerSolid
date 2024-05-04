//
//  UserService.swift
//  NetworkLayerSolid
//
//  Created by Ankit on 04/05/24.
//

import Foundation

final class UserService: ApiServiceProtocol {
    let networkManager: NetworkManagerProtocol
    
    init(networkManager: NetworkManagerProtocol = NetworkManager()) {
        self.networkManager = networkManager
    }

    func getUsers(completion: @escaping (Result<[User], NetworkError>) -> Void) {
        let endpoint = UsersApiService.getUsers
        getData(endpoint: endpoint, completion: completion)
    }
}
