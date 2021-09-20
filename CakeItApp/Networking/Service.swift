//
//  Service.swift
//  CakeItApp
//
//  Created by Binal on 20/09/21.
//

import Foundation

typealias Completion<T:Decodable> =  ((Result<[T], ServiceError>) -> Void)

protocol Service:JsonDecodable {
    func fetchData<T:Codable>(client:ServiceClient, type:T.Type, completionHandler:@escaping Completion<T>)
}
