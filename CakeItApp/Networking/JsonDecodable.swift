//
//  JsonDecodable.swift
//  CakeItApp
//
//  Created by Binal on 20/09/21.
//

import Foundation

protocol JsonDecodable {
    func decode<T:Codable>(input:Data, type:T.Type)-> [T]?
}

extension JsonDecodable {
    func decode<T:Codable>(input:Data, type:T.Type)-> [T]? {
        return  try? JSONDecoder().decode([T].self, from: input)
    }
}
