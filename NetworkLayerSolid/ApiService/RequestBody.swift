//
//  RequestBody.swift
//  NetworkLayerSolid
//
//  Created by Ankit on 04/05/24.
//

import Foundation

protocol RequestBody: Encodable { }

extension Encodable {
    func jsonData() -> Data? {
        return try? JSONEncoder().encode(self)
    }
}
