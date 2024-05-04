//
//  ApiService.swift
//  NetworkLayerSolid
//
//  Created by Ankit on 04/05/24.
//

import Foundation

struct User: ResponseBody {
    let name: String?
}

protocol ApiServiceProtocol {
    var  networkManager: NetworkManagerProtocol { get }
}

extension ApiServiceProtocol {
    func getData<Model: ResponseBody>(endpoint: ApiRequestable,
                                   parser: ResponseParser<Model> = ResponseParser<Model>(),
                                   completion: @escaping (Result<Model, NetworkError>) -> Void) {
        networkManager.request(endpoint, parseHandler: { data in
            return try parser.parse(data: data)
        }) { (result: Result<Model, NetworkError>) in
            completion(result)
        }
    }
}
