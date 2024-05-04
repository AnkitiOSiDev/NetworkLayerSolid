//
//  NetworkError.swift
//  NetworkLayerSolid
//
//  Created by Ankit on 04/05/24.
//

import Foundation

enum NetworkError: Error {
    case invalidUrl
    case invalidResponse
    case noData
    case httpResponseError(statusCode: Int)
    case apiError(error: Error)
    case parsingError
}
