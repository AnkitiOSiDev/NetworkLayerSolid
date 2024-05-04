//
//  ResponseParser.swift
//  NetworkLayerSolid
//
//  Created by Ankit on 04/05/24.
//

import Foundation

typealias ResponseBody = Decodable

struct ResponseParser<Model: ResponseBody> {
    func parse(data: Data) throws -> Model {
        let decoder = JSONDecoder()
        return try decoder.decode(Model.self, from: data)
    }
}
