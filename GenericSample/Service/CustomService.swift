//
//  CustomService.swift
//  GenericSample
//
//  Created by Federico Bustos Fierro on 09/05/2019.
//  Copyright © 2019 Federico Bustos Fierro. All rights reserved.
//

import UIKit

class CustomService: GenericService<CustomModel> {
}

struct CustomModel: Codable {
    let key: String
}
