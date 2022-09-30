//
//  AlamofireApiClient.swift
//  Trivia
//
//  Created by Jefferson Naranjo rodríguez on 22/09/22.
//

import Foundation
import Alamofire

class AlamofireAPIClient {
    
    func get(url: String, completion: @escaping (Result<Data?, AFError>) -> Void) {
        AF.request(url).response { response in
            completion(response.result)
        }
    }
    
}
