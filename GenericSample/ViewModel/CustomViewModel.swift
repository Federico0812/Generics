//
//  CustomViewModel.swift
//  GenericSample
//
//  Created by Federico Bustos Fierro on 09/05/2019.
//  Copyright © 2019 Federico Bustos Fierro. All rights reserved.
//

import UIKit

class CustomViewModel<Delegate: LoadingProtocol>: GenericViewModel<Delegate> {
    func fetchData() {
        self.delegate.showLoading()

        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.delegate.hideLoading()
        }
    }
}

class CustomViewController : UIViewController, LoadingProtocol {
    lazy var viewModel: CustomViewModel<CustomViewController>? = CustomViewModel(delegate: self)
    //UIViewController has a default implementation of loading protocol

    override func viewWillAppear(_ animated: Bool) {
        self.view.backgroundColor = .white
    }

    override func viewDidAppear(_ animated: Bool) {
        self.viewModel?.fetchData()
    }
}

class CustomView : UIView, LoadingProtocol {
    lazy var viewModel: CustomViewModel<CustomView>? = CustomViewModel(delegate: self)
    //UIView does not have a default implementation of loading protocol

    func showLoading() {
        //specific implementation
        self.backgroundColor = .yellow
    }

    func hideLoading() {
        //specific implementation
        self.backgroundColor = .green
    }
}
