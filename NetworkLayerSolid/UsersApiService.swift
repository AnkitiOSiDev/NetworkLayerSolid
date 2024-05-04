//
//  UsersApiService.swift
//  NetworkLayerSolid
//
//  Created by Ankit on 04/05/24.
//

import Foundation

enum UsersApiService {
    case getUsers
}

extension UsersApiService: ApiRequestable {
    var baseURL: URL? { URL(string: "https://jsonplaceholder.typicode.com") }

    var path: String {
        switch self {
        case .getUsers:
            return "/users"
        }
    }

    var queryItems: [URLQueryItem]? { nil }

    var method: HttpMethod {
        switch self {
        case .getUsers:
            return .get
        }
    }

    var headers: [String: String]? { nil }

    var body: RequestBody? { nil }

   
}
