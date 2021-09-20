//
//  ServiceError.swift
//  CakeItApp
//
//  Created by Binal on 20/09/21.
//

import Foundation

enum ServiceError: Error {
    case parsinFailed(message:String)
    case errorWith(message:String)
    case networkNotAvailalbe
    case requestNotCreated(message:String)
}
