//
//  BaseViewModel.swift
//  GenericSample
//
//  Created by Federico Bustos Fierro on 09/05/2019.
//  Copyright © 2019 Federico Bustos Fierro. All rights reserved.
//

import UIKit

class GenericViewModel<Delegate: LoadingProtocol> {
    var delegate: Delegate
    init(delegate: Delegate) {
        self.delegate = delegate
    }
}

protocol LoadingProtocol : class {
    func showLoading()
    func hideLoading()
}

extension LoadingProtocol where Self: UIViewController {

    func showLoading() {
        //generic loading implementation for vc
        self.view.backgroundColor = .yellow
    }

    func hideLoading() {
        //generic loading implementation for vc
        let alert = UIAlertController(title: "Loading", message: "Finished callback", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        self.view.backgroundColor = .green
    }
}
