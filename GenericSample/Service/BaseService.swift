//
//  BaseService.swift
//  GenericSample
//
//  Created by Federico Bustos Fierro on 09/05/2019.
//  Copyright © 2019 Federico Bustos Fierro. All rights reserved.
//

import UIKit

class GenericService<Model: Codable> {

    typealias SuccessCompletionHandler = (_ response: Model) -> Void

    let successCallback: SuccessCompletionHandler

    init(success: @escaping SuccessCompletionHandler) {
        self.successCallback = success
        self.call()
    }

    func parse(response: Data) {
        let jsonDecoder = JSONDecoder()
        if let parsedResponse = try? jsonDecoder.decode(Model.self, from: response) {
            self.successCallback(parsedResponse)
        }
    }

    func call(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            let response = """
            {"key":"value"}
            """
            let data = Data(response.utf8)
            self.parse(response: data)
        }
    }
}
